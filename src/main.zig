const std = @import("std");
const Io = std.Io;

const nds_fs = @import("nds_fs");

pub fn main(init: std.process.Init) !void {
    _ = init;
    const bytes: []const u8 = @embedFile("child.nds");
    const rom = nds_fs.init(bytes);
    _ = rom;
}
