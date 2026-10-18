GameTitle: [12]u8,
Gamecode: [4]u8,
MakerCode: [2]u8,
UnitCode: u8,
//EncryptionSeedSelect: u8,
//DeviceCapacity: u8,
//_0: [7]u8,
//_1: [1]u8,
//Region: u8,
//Version: u8,
//Autostart: u8,
arm9_rom_offset: u32,
arm9_entry_address: u32,
arm9_ram_address: u32,
arm9_size: u32,
arm7_rom_offset: u32,
arm7_entry_address: u32,
arm7_ram_address: u32,
arm7_size: u32,
fnt_offset: u32,
fnt_size: u32,
fat_offset: u32,
fat_size: u32,
arm9_overlay_offset: u32,
arm9_overlay_size: u32,
arm7_overlay_offset: u32,
arm7_overlay_size: u32,
//TO_NAME_1: u32,
//TO_NAME_2: u32,
//title_offset: u32,
//secure_area_checksum: u16,
//secure_area_delay: u16,
//arm9_auto_load_list: u32,
//arm7_auto_load_list: u32,
//secure_area_disable: u64,
//total_used_rom_size: u32,
//rom_header_size: u32 = 0x4000,
//_2: u32,
//_3: u64,
//nand_end_of_rom_area: u16,
//nand_start_of_rw_area: u16,
//_4: [0x18]u8 = @splat(0),
//_5: [0x10]u8 = @splat(0),
//nintendo_logo: [0x9C]u8,
//header_checksum: u16,
//debug_rom_offset: u32 = 0,
//debug_size: u32 = 0,
//debug_ram_address: u32 = 0,
//_6: u32 = 0,
//_7: [0x90]u8 = @splat(0),
//_8: [0xE00]u8 = @splat(0),

pub fn parse(bytes: []const u8) !@This() {
    if (builtin.mode.runtimeSafety()) {
        if (bytes.len < 0x2E0) return error.FILE_TOO_SMALL;
    }

    var srl: @This() = undefined;
    srl.GameTitle = bytes[0x0..0xC].*;
    srl.Gamecode = bytes[0xC..0x10].*;
    srl.MakerCode = bytes[0x10..0x12].*;
    srl.UnitCode = @bitCast(bytes[0x12..0x13].*);
    //srl.EncryptionSeedSelect =
    //srl.DeviceCapacity =
    //srl._0 =
    //srl._1 =
    //srl.Region =
    //srl.Version =
    //srl.Autostart =
    srl.arm9_rom_offset = @bitCast(bytes[0x20..0x24].*);
    srl.arm9_entry_address = @bitCast(bytes[0x24..0x28].*);
    srl.arm9_ram_address = @bitCast(bytes[0x28..0x2C].*);
    srl.arm9_size = @bitCast(bytes[0x2C..0x30].*);
    srl.arm7_rom_offset = @bitCast(bytes[0x30..0x34].*);
    srl.arm7_entry_address = @bitCast(bytes[0x34..0x38].*);
    srl.arm7_ram_address = @bitCast(bytes[0x38..0x3C].*);
    srl.arm7_size = @bitCast(bytes[0x3C..0x40].*);
    srl.fnt_offset = @bitCast(bytes[0x40..0x44].*);
    srl.fnt_size = @bitCast(bytes[0x44..0x48].*);
    srl.fat_offset = @bitCast(bytes[0x48..0x4C].*);
    srl.fat_size = @bitCast(bytes[0x4C..0x50].*);
    //srl.arm9_overlay_offset =
    //srl.arm9_overlay_size =
    //srl.arm7_overlay_offset =
    //srl.arm7_overlay_size =
    //srl.TO_NAME_1 =
    //srl.TO_NAME_2 =
    //srl.title_offset =
    //srl.secure_area_checksum =
    //srl.secure_area_delay =
    //srl.arm9_auto_load_list =
    //srl.arm7_auto_load_list =
    //srl.secure_area_disable =
    //srl.total_used_rom_size =
    //srl.rom_header_size =
    //srl._2 =
    //srl._3 =
    //srl.nand_end_of_rom_area =
    //srl.nand_start_of_rw_area =
    //srl._4 =
    //srl._5 =
    //srl.nintendo_logo =
    //srl.header_checksum =
    //srl.debug_rom_offset =
    //srl.debug_size =
    //srl.debug_ram_address =
    //srl._6 =
    //srl._7 =
    //srl._8 =

    return srl;
}
