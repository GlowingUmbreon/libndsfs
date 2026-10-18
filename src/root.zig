const FileListing = @import("./root/FileListing.zig");
const Srl = @import("root/FileFormats/Srl.zig");

pub fn init(bytes: []const u8) FileListing {
    const srl = Srl.init(bytes);
    return srl.file_listing;
}
