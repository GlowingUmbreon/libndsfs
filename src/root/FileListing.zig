const std = @import("std");

vtable: *const VTable,

pub const FileType = enum {
    File,
    Directory,
};
const DirEntry = struct { []u8, @This().FileType };
pub const DirResult = []std;

pub const VTable = struct {
    dirRead: *const fn (*anyopaque, []const u8) DirResult,
    //fileRead:
};

pub fn init(vtable: VTable) void {
    return .{ .vtable = vtable };
}

pub fn read_dir(self: @This(), path: []const u8) DirResult {
    return self.vtable.dirRead(path);
}
