const std = @import("std");
const json = @import("json/parser.zig");

fn ThreadContext(comptime T: type) type {
    return struct {
        done: std.atomic.Value(bool),
        result: ?anyerror,
        data: T,

        fn init(data: T) @This() {
            return .{
                .done = std.atomic.Value(bool).init(false),
                .result = null,
                .data = data,
            };
        }
    };
}

fn ThreadFn(comptime T: type) type {
    return struct {
        context: *ThreadContext(T),
        func: *const fn (T) anyerror!void,

        fn run(self: *@This()) void {
            self.func(self.context.data) catch |err| {
                self.context.result = err;
            };
            self.context.done.store(true, .release);
        }
    };
}

pub fn runTest(allocator: std.mem.Allocator, entry_name: []const u8) !bool {
    const base_path = try std.fs.cwd().realpathAlloc(allocator, "../tests/test_parsing");
    defer allocator.free(base_path);

    var paths = [_][]const u8{ base_path, entry_name };

    const full_path = try std.fs.path.join(allocator, &paths);
    defer allocator.free(full_path);

    const file_content = try std.fs.cwd().readFileAlloc(allocator, full_path, std.math.maxInt(usize));
    defer allocator.free(file_content);

    const timeout = withTimeout(allocator, file_content, 1000) catch {
        if (std.mem.eql(u8, entry_name[0..2], "y_")) {
            return false;
        }
        return true;
    };
    if (timeout) {
        return false;
    }

    if (std.mem.eql(u8, entry_name[0..2], "n_")) {
        return false;
    }

    return true;
}

pub fn withTimeout(allocator: std.mem.Allocator, content: []const u8, timeout_ms: u64) !bool {
    var context = ThreadContext(TaskData).init(.{
        .allocator = allocator,
        .content = content,
    });

    var thread_fn = ThreadFn(TaskData){
        .context = &context,
        .func = longRunningTask,
    };

    // Create thread to run the function
    const thread = try std.Thread.spawn(.{}, ThreadFn(TaskData).run, .{&thread_fn});

    // Create timer for timeout
    var timer = try std.time.Timer.start();
    const start = timer.read();

    // Wait for either completion or timeout
    while (timer.read() - start < timeout_ms * std.time.ns_per_ms) {
        if (context.done.load(.acquire)) {
            // Function completed successfully
            thread.join();
            if (context.result) |err| return err;
            return true;
        }
        std.time.sleep(1 * std.time.ns_per_ms);
    }

    // Timeout occurred
    return false;
}

const TaskData = struct {
    allocator: std.mem.Allocator,
    content: []const u8,
};

fn longRunningTask(data: TaskData) !void {
    try json.parserAllTokens(data.allocator, data.content);
}
