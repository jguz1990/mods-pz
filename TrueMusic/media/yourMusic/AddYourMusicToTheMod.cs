// TCSounds
// MusicScrits
// TCLoading
// TCMusicDefenitionsStr


using System;
using System.Text;
using System.Text.RegularExpressions;
using System.IO;
using System.Collections;
using System.Collections.Generic;

public class MusicGenerator
{
    public static void Main(string[] args)
    {
		convertFolder("TCBoombox");
		Console.WriteLine();
		convertFolder("TCVinylplayer");
		Console.WriteLine("\nPress any key..");
		Console.ReadKey();
		
    }
	
	private static string TR(string str)
	{
		
		   str = str.Replace("а", "a");
           str = str.Replace("А", "A");
	       str = str.Replace("б", "b");
           str = str.Replace("Б", "B");
           str = str.Replace("в", "v");
           str = str.Replace("В", "V");
           str = str.Replace("г", "g");
           str = str.Replace("Г", "G");
           str = str.Replace("д", "d");
           str = str.Replace("Д", "D");
           str = str.Replace("е", "e");
           str = str.Replace("Е", "E");
		   str = str.Replace("ё", "e");
           str = str.Replace("Ё", "E");
           str = str.Replace("ж", "zh");
           str = str.Replace("Ж", "ZH");
           str = str.Replace("з", "z");
           str = str.Replace("З", "Z");
           str = str.Replace("и", "i");
           str = str.Replace("И", "I");
           str = str.Replace("й", "y");
           str = str.Replace("Й", "Y");
           str = str.Replace("к", "k");
           str = str.Replace("К", "K");
           str = str.Replace("л", "l");
           str = str.Replace("Л", "L");
           str = str.Replace("м", "m");
           str = str.Replace("М", "M");
           str = str.Replace("н", "n");
           str = str.Replace("Н", "N");
           str = str.Replace("о", "o");
           str = str.Replace("О", "O");
           str = str.Replace("п", "p");
           str = str.Replace("П", "P");
           str = str.Replace("р", "r");
           str = str.Replace("Р", "R");
           str = str.Replace("с", "s");
           str = str.Replace("С", "S");
           str = str.Replace("т", "t");
           str = str.Replace("Т", "T");
           str = str.Replace("У", "U");
           str = str.Replace("у", "u");
           str = str.Replace("ф", "f");
           str = str.Replace("Ф", "F");
           str = str.Replace("х", "h");
           str = str.Replace("Х", "H");
           str = str.Replace("ц", "ts");
           str = str.Replace("Ц", "TS");		   
           str = str.Replace("ч", "ch");
           str = str.Replace("Ч", "CH");
           str = str.Replace("ш", "sh");
           str = str.Replace("Ш", "SH");
           str = str.Replace("щ", "shch");
           str = str.Replace("Щ", "SHCH");
           str = str.Replace("ы", "y");
           str = str.Replace("Ы", "Y");
		   str = str.Replace("э", "e");
           str = str.Replace("Э", "E");
           str = str.Replace("ю", "yu");
           str = str.Replace("Ю", "YU");
           str = str.Replace("Я", "YA");
           str = str.Replace("я", "ya");
           str = str.Replace("ь", "");
           str = str.Replace("Ь", "");
           str = str.Replace("ъ", "");
           str = str.Replace("Ъ", "");
           return str;
      
	}
	
	public static string RemoveDiacritics(string value)
	{
		if (String.IsNullOrEmpty(value))
			return value;

		string normalized = value.Normalize(NormalizationForm.FormD);
		StringBuilder sb = new StringBuilder();

		foreach (char c in normalized)
		{
			if (System.Globalization.CharUnicodeInfo.GetUnicodeCategory(c) != System.Globalization.UnicodeCategory.NonSpacingMark)
				sb.Append(c);
		}

		Encoding nonunicode = Encoding.GetEncoding(850);
		Encoding unicode = Encoding.Unicode;

		byte[] nonunicodeBytes = Encoding.Convert(unicode, nonunicode, unicode.GetBytes(sb.ToString()));
		char[] nonunicodeChars = new char[nonunicode.GetCharCount(nonunicodeBytes, 0, nonunicodeBytes.Length)];
		nonunicode.GetChars(nonunicodeBytes, 0, nonunicodeBytes.Length, nonunicodeChars, 0);

		return new string(nonunicodeChars);
	}
	
