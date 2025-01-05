const std = @import("std");
const testing = std.testing;
const json = @import("json/parser.zig");

const TestType = enum {
    yes,
    no,
    ignore,
};

test "json test caces" {
    const base_path = try std.fs.cwd().realpathAlloc(testing.allocator, "../tests/test_parsing");
    defer testing.allocator.free(base_path);
    var iter = (try std.fs.cwd().openDir("../tests/test_parsing", .{
        .iterate = true,
    })).iterate();
    while (try iter.next()) |entry| {
        if (endsWith(entry.name, ".json")) {
            std.debug.print("testing: {s}\n", .{entry.name});
            var paths = [_][]const u8{ base_path, entry.name };
            const full_path = try std.fs.path.join(testing.allocator, &paths);
            defer testing.allocator.free(full_path);
            const file_content = try std.fs.cwd().readFileAlloc(testing.allocator, full_path, std.math.maxInt(usize));
            defer testing.allocator.free(file_content);

            const test_type = getTestType(entry.name);

            switch (test_type) {
                .yes => {
                    json.parserAllTokens(testing.allocator, file_content) catch {};
                },
                .no => {
                    try testing.expect(std.meta.isError(json.parserAllTokens(testing.allocator, file_content)));
                },
                .ignore => {
                    continue;
                },
            }
        }
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

pub fn endsWith(source: []const u8, comp: []const u8) bool {
    if (source.len < comp.len) {
        return false;
    }
    const start = source.len - comp.len;
    return std.mem.eql(u8, source[start..source.len], comp);
}

pub fn startsWith(source: []const u8, comp: []const u8) bool {
    if (source.len < comp.len) {
        return false;
    }
    return std.mem.eql(u8, source[0..comp.len], comp);
}
