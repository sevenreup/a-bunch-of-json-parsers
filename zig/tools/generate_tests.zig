const std = @import("std");

pub fn main() !void {
    var arena_state = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena_state.deinit();
    const allocator = arena_state.allocator();

    const args = try std.process.argsAlloc(allocator);

    if (args.len != 2) fatal("wrong number of arguments", .{});

    const base_path = try std.fs.cwd().realpathAlloc(allocator, "../tests/test_parsing");
    defer allocator.free(base_path);
    var dir = try std.fs.cwd().openDir("../tests/test_parsing", .{
        .iterate = true,
    });

    const output_file_path = args[1];

    var output_file = std.fs.cwd().createFile(output_file_path, .{}) catch |err| {
        fatal("unable to open '{s}': {s}", .{ output_file_path, @errorName(err) });
    };
    defer output_file.close();

    var dir_iterator = dir.iterate();
    var result = try std.fmt.allocPrint(allocator,
        \\ const std = @import("std");
        \\ const testing = std.testing;
        \\ const json = @import("json/parser.zig");
        \\ const helper = @import("helper.zig");
    , .{});
    defer allocator.free(result);

    while (try dir_iterator.next()) |entry| {
        result = try std.fmt.allocPrint(allocator, "\n{s} \ntest \"{s}\"\n{{\ntry testing.expect(try helper.runTest(testing.allocator,\"{s}\"));\n}}", .{
            result, entry.name, entry.name,
        });
    }

    try output_file.writeAll(result);
    return std.process.cleanExit();
}

fn fatal(comptime format: []const u8, args: anytype) noreturn {
    std.debug.print(format, args);
    std.process.exit(1);
}
