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
	FileRead, UpdateText, Macro Parts\GUI\New in this version.txt
	popup(500,285,10,"New in this version",UpdateText)
}
Buttoncredits(){
	FileRead, CreditText, Macro Parts\GUI\Info/Credits.txt
	popup(200,140,12,"Credits",CreditText)
}
ButtonApplyChanges(){
	savedata()
	reload
}
ButtonSendTestMessage(){
	Eventlog("Test Message")
	Errorlog("Test Message")
}

;------Info buttons------
farminfo(){
	FileRead, Text, Macro Parts\GUI\Info/farminginfo.txt
	popup(400,210,12,"Farming info",Text)
}
patterninfo(){
	FileRead, Text, Macro Parts\GUI\Info/patterninfo.txt
	popup(400,170,12,"Pattern info",Text)
}
maxtimeinfo(){
	FileRead, Text, Macro Parts\GUI\Info/Maxfieldinfo.txt
	popup(400,100,12,"Max time on field info",Text)
}
sprinklerinfo(){
	FileRead, Text, Macro Parts\GUI\Info/sprinklerinfo.txt
	popup(400,200,12,"Move to sprinkler info",Text)
}
walkpineinfo(){
	FileRead, Text, Macro Parts\GUI\Info/walkpineinfo.txt
	popup(400,180,12,"Pinetree walk convert info",Text)
}
centralinfo(){
	FileRead, Text, Macro Parts\GUI\Info/centralinfo.txt
	popup(400,160,12,"Pinetree central farming info",Text)
}
boosterinfo(){
	FileRead, Text, Macro Parts\GUI\Info/boosterinfo.txt
	popup(400,120,12,"Booster info",Text)
}
reglitterinfo(){
	FileRead, Text, Macro Parts\GUI\Info/reglitterinfo.txt
	popup(400,120,12,"Reglitter info",Text)
}
cycleinfo(){
	FileRead, Text, Macro Parts\GUI\Info/plantcycleinfo.txt
	popup(400,270,12,"Cycle info",Text)
}
harvtimeinfo(){
	FileRead, Text, Macro Parts\GUI\Info/harvtimeinfo.txt
	popup(400,180,12,"Harvest time info",Text)
}
resetsettingsinfo(){
	FileRead, Text, Macro Parts\GUI\Info/resetsettingsinfo.txt
	popup(400,75,12,"Reset plant settings info",Text)
}
resetcycleinfo(){
	FileRead, Text, Macro Parts\GUI\Info/resetcycleinfo.txt
	popup(400,75,12,"Reset cycle info",Text)
}
dispenserinfo(){
	FileRead, Text, Macro Parts\GUI\Info/dispenserinfo.txt
	popup(400,35,12,"Dispenser info",Text)
}
mobinfo(){
	FileRead, Text, Macro Parts\GUI\Info/mobinfo.txt
	popup(400,55,12,"Mob info",Text)
}
presetinfo(){
	FileRead, Text, Macro Parts\GUI\Info/presetinfo.txt
	popup(400,160,12,"Preset info",Text)
}
movespeedinfo(){
	FileRead, Text, Macro Parts\GUI\Info/movespeedinfo.txt
	popup(400,140,12,"Movespeed info",Text)
}
hookeventinfo(){
	FileRead, Text, Macro Parts\GUI\Info/hookeventinfo.txt
	popup(400,35,12,"Event webhook info",Text)
}
hookerrorinfo(){
	FileRead, Text, Macro Parts\GUI\Info/hookerrorinfo.txt
	popup(400,35,12,"Error webhook info",Text)
}
testmsginfo(){
	FileRead, Text, Macro Parts\GUI\Info/testmsginfo.txt
	popup(400,120,12,"Test message info",Text)
}

;------Macro buttons------

startmacrokeys(){
	IniRead,Startkey,%datapath%,keybinds,Startkey
	IniRead,Stopkey,%datapath%,keybinds,Stopkey
	IniRead,Pausekey,%datapath%,keybinds,Pausekey
	Hotkey,%Startkey%,start
	Hotkey,%Stopkey%,stop
	Hotkey,%Pausekey%,Pause
	
}

if (0){ ;in order to make sure it doesn't get stuck here when doing #Include
	stop:
	walkhold("f","Up")
	walkhold("l","Up")
	walkhold("b","Up")
	walkhold("r","Up")
	Send {Space Up}
	savedata()
	reload
	return
	pause:
	pause
	return
}