const std = @import("std");
const print = std.debug.print;
const json = @import("json/parser.zig");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    const file_content = try std.fs.cwd().readFileAlloc(allocator, "content/test.json", std.math.maxInt(usize));
    defer allocator.free(file_content);

    print("{s}\n", .{file_content});
    try json.parseFromSlice(allocator, file_content);
}
