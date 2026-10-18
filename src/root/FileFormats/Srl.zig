const std = @import("std");
const builtin = @import("builtin");

const FileListing = @import("../FileListing.zig");
// File Listing:
//  header.bin
//  debug.bin
//  armX.bin
//  armX_overlays/
//   X.bin
//  NitroROM/
const Srl = @This();

bytes: []const u8,
file_listing: ?FileListing = .init(.{
    .dirRead = dirRead,
}),

pub fn init(bytes: []const u8) !Srl {
    return .{
        .bytes = bytes,
    };
}

pub fn dirRead(self: *@This(), path: []const u8) FileListing.DirResult {
    _ = self;
    if (std.mem.eql(u8, path, "/")) {
        return [
            .{ "header.bin", .File },
            .{ "debug.bin", .File },
            .{ "arm9.bin", .File },
            .{ "arm7.bin", .File },
            .{ "arm9_overlays", .Dir },
            .{ "arm7_overlays", .Dir },
            .{ "NitroRom", .Dir },
        ];
    } else {
        std.debug.panic("Unknown Directory '{s}'", .{path});
    }
}