	public static void convertFolder(string type)
	{	

		string path = type;
		Random rnd = new Random();
		var dir=new DirectoryInfo(path);
		var files = new List<string>(); 
		var songs = new List<string>(); 
		string[] ProceduralDistributionsItemsCassette = new string[] { 
			// vanila
			"BandPracticeInstruments", // 20 10
			"ClosetShelfGeneric", // 2
			// "CrateCompactDiscs", // 50 20 20 10 10 
			"CrateRandomJunk", // 1
			// "ElectronicStoreMusic", // 10 10 10 10 10 10
			"FactoryLockers", // 2
			"FireDeptLockers", // 2
			"GymLockers", // 2
			"LivingRoomShelf", // 4
			"LivingRoomShelfNoTapes", // 4
			"Locker", // 2
			"LockerClassy", // 2
			// "MusicStoreCDs", // 10 10 10 10 10 10 10 10
			// "MusicStoreSpeaker", // 10 10 10 10 10 10 10
			"PoliceLockers", // 2
			"SchoolLockers", // 4
			"SecurityLockers", // 2
			"ShelfGeneric", // 2
		};
		string[] ProceduralDistributionsItemsCassetteJunk = new string[] { 
			// vanila
			"BedroomDresser", // junk 2
			"BedroomSideTable", // junk 2
			"DeskGeneric", // junk 2
			"DresserGeneric", // junk 2
			// "ElectronicStoreMusic", // junk 100
			"OfficeDesk", // junk 2
			"OfficeDeskHome", // junk 2
			"OfficeDrawers", // junk 2
			"PoliceDesk", // junk 2
			"WardrobeChild", // junk 2
			"WardrobeMan", // junk 2
			"WardrobeManClassy", // junk 2
			"WardrobeRedneck", // junk 2
			"WardrobeWoman", // junk 2
			"WardrobeWomanClassy", // junk 2
			// OWN 
			"ArmyStorageElectronics", // junk 1
			"BarCounterWeapon", // junk 1
			"BinBar", // junk 1
			"CabinetFactoryTools", // junk 1
			"ClassroomDesk", // junk 1
			"CrateCamping", // junk 1
			"CrateComputer", // junk 1
			"CrateElectronics", // junk 1
			"ElectronicStoreMisc", // junk 1
			"GarageTools", // junk 1
			"GigamartHouseElectronics", // junk 1
			"JanitorMisc", // junk 1
			"KitchenRandom", // junk 1
			"MusicStoreOthers", // junk 1
		};
		
		string[] ProceduralDistributionsItemsVinyl = new string[] { 
			// vanila
			"BandPracticeInstruments", // 20 10
			"ClosetShelfGeneric", // 2
			"CrateRandomJunk", // 1
			"LivingRoomShelf", // 4
			"LivingRoomShelfNoTapes", // 4
			"Locker", // 2
			"LockerClassy", // 2
			// "MusicStoreCDs", // 10 10 10 10 10 10 10 10
			// "MusicStoreSpeaker", // 10 10 10 10 10 10 10
			"PoliceLockers", // 2
			"SecurityLockers", // 2
			"ShelfGeneric", // 2
		};
		string[] ProceduralDistributionsItemsVinylJunk = new string[] { 
			// vanila
			"BedroomDresser", // junk 2
			"BedroomSideTable", // junk 2
			"DeskGeneric", // junk 2
			"DresserGeneric", // junk 2
			// "ElectronicStoreMusic", // junk 100
			"WardrobeMan", // junk 2
			"WardrobeManClassy", // junk 2
			"WardrobeRedneck", // junk 2
			"WardrobeWoman", // junk 2
			"WardrobeWomanClassy", // junk 2
			// OWN 
			"CrateElectronics", // junk 1
			"GarageTools", // junk 1
			"MusicStoreOthers", // junk 1
		};
		
		int randomNum = 0;
		
		string TCSoundsStr = "module Tsarcraft\n" + "{\n";
		string TCMusicScriptsStr = "module Tsarcraft\n" +
                                   "{\n" +
                                   "\timports\n" +
                                   "\t{\n" +
                                   "\t\tBase\n" +
                                   "\t}\n" +
                                   "/********************Generated Music Carriers********************/\n" +
                                   "\n";
		
		string TCMusicDefenitionsStr = "require \"TCMusicDefenitions\"\n\n";
									   
		string TCLoading = "";
							// "require \"Items/Distributions\"\n" + 
							// "require \"Items/ProceduralDistributions\"\n" + 
							// "require \"Items/ItemPicker\"\n\n";
		string unit = "";
		string icon = "";
		string tile = "";
		int maxIcon = 0;
		bool canBeOwnCover = false;
		if (type == "TCBoombox") 
		{
			unit = "Cassette";
			icon = "TCTape";
			maxIcon = 12;
			tile = "tsarcraft_music_01_62";
		}
		else if (type == "TCVinylplayer") 
		{
			unit = "Vinyl";
			icon = "TCVinylrecord";
			maxIcon = 12;
			tile = "tsarcraft_music_01_63";
			canBeOwnCover = true;
		}
		
		
		foreach (FileInfo file in dir.GetFiles())
		{ 
			try 
			{	
				string nameOfExt = Path.GetExtension(file.Name);
				if (nameOfExt == ".mp3" || nameOfExt == ".wav" || nameOfExt == ".ogg")
				{
					string nameOfFile = file.Name.Replace(",", "");
					//Console.WriteLine(nameOfFile);

					
					string nameOfFolder = file.Directory.Name;
					//Console.WriteLine(file.Directory);
					
					string item = "";
					if (Regex.IsMatch(nameOfFile, @"\p{IsCyrillic}+"))
					{
						nameOfFile = TR(nameOfFile);
					}
					nameOfFile = RemoveDiacritics(nameOfFile);			
					
					string nameOfFileWOExt = Path.GetFileNameWithoutExtension(nameOfFile);
					
					if (songs.Contains(nameOfFileWOExt))
					{
						continue;
					}
					//File.Delete(file.Directory + "\\" + nameOfFile); // Delete the existing file if exists
					
					File.Move(file.Directory + "\\" + file.Name, file.Directory + "\\" + nameOfFile);
					// Console.WriteLine(nameOfExt);
					if (nameOfExt == ".mp3")
					{
						// Console.WriteLine("mp3");
						System.Diagnostics.Process process = new System.Diagnostics.Process();
						System.Diagnostics.ProcessStartInfo startInfo = new System.Diagnostics.ProcessStartInfo();
						startInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
						startInfo.WorkingDirectory = Directory.GetCurrentDirectory();
						string cmdRun = "/C audioConverter\\sox.exe \""+ path +"\\" + nameOfFile + "\" \"" + path + "\\" + nameOfFileWOExt + ".ogg\"";
						//Console.WriteLine(cmdRun);
						startInfo.FileName = "cmd.exe";
						startInfo.Arguments = cmdRun;
						process.StartInfo = startInfo;
						process.Start();
						//Console.WriteLine(nameOfFile + " converting to OGG.");
						nameOfFile = nameOfFileWOExt + ".ogg";
					}
					
					item = nameOfFileWOExt.Replace(" ", "").Replace(".", "").Replace("_", "").Replace("-", "");
					
					TCSoundsStr += "\tsound " + unit + item + "\n" +
									"\t{\n" +
									"\t\tcategory = True Music,\n" +
									"\t\tmaster = Ambient,\n" +
									"\t\tclip\n" +
									"\t\t{\n" +
									"\t\t\tfile = media/yourMusic/" + nameOfFolder +"/"+ nameOfFile +",\n" +
									"\t\t\tdistanceMax = 75,\n" +
									"\t\t}\n" +
									"\t}\n";
									
					bool haveOwnCover = false;
					if (canBeOwnCover) {		
						FileInfo coverInf = new FileInfo(path + "\\" + nameOfFileWOExt + ".jpg");
						if (coverInf.Exists)
						{
							System.Diagnostics.Process process = new System.Diagnostics.Process();
							System.Diagnostics.ProcessStartInfo startInfo = new System.Diagnostics.ProcessStartInfo();
							startInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
							startInfo.WorkingDirectory = Directory.GetCurrentDirectory();
							string cmdRun = "/C pictureConverter\\convert.exe \"" + path + "\\" + nameOfFileWOExt + ".jpg" + "\" -resize 300x300! \"..\\textures\\WorldItems\\" + item + ".png\"";
							//Console.WriteLine(cmdRun);
							startInfo.FileName = "cmd.exe";
							startInfo.Arguments = cmdRun;
							process.StartInfo = startInfo;
							process.Start();
							TCMusicScriptsStr += "\tmodel " + unit + item + "Model\n" +
											"\t{\n" +
											"\t\tmesh\t\t\t=\tWorldItems/TCCover,\n" +
											"\t\ttexture\t\t\t=\tWorldItems/" + item + ",\n" +
											"\t\tscale\t=\t0.0012,\n" +
											"\t}\n\n";
							haveOwnCover = true;
						}
					}
					
					int numOfIcon = rnd.Next(1, maxIcon);
					TCMusicScriptsStr += "\titem " + unit + item + "\n" +
										"\t{\n" +
										"\t\tType\t\t\t=\tNormal,\n" +
										"\t\tWeight\t\t\t=\t0.2,\n" +
										"\t\tIcon\t\t\t=\t" + icon + numOfIcon + ",\n" +
										"\t\tDisplayName\t\t=\t" + unit + " " + nameOfFileWOExt + ",\n";
					if (canBeOwnCover && haveOwnCover) {
						TCMusicScriptsStr += "\t\tWorldStaticModel = Tsarcraft." + unit + item + "Model,\n";
					} else {
						TCMusicScriptsStr += "\t\tWorldStaticModel = Tsarcraft." + icon + numOfIcon + ",\n";
					}
					TCMusicScriptsStr += "\t}\n\n";
					TCMusicDefenitionsStr += "\tGlobalMusic[\"" + unit + item + "\"] = \"" + tile + "\"\n";
					
					if (type == "TCBoombox") 
					{
						//spawnFix
						TCLoading += "table.insert(ProceduralDistributions.list[\"CrateCompactDiscs\"].items, \"Tsarcraft."  + unit + item + "\");\ntable.insert(ProceduralDistributions.list[\"CrateCompactDiscs\"].items, 0.1);\n";
						TCLoading += "table.insert(ProceduralDistributions.list[\"ElectronicStoreMusic\"].items, \"Tsarcraft."  + unit + item + "\");\ntable.insert(ProceduralDistributions.list[\"ElectronicStoreMusic\"].items, 0.1);\n";
						TCLoading += "table.insert(ProceduralDistributions.list[\"MusicStoreCDs\"].items, \"Tsarcraft."  + unit + item + "\");\ntable.insert(ProceduralDistributions.list[\"MusicStoreCDs\"].items, 0.1);\n";
						TCLoading += "table.insert(ProceduralDistributions.list[\"MusicStoreSpeaker\"].items, \"Tsarcraft."  + unit + item + "\");\ntable.insert(ProceduralDistributions.list[\"MusicStoreSpeaker\"].items, 0.1);\n";
						TCLoading += "table.insert(ProceduralDistributions.list[\"MusicStoreSpeaker\"].junk.items, \"Tsarcraft."  + unit + item + "\");\ntable.insert(ProceduralDistributions.list[\"MusicStoreSpeaker\"].junk.items, 0.1);\n";
						//spawnRandom
						randomNum = rnd.Next(0, ProceduralDistributionsItemsCassette.Length);
						TCLoading += "table.insert(ProceduralDistributions.list[\"" + ProceduralDistributionsItemsCassette[randomNum] + "\"].items, \"Tsarcraft."  + unit + item + "\");\ntable.insert(ProceduralDistributions.list[\"" + ProceduralDistributionsItemsCassette[randomNum] + "\"].items, 0.7);\n";
						randomNum = rnd.Next(0, ProceduralDistributionsItemsCassette.Length);
						TCLoading += "table.insert(ProceduralDistributions.list[\"" + ProceduralDistributionsItemsCassette[randomNum] + "\"].items, \"Tsarcraft."  + unit + item + "\");\ntable.insert(ProceduralDistributions.list[\"" + ProceduralDistributionsItemsCassette[randomNum] + "\"].items, 0.7);\n";
						randomNum = rnd.Next(0, ProceduralDistributionsItemsCassette.Length);
						TCLoading += "table.insert(ProceduralDistributions.list[\"" + ProceduralDistributionsItemsCassette[randomNum] + "\"].items, \"Tsarcraft."  + unit + item + "\");\ntable.insert(ProceduralDistributions.list[\"" + ProceduralDistributionsItemsCassette[randomNum] + "\"].items, 0.7);\n";
						// junk
						randomNum = rnd.Next(0, ProceduralDistributionsItemsCassetteJunk.Length);
						TCLoading += "table.insert(ProceduralDistributions.list[\"" + ProceduralDistributionsItemsCassetteJunk[randomNum] + "\"].junk.items, \"Tsarcraft."  + unit + item + "\");\ntable.insert(ProceduralDistributions.list[\"" + ProceduralDistributionsItemsCassetteJunk[randomNum] + "\"].junk.items, 0.7);\n";
						randomNum = rnd.Next(0, ProceduralDistributionsItemsCassetteJunk.Length);
						TCLoading += "table.insert(ProceduralDistributions.list[\"" + ProceduralDistributionsItemsCassetteJunk[randomNum] + "\"].junk.items, \"Tsarcraft."  + unit + item + "\");\ntable.insert(ProceduralDistributions.list[\"" + ProceduralDistributionsItemsCassetteJunk[randomNum] + "\"].junk.items, 0.7);\n";
					}
					else if (type == "TCVinylplayer") 
					{
						//spawnFix
						TCLoading += "table.insert(ProceduralDistributions.list[\"MusicStoreCDs\"].items, \"Tsarcraft."  + unit + item + "\");\ntable.insert(ProceduralDistributions.list[\"MusicStoreCDs\"].items, 0.1);\n";
						TCLoading += "table.insert(ProceduralDistributions.list[\"MusicStoreSpeaker\"].items, \"Tsarcraft."  + unit + item + "\");\ntable.insert(ProceduralDistributions.list[\"MusicStoreSpeaker\"].items, 0.1);\n";
						TCLoading += "table.insert(ProceduralDistributions.list[\"ElectronicStoreMusic\"].junk.items, \"Tsarcraft."  + unit + item + "\");\ntable.insert(ProceduralDistributions.list[\"ElectronicStoreMusic\"].junk.items, 0.1);\n";
						//spawnRandom
						randomNum = rnd.Next(0, ProceduralDistributionsItemsVinyl.Length);
						TCLoading += "table.insert(ProceduralDistributions.list[\"" + ProceduralDistributionsItemsVinyl[randomNum] + "\"].items, \"Tsarcraft."  + unit + item + "\");\ntable.insert(ProceduralDistributions.list[\"" + ProceduralDistributionsItemsVinyl[randomNum] + "\"].items, 0.2);\n";
						randomNum = rnd.Next(0, ProceduralDistributionsItemsVinyl.Length);
						TCLoading += "table.insert(ProceduralDistributions.list[\"" + ProceduralDistributionsItemsVinyl[randomNum] + "\"].items, \"Tsarcraft."  + unit + item + "\");\ntable.insert(ProceduralDistributions.list[\"" + ProceduralDistributionsItemsVinyl[randomNum] + "\"].items, 0.2);\n";
						randomNum = rnd.Next(0, ProceduralDistributionsItemsVinyl.Length);
						TCLoading += "table.insert(ProceduralDistributions.list[\"" + ProceduralDistributionsItemsVinyl[randomNum] + "\"].items, \"Tsarcraft."  + unit + item + "\");\ntable.insert(ProceduralDistributions.list[\"" + ProceduralDistributionsItemsVinyl[randomNum] + "\"].items, 0.2);\n";
						// junk
						randomNum = rnd.Next(0, ProceduralDistributionsItemsVinylJunk.Length);
						TCLoading += "table.insert(ProceduralDistributions.list[\"" + ProceduralDistributionsItemsVinylJunk[randomNum] + "\"].junk.items, \"Tsarcraft."  + unit + item + "\");\ntable.insert(ProceduralDistributions.list[\"" + ProceduralDistributionsItemsVinylJunk[randomNum] + "\"].junk.items, 0.2);\n";
						randomNum = rnd.Next(0, ProceduralDistributionsItemsVinylJunk.Length);
						TCLoading += "table.insert(ProceduralDistributions.list[\"" + ProceduralDistributionsItemsVinylJunk[randomNum] + "\"].junk.items, \"Tsarcraft."  + unit + item + "\");\ntable.insert(ProceduralDistributions.list[\"" + ProceduralDistributionsItemsVinylJunk[randomNum] + "\"].junk.items, 0.2);\n";
					}		 
					songs.Add(nameOfFileWOExt);
				}
			}
			catch (Exception e) 
			{
				using (StreamWriter sw = new StreamWriter(@"error.log", true, System.Text.Encoding.Default))
                {
                    Console.WriteLine("Some error with file: " + file.Name);
					Console.WriteLine(e);
					sw.WriteLine("Some error with file: " + file.Name);
					sw.WriteLine(e);
                }
			}
		}
		TCSoundsStr += "}";
		TCMusicScriptsStr += "}";
		// Console.WriteLine("TCSoundsStr");
		// Console.WriteLine(TCSoundsStr);
		// Console.WriteLine("TCMusicScriptsStr");
		// Console.WriteLine(TCMusicScriptsStr);
		// Console.WriteLine("TCMusicDefenitionsStr");
		// Console.WriteLine(TCMusicDefenitionsStr);
		using (StreamWriter sw = new StreamWriter(@"../scripts/TCGSounds" + type + ".txt", false, System.Text.Encoding.Default))
                {
                    sw.WriteLine(TCSoundsStr);
                }
		using (StreamWriter sw = new StreamWriter(@"../scripts/TCGMusicScript" + type + ".txt", false, System.Text.Encoding.Default))
                {
                    sw.WriteLine(TCMusicScriptsStr);
                }
		using (StreamWriter sw = new StreamWriter(@"../lua/shared/TCGMusicDefenitions" + type + ".lua", false, System.Text.Encoding.Default))
                {
                    sw.WriteLine(TCMusicDefenitionsStr);
                }
		using (StreamWriter sw = new StreamWriter(@"../lua/server/Items/TCGLoading" + type + ".lua", false, System.Text.Encoding.Default))
				{
					sw.WriteLine(TCLoading);
				}
		Console.WriteLine("Completed for " + type + ".\nAdded new music:");
		foreach (String song in songs)
		{
			 Console.WriteLine(song);
		}
	}
}

