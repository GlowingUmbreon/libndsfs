const std = @import("std");
const builtin = @import("builtin");

const FileListing = @import("../FileListing.zig");
// File Listing:
//  header.bin
//  debug.bin
//  arm_/
//   main.bin
//   overlay_.bin
//  NitroROM/*
const Srl = @This();

bytes: []const u8,
file_listing: ?FileListing = null,

pub fn init(bytes: []const u8) !Srl {
    return .{
        .bytes = bytes,
    };
}

test {
    const bytes: []const u8 = @embedFile("child.nds");
    const srl = try Srl.init(bytes);
    std.testing.failPrint("{any}", .{srl});
}
