
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
		deleteTCGfiles(@"..\lua\shared");
		deleteTCGfiles(@"..\lua\server\Items");
		deleteTCGfiles(@"..\scripts");
		Console.WriteLine("\nPress any key..");
		Console.ReadKey();
    }
	
	
	public static void deleteTCGfiles(string type)
	{	
		var dir=new DirectoryInfo(type);
		foreach (FileInfo file in dir.GetFiles())
		{
			if (file.Name.StartsWith("TCG"))
			{
				file.Delete();
				Console.WriteLine(file.Name + " deleted.");
			}
		}
	}
}

