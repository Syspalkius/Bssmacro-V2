;------Buttons------
menubar(){
	changetab(1)
}

Farmingbutton(){
	changetab(2)
}

Planterbutton(){
	changetab(3)
}

Resourcesbutton(){
	changetab(4)
}

Buffsbutton(){
	changetab(5)
}

Questbutton(){
	changetab(6)
}

memorybutton(){
	changetab(7)
}

presetbutton(){
	changetab(8)
}

keybindbutton(){
	changetab(9)
}

Settingsbutton(){
	changetab(10)
}

Buttonviewmore(){
	FileRead, UpdateText, Macro Parts\GUI\Info/New in this version.txt
	popup(500,500,10,"New in this version",UpdateText)
}

Buttoncredits(){
	FileRead, CreditText, Macro Parts\GUI\Info/Credits.txt
	popup(200,300,12,"Credits",CreditText)
}

;------Info buttons------

farminfo(){
	FileRead, FarmingText, Macro Parts\GUI\Info/farminginfo.txt
	popup(400,300,12,"Farming info",FarmingText)
}

patterninfo(){
	FileRead, PatternText, Macro Parts\GUI\Info/patterninfo.txt
	popup(400,300,12,"Pattern info",PatternText)
}

convertinfo(){
	FileRead, ConvertText, Macro Parts\GUI\Info/convertinfo.txt
	popup(400,300,12,"Convert info",ConvertText)
}

maxtimeinfo(){
	FileRead, MaxText, Macro Parts\GUI\Info/Maxfieldinfo.txt
	popup(400,300,12,"Max time on field info",MaxText)
}

sprinklerinfo(){
	FileRead, SprinklerText, Macro Parts\GUI\Info/sprinklerinfo.txt
	popup(400,300,12,"Move to sprinkler info",SprinklerText)
}

walkpineinfo(){
	FileRead, WalkpineText, Macro Parts\GUI\Info/walkpineinfo.txt
	popup(400,300,12,"Pinetree walk convert info",WalkpineText)
}

boosterinfo(){
	FileRead, BoosterText, Macro Parts\GUI\Info/boosterinfo.txt
	popup(400,300,12,"Booster info",BoosterText)
}

reglitterinfo(){
	FileRead, ReglitterText, Macro Parts\GUI\Info/reglitterinfo.txt
	popup(400,300,12,"Reglitter info",ReglitterText)
}

cycleinfo(){
	FileRead, CycleText, Macro Parts\GUI\Info/plantcycleinfo.txt
	popup(400,300,12,"Cycle info",CycleText)
}

harvtimeinfo(){
	FileRead, HarvText, Macro Parts\GUI\Info/harvtimeinfo.txt
	popup(400,300,12,"Cycle info",HarvText)
}

dispenserinfo(){
	FileRead, DispText, Macro Parts\GUI\Info/dispenserinfo.txt
	popup(400,300,12,"Cycle info",DispText)
}

mobinfo(){
	FileRead, MobText, Macro Parts\GUI\Info/mobinfo.txt
	popup(400,300,12,"Cycle info",MobText)
}

presetinfo(){
	FileRead, PresetText, Macro Parts\GUI\Info/presetinfo.txt
	popup(400,300,12,"Cycle info",PresetText)
}