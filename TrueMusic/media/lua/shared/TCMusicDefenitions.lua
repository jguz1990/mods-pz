-- require "TCMusicDefenitions"

if not TCMusic then TCMusic = {} end
-- if (TCMusic.now_play == nil) then TCMusic.now_play = {} end
if (TCMusic.music_time == nil) then TCMusic.music_time = {} end
if (TCMusic.ItemMusicPlayer == nil) then TCMusic.ItemMusicPlayer = {} end
if (TCMusic.VehicleMusicPlayer == nil) then TCMusic.VehicleMusicPlayer = {} end
if (TCMusic.WorldMusicPlayer == nil) then TCMusic.WorldMusicPlayer = {} end
if (GlobalMusic == nil) then GlobalMusic = {} end

	TCMusic.music_time["tsar_bass"] = 4.48
	TCMusic.music_time["tsar_drum"] = 4.41
	TCMusic.music_time["tsar_grandpiano"] = 9.33
	TCMusic.music_time["tsar_organ"] = 12.5
	TCMusic.music_time["tsar_piano"] = 8.91
	TCMusic.music_time["tsar_standartpiano"] = 17.48
	TCMusic.music_time["tsar_vocal"] = 4.47
	TCMusic.music_time["TCBoombox_service"] = 3
	TCMusic.music_time["TCVinylplayer_service"] = 5.4
	-- tsarcraft_music_01_62 -- tsarcraft_music_01_35
	-- tsarcraft_music_01_63 -- tsarcraft_music_01_36
local DEBUG = false
if DEBUG then
	TCMusic.ItemMusicPlayer["Tsarcraft.TCBoombox"] = "tsarcraft_music_01_35"
	TCMusic.WorldMusicPlayer["tsarcraft_music_01_34"] = "tsarcraft_music_01_35"
	TCMusic.WorldMusicPlayer["tsarcraft_music_01_35"] = "tsarcraft_music_01_35"
	TCMusic.WorldMusicPlayer["tsarcraft_music_01_62"] = "tsarcraft_music_01_35"
	TCMusic.WorldMusicPlayer["tsarcraft_music_01_36"] = "tsarcraft_music_01_36"
	TCMusic.WorldMusicPlayer["tsarcraft_music_01_37"] = "tsarcraft_music_01_36"
	TCMusic.WorldMusicPlayer["tsarcraft_music_01_63"] = "tsarcraft_music_01_36"
	TCMusic.WorldMusicPlayer["Tsarcraft.TCBoombox"] = "tsarcraft_music_01_35"
	TCMusic.WorldMusicPlayer["Tsarcraft.TCVinylplayer"] = "tsarcraft_music_01_36"
	TCMusic.VehicleMusicPlayer["Radio.HamRadio1"] = "tsarcraft_music_01_35"
	TCMusic.VehicleMusicPlayer["Radio.HamRadio2"] = "tsarcraft_music_01_35"
	TCMusic.VehicleMusicPlayer["Radio.RadioBlack"] = "tsarcraft_music_01_35"
	TCMusic.VehicleMusicPlayer["Radio.RadioRed"] = "tsarcraft_music_01_35"
else
	TCMusic.ItemMusicPlayer["Tsarcraft.TCBoombox"] = "tsarcraft_music_01_62"
	TCMusic.WorldMusicPlayer["tsarcraft_music_01_34"] = "tsarcraft_music_01_62"
	TCMusic.WorldMusicPlayer["tsarcraft_music_01_35"] = "tsarcraft_music_01_62"
	TCMusic.WorldMusicPlayer["tsarcraft_music_01_62"] = "tsarcraft_music_01_62"
	TCMusic.WorldMusicPlayer["tsarcraft_music_01_36"] = "tsarcraft_music_01_63"
	TCMusic.WorldMusicPlayer["tsarcraft_music_01_37"] = "tsarcraft_music_01_63"
	TCMusic.WorldMusicPlayer["tsarcraft_music_01_63"] = "tsarcraft_music_01_63"
	TCMusic.WorldMusicPlayer["Tsarcraft.TCBoombox"] = "tsarcraft_music_01_62"
	TCMusic.WorldMusicPlayer["Tsarcraft.TCVinylplayer"] = "tsarcraft_music_01_63"
	TCMusic.VehicleMusicPlayer["Radio.HamRadio1"] = "tsarcraft_music_01_62"
	TCMusic.VehicleMusicPlayer["Radio.HamRadio2"] = "tsarcraft_music_01_62"
	TCMusic.VehicleMusicPlayer["Radio.RadioBlack"] = "tsarcraft_music_01_62"
	TCMusic.VehicleMusicPlayer["Radio.RadioRed"] = "tsarcraft_music_01_62"
end