const std = @import("std");
const print = std.debug.print;
const json = @import("json/parser.zig");
const helper = @import("helper.zig");

const Person = struct {
    name: []const u8,
    age: u32,
};

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    _ = try helper.withTimeout(allocator, "", 1000);

    const file_content = try std.fs.cwd().readFileAlloc(allocator, "content/test.json", std.math.maxInt(usize));
    defer allocator.free(file_content);

    const parsed = try json.parseFromSlice(allocator, Person, file_content);
    print("{any}\n", .{parsed});
}
