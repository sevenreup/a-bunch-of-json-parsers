const std = @import("std");
const testing = std.testing;
const json = @import("json/parser.zig");
const aio = @import("aio");
const log = std.log.scoped(.aio_immediate);

pub fn withTimeout(_: std.mem.Allocator, _: []const u8, _: u64) !bool {
    // try coro.io.single(aio.Timeout{ .ns = timeout_ms * std.time.ns_per_ms });
   _ = try aio.single(aio.Timeout{ .ns = 1000 * std.time.ns_per_ms });
    return false;
}
