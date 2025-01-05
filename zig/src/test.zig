const std = @import("std");
const testing = std.testing;
const json = @import("json/parser.zig");
const helper = @import("helper.zig");

const TestFailure = struct {
    case_index: usize,
    input: []const u8,
    expected: []const u8,
    actual: []const u8,
    err: ?anyerror,
};

const TestType = enum {
    yes,
    no,
    ignore,
};

fn printProgress(current: usize, total: usize, file_name: []const u8) void {
    const width = 50;
    const progress = @as(f64, @floatFromInt(current)) / @as(f64, @floatFromInt(total));
    const filled = @as(usize, @intFromFloat(progress * @as(f64, width)));

    std.log.warn("\r[", .{});
    var i: usize = 0;
    while (i < width) : (i += 1) {
        if (i < filled) {
            std.log.warn("=", .{});
        } else {
            std.log.warn(" ", .{});
        }
    }
    std.log.warn("] {d:>3}% ", .{@as(usize, @intFromFloat(progress * 100))});
    std.log.warn("({d}/{d}) ", .{ current, total });
    std.log.warn("Testing: {s}...", .{file_name});
}

test "json test caces" {
    const base_path = try std.fs.cwd().realpathAlloc(testing.allocator, "../tests/test_parsing");
    defer testing.allocator.free(base_path);
    var dir = try std.fs.cwd().openDir("../tests/test_parsing", .{
        .iterate = true,
    });

    var failures = std.ArrayList(TestFailure).init(testing.allocator);
    defer failures.deinit();

    var total_tests: usize = 0;
    {
        var dir_iterator = dir.iterate();
        while (try dir_iterator.next()) |entry| {
            if (std.mem.endsWith(u8, entry.name, ".json")) {
                total_tests += 1;
            }
        }
    }
    var current_test: usize = 0;

    var dir_iterator = dir.iterate();
    while (try dir_iterator.next()) |entry| {
        if (!std.mem.endsWith(u8, entry.name, ".json")) {
            continue;
        }

        current_test += 1;
        printProgress(current_test, total_tests, entry.name);

        var paths = [_][]const u8{ base_path, entry.name };
        const full_path = try std.fs.path.join(testing.allocator, &paths);
        defer testing.allocator.free(full_path);
        const file_content = try std.fs.cwd().readFileAlloc(testing.allocator, full_path, std.math.maxInt(usize));
        defer testing.allocator.free(file_content);

        const test_type = getTestType(entry.name);
        if (test_type == TestType.ignore) {
            continue;
        }

        const timeout = helper.withTimeout(testing.allocator, file_content, 1000) catch |err| {
            if (test_type == .yes) {
                try failures.append(TestFailure{
                    .case_index = failures.items.len,
                    .input = file_content,
                    .expected = "no error",
                    .actual = "error",
                    .err = err,
                });
            }
        };

        if (timeout) {
            try failures.append(TestFailure{
                .case_index = failures.items.len,
                .input = file_content,
                .expected = "no timeout",
                .actual = "timeout",
                .err = error.Timeout,
            });
            continue;
        }
        if (test_type == .no) {
            try failures.append(TestFailure{
                .case_index = failures.items.len,
                .input = file_content,
                .expected = "error",
                .actual = "no error",
                .err = error.ExpectedError,
            });
        }
    }

    if (failures.items.len > 0) {
        // Print failure summary
        std.log.warn("\n=== Test Failures ===\n", .{});
        std.log.warn("Failed {d} out of {d} tests\n\n", .{ failures.items.len, total_tests });

        for (failures.items) |failure| {
            std.log.warn("Test Case {d} failed:\n", .{failure.case_index});
            std.log.warn("  Input:    {s}\n", .{failure.input});
            std.log.warn("  Expected: {s}\n", .{failure.expected});
            if (failure.err) |err| {
                std.log.warn("  Error:    {}\n", .{err});
            } else {
                std.log.warn("  Actual:   {s}\n", .{failure.actual});
            }
            std.log.warn("\n", .{});
        }

        // Fail the test at the end with a summary
        try testing.expectEqual(@as(usize, 0), failures.items.len);
    }
}

fn getTestType(source: []const u8) TestType {
    if (startsWith(source, "y_")) {
        return TestType.yes;
    } else if (startsWith(source, "n_")) {
        return TestType.no;
    }
    return TestType.ignore;
}

pub fn startsWith(source: []const u8, comp: []const u8) bool {
    if (source.len < comp.len) {
        return false;
    }
    return std.mem.eql(u8, source[0..comp.len], comp);
}
