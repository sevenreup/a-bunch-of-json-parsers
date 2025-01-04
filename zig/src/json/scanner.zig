const std = @import("std");
const BitStack = std.BitStack;
const Allocator = std.mem.Allocator;

pub const Token = union(enum) {
    object_begin,
    object_end,
    end_of_document,
    string: []const u8,
    number: []const u8,
};

const State = enum {
    object_begin,
    object_end,
    end_of_document,
    string,
    number,
    value,
};

pub const Scanner = struct {
    input: []const u8 = "",
    stack: BitStack,
    state: State = State.value,
    cursor: usize = 0,
    value_start: usize = 0,

    pub fn init(allocator: Allocator, input: []const u8) Scanner {
        return Scanner{
            .stack = BitStack.init(allocator),
            .input = input,
        };
    }

    pub fn deinit(self: *@This()) void {
        self.* = undefined;
    }

    pub fn next(self: *@This()) !Token {
        return self.nextInternal() catch |err| switch (err) {
            error.EndOfFile => return Token.end_of_document,
            else => return err,
        };
    }

    fn nextInternal(self: *@This()) !Token {
        scanner_loop: while (true) {
            if (self.cursor >= self.input.len) {
                return error.EndOfFile;
            }
            const curr = try self.skipWhitespaceGetByte();
            // std.debug.print("current: {c}, cursor: {}, state {},\n", .{ curr, self.cursor, self.state });
            switch (curr) {
                '{' => {
                    self.state = State.object_begin;
                    self.cursor += 1;
                    return Token.object_begin;
                },
                '"' => {
                    self.cursor += 1;
                    self.value_start = self.cursor;
                    while (true) {
                        const c = try self.getByte();
                        if (c == '"') {
                            self.cursor += 1;
                            break;
                        }
                        self.cursor += 1;
                    }
                    self.state = State.value;
                    return .{ .string = self.input[self.value_start..self.cursor] };
                },
                '}' => {
                    self.state = State.object_end;
                    self.cursor += 1;
                    return Token.object_end;
                },
                ':' => {
                    self.state = State.value;
                    self.cursor += 1;
                    continue :scanner_loop;
                },
                ',' => {
                    self.state = State.value;
                    self.cursor += 1;
                    continue :scanner_loop;
                },
                '0'...'9' => {
                    self.state = State.number;
                    self.value_start = self.cursor;
                    self.cursor += 1;
                    while (true) {
                        const c = try self.getByte();
                        if (!isDigit(c)) {
                            break;
                        } else {
                            self.cursor += 1;
                        }
                    }
                    return .{ .number = self.input[self.value_start..self.cursor] };
                },
                else => {
                    return error.Unreachable;
                },
            }
        }
        return Token.object_begin;
    }

    fn skipWhitespaceGetByte(self: *@This()) !u8 {
        while (self.cursor < self.input.len) : (self.cursor += 1) {
            switch (self.input[self.cursor]) {
                ' ', '\t', '\n', '\r' => {
                    continue;
                },
                else => return try getByte(self),
            }
        }
        return try getByte(self);
    }

    fn getByte(self: *@This()) !u8 {
        if (self.cursor >= self.input.len) {
            return 0;
        }
        return self.input[self.cursor];
    }

    fn peekByte(self: *@This()) !u8 {
        if (self.cursor + 1 >= self.input.len) {
            return 0;
        }
        return self.input[self.cursor + 1];
    }
};
pub fn isDigit(c: u8) bool {
    return c >= '0' and c <= '9';
}

pub fn isLetter(c: u8) bool {
    return (c >= 'A' and c <= 'Z') or
        (c >= 'a' and c <= 'z');
}
pub fn isAlphanumeric(c: u8) bool {
    return isDigit(c) or isLetter(c);
}
