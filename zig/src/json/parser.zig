const std = @import("std");
const json = @import("scanner.zig");

pub fn parseFromSlice(allocator: std.mem.Allocator, slice: []const u8) !void {
    var scanner = json.Scanner.init(allocator, slice);
    defer scanner.deinit();

    while (true) {
        const token = try scanner.next();
        std.debug.print("{}\n", .{token});
        if (token == json.Token.end_of_document) break;
    }
}
