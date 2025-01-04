const std = @import("std");
const json = @import("scanner.zig");

pub fn parseFromSlice(allocator: std.mem.Allocator, comptime T: type, slice: []const u8) !T {
    var scanner = json.Scanner.init(allocator, slice);
    defer scanner.deinit();
    return try parseToken(&scanner, T);
}

fn parseToken(scanner: *json.Scanner, comptime T: type) !T {
    switch (@typeInfo(T)) {
        .Struct => |structInfo| {
            var r: T = undefined;
            while (true) {
                var token: json.Token = try scanner.next();
                std.debug.print("{}\n", .{token});
                if (token == json.Token.end_of_document) {
                    return error.EndOfFile;
                } else if (token == json.Token.object_begin) {
                    token = try scanner.next();
                }
                const field_name = switch (token) {
                    inline .string => |slice| slice,
                    .object_end => {
                        break;
                    },
                    else => {
                        return error.UnexpectedToken;
                    },
                };
                std.debug.print("token: {any}\n", .{token});
                inline for (structInfo.fields, 0..) |field, i| {
                    std.debug.print("field_name: {s}, curr: {s}\n", .{ field_name, field.name });
                    if (std.mem.eql(u8, field.name, field_name)) {
                        std.debug.print("field: {s}, size: {d}\n", .{ field.name, i });
                        const value = try parseToken(scanner, field.type);
                        std.debug.print("value: {any}\n", .{value});
                        @field(r, field.name) = value;
                        break;
                    }
                } else {
                    return error.UnexpectedField;
                }
            }
            return r;
        },
        .Int, .ComptimeInt => {
            const token: json.Token = try scanner.next();
            switch (token) {
                .number => |slice| {
                    const value = try std.fmt.parseInt(T, slice, 10);
                    return value;
                },
                else => {
                    return error.UnsupportedType;
                },
            }
        },
        .Pointer => |ptrInfo| {
            const token: json.Token = try scanner.next();
            switch (ptrInfo.size) {
                .Slice => {
                    switch (token) {
                        .string => |slice| {
                            return slice;
                        },
                        else => {
                            return error.UnsupportedType;
                        },
                    }
                },
                else => {
                    return error.UnsupportedType;
                },
            }
        },
        .Array => |arrayInfo| {
            std.debug.print("Array {any}", .{arrayInfo});
            const token: json.Token = try scanner.next();
            if (token == json.Token.object_end) {
                return error.EndOfFile;
            }
            var r: T = undefined;
            const i: usize = 0;

            while (true) {
                switch (token) {
                    .string => |slice| {
                        if (i + slice.len != r.len) return error.InvalidLength;
                        @memcpy(r[i..][0..slice.len], slice);
                        break;
                    },
                    else => unreachable,
                }
            }

            return r;
        },
        else => {
            std.debug.print("Unsupported type: {s}\n", .{@typeName(T)});
            return error.UnsupportedType;
        },
    }

    return error.Unreachable;
}
