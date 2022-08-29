require 'Vehicles/ISUI/TSL_ISCarMechanicsOverlay'

ISCarMechanicsOverlay.CarList["Base.ATA_Luton"] = {imgPrefix = "ata_luton_", x=10,y=0};

ISCarMechanicsOverlay.PartList["EngineDoor"].vehicles["ata_luton_"] = {x=92,y=139,x2=204,y2=186};
ISCarMechanicsOverlay.PartList["Windshield"].vehicles["ata_luton_"] = {x=92,y=187,x2=204,y2=228};
ISCarMechanicsOverlay.PartList["Muffler"].vehicles["ata_luton_"] = {x=228,y=523,x2=264,y2=593};

ISCarMechanicsOverlay.PartList["BrakeFrontLeft"].vehicles["ata_luton_"] = {x=22,y=216-14,x2=53,y2=244-14};
ISCarMechanicsOverlay.PartList["BrakeFrontRight"].vehicles["ata_luton_"] = {x=232,y=216-14,x2=263,y2=244-14};
ISCarMechanicsOverlay.PartList["BrakeRearLeft"].vehicles["ata_luton_"] = {x=22,y=405+73,x2=53,y2=433+73};
ISCarMechanicsOverlay.PartList["BrakeRearRight"].vehicles["ata_luton_"] = {x=232,y=405+73,x2=263,y2=433+73};

ISCarMechanicsOverlay.PartList["SuspensionFrontLeft"].vehicles["ata_luton_"] = {x=21,y=181-14,x2=59,y2=212-14};
ISCarMechanicsOverlay.PartList["SuspensionFrontRight"].vehicles["ata_luton_"] = {x=228,y=181-14,x2=264,y2=212-14};
ISCarMechanicsOverlay.PartList["SuspensionRearLeft"].vehicles["ata_luton_"] = {x=21,y=368+73,x2=59,y2=399+73};
ISCarMechanicsOverlay.PartList["SuspensionRearRight"].vehicles["ata_luton_"] = {x=231,y=368+73,x2=264,y2=399+73};

ISCarMechanicsOverlay.PartList["TireFrontLeft"].vehicles["ata_luton_"] = {x=72+10,y=184,x2=78+10,y2=242};
ISCarMechanicsOverlay.PartList["TireFrontRight"].vehicles["ata_luton_"] = {x=200+10,y=184,x2=206+10,y2=242};
ISCarMechanicsOverlay.PartList["TireRearLeft"].vehicles["ata_luton_"] = {x=62+10,y=451,x2=62+15,y2=500};
ISCarMechanicsOverlay.PartList["TireRearRight"].vehicles["ata_luton_"] = {x=208+10,y=451,x2=208+15,y2=500};

ISCarMechanicsOverlay.PartList["GasTank"].vehicles["ata_luton_"] = {x=15,y=263,x2=71,y2=350};
ISCarMechanicsOverlay.PartList["TruckBed"].vehicles["ata_luton_"] = {x=69,y=230,x2=208,y2=570};