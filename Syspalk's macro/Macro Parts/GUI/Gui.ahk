#Include Macro Parts\GUI\Buttons.ahk
menu,tray,icon,Macro Parts\GUI\Images/logo.ico
Gui,Font,s17 Bold
Gui,color,0x2A2F32
global updatecol := "Green"
global infocol := "53ede5"
global startbutton := "F1"
global stopbutton := "F2"
global pausebutton := "F3"


Gui,Add,Picture, x10 y10 gmenubar, Macro Parts\GUI\Images/menu.png
Gui,Add,Text, xp+40 yp-5 gmenubar cwhite, Home

Gui,Add,Groupbox, v1tab1 x0 y-10 w180 h605
Gui,Add,Text, gFarmingbutton v1tab2 x40 yp+50 cf5c88e,Farming
Gui,Add,Picture, gFarmingbutton v1tab3 x5 yp-5, Macro Parts\GUI\Images/honey.png
Gui,Add,Text, gPlanterbutton v1tab4 x40 yp+45 cf5c88e,Planters
Gui,Add,Picture, gPlanterbutton v1tab5 x5 yp-5, Macro Parts\GUI\Images/planter.png
Gui,Add,Text, gResourcesbutton v1tab6 x40 yp+45 cf5c88e,Resources
Gui,Add,Picture, gResourcesbutton v1tab7 x5 yp-5, Macro Parts\GUI\Images/resources.png
Gui,Add,Text, gBuffsbutton v1tab8 x40 yp+45 cf5c88e,Buffs
Gui,Add,Picture, gBuffsbutton v1tab9 x5 yp-5, Macro Parts\GUI\Images/extract.png
Gui,Add,Text, gQuestbutton v1tab10 x40 yp+45 cf5c88e,Quests
Gui,Add,Picture, gQuestbutton v1tab11 x7 yp-5, Macro Parts\GUI\Images/quests.png
Gui,Add,Text, gmemorybutton w120 v1tab12 x40 yp+37 cf5c88e +wrap,Memory - Match
Gui,Add,Picture, gmemorybutton v1tab13 x7 yp+3, Macro Parts\GUI\Images/memory.png
Gui,Add,Text, gpresetbutton v1tab14 x40 yp+65 cf5c88e,Presets
Gui,Add,Picture, gpresetbutton v1tab15 x5 yp+3, Macro Parts\GUI\Images/robopass.png
Gui,Add,Text, gkeybindbutton v1tab16 x40 yp+37 cf5c88e,Keybinds
Gui,Add,Picture, gkeybindbutton v1tab17 x7 yp+3, Macro Parts\GUI\Images/keyboard.png
Gui,Add,Text, gSettingsbutton v1tab18 x40 yp+40 cf5c88e,Settings
Gui,Add,Picture, gSettingsbutton v1tab19 x5 yp-5, Macro Parts\GUI\Images/cog.png
Gui,Font,s12 Bold
Gui,Add,Text, v1tab20 x205 y40 c%updatecol%,Latest Update : 03/24/2023
Gui,Font,s15 Bold
Gui,Add,Text, v1tab21 x225 yp+25 cwhite,New in This version
Gui,Font,s7
FileRead, UpdateText, Macro Parts\GUI\Info/New in this version.txt
Gui,Add,Text, v1tab22 x200 yp+40 w250 h140 cwhite +wrap,%UpdateText%
Gui,Font,s10 Bold
Gui,Add,Button, v1tab23 x270 y250,View More
Gui,Font,s15 Bold
Gui,Add,Text, v1tab24 x285 y280 cwhite,About
Gui,Font,s9
Gui,Add,Text, v1tab25 xp-95 yp+30 w250 cwhite +wrap,The development of this macro started on 04/10/2022,You are allowed to share this macro with other people but you aren't allowed to steal my code and claim it is yours, if you do want to borrow some code you must give proper credits and mention that it was developed by me, The main thing this macro is targeted towards is bee swarm simulator automation specifically for endgame players.`n`nThis macro was almost completely developed by Syspalk, if you do encounter bugs you are able to report them to me on discord [Syspalk#0955] or you can join my discord server and report it there.`n`nLicensed with a GNU LGPL v2.1 license.
Gui,Font,s12 Bold
Gui,Add,Link, v1tab26 xp yp+240,<a href="https://discord.gg/t572FnTqfs">Join Discord</a>
Gui,Add,Link, v1tab27 xp yp+20,<a href="https://github.com/Syspalkius/bssmacro">Goto Github</a>



Gui,Font,s17 Bold
Gui,Add,Text, v2tab1 x340 y10 cgreen,Farming
Gui,Font,s9
Gui,Add,DropDownList, v2tab2 x20 y75 w95 h200 ,%farmfield1%||None|bugrun&polar|Plant 1|Plant 2|Plant 3|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui,Add,DropDownList, v2tab3 xp+100 yp w95 h200 ,%farmfield2%||None|bugrun&polar|Plant 1|Plant 2|Plant 3|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui,Add,DropDownList, v2tab4 xp+100 yp w95 h200 ,%farmfield3%||None|bugrun&polar|Plant 1|Plant 2|Plant 3|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui,Add,DropDownList, v2tab5 xp+100 yp w95 h200 ,%farmfield4%||None|bugrun&polar|Plant 1|Plant 2|Plant 3|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui,Font,s10
Gui,Add,Text, v2tab6 xp+105 yp w10 h17 c%infocol% gfarminfo,?
Gui,Add,Text, v2tab7 x40 y50 cwhite ,Field 1             Field 2             Field 3             Field 4
Gui,Add,DropDownList, v2tab8 x20 y135 w90 h200,%farmpattern%||None|zigzag|squares|zigzag++
Gui,Add,Text, v2tab9 xp+15 yp-20 cwhite,Pattern                               Size
Gui,Add,Slider, v2tab10 xp+115 yp+25 range0-100,%patternsize%
Gui,Add,Text, v2tab11 xp+155 yp w10 h17 c%infocol% gpatterninfo,?
Gui,Add,DropDownlist, v2tab12 yp+35 x20 w70 h200,%convsetting%||None|Reset|Rejoin
Gui,Add,Text, v2tab13 xp+75 yp+5 cwhite,Conversion type
Gui,Add,Text, v2tab14 xp+120 yp w10 h17 c%infocol% gconvertinfo,?
Gui,Add,Edit,  v2tab15 x20 yp+30 number w40
Gui,Add,UpDown, v2tab16 Range0-60,%maxtimeonfield%
Gui,Add,Text, v2tab17 xp+45  yp+5 cwhite, max time on field (minutes)
Gui,Add,Text, v2tab18 xp+195 yp w10 h17 c%infocol% gmaxtimeinfo,?
Gui,Add,Checkbox, v2tab19 x20 yp+30 %swingtool% cWhite,Swing tool while farming
Gui,Add,CheckBox, v2tab20 x20 yp+25 cwhite %sprinkleralign%,Move to sprinkler
Gui,Add,Text, v2tab21 xp+145 yp w10 h17 c%infocol% gsprinklerinfo,?
Gui,Add,Checkbox, v2tab22 x20 yp+25 cwhite %pinewalkconv%,Pinetree walk convert
Gui,Add,Text, v2tab23 xp+175 yp w10 h17 c%infocol% gwalkpineinfo,?
Gui,Add,Checkbox, v2tab24 x20 yp+25 cwhite %waitforpop%,Don't exit the field when pop star is active
Gui,Add,Checkbox, v2tab25 x20 yp+25 cwhite %shiftlock%,Farm with shiftlock
Gui,Font,s13
Gui,Add,GroupBox, v2tab26 x20 yp+30 w200 h130 cwhite,Shrine
Gui,Font,s10
Gui,Add,Checkbox, v2tab27 x25 yp+25 cwhite %shrine%,Donate to the windshrine
Gui,Add,Edit, v2tab28 number x25 yp+30 w50
Gui,Add,UpDown, v2tab29 Range1-100,%donationamount%
Gui,Add,Text, v2tab30 xp+60 yp cwhite,Amount of items
Gui,Add,Text, v2tab31 x130 yp+40 cwhite,Item
Gui,Add,DropDownlist,v2tab32 w100 h200 x25 yp,%donationitem%||None|Bitter|BlueBerry|BlueExt|Coconut|Enz|Glit|Glue|Gumdrop|Honeysuck|Oil|Pineap|RedExt|Straw|SunSeed|Ticket|Treat|Trop
Gui,Font,s13
Gui,Add,Groupbox, v2tab33 x240 yp-95 w200 h95 cwhite,Boosters
Gui,Font,s10
Gui,Add,Text, v2tab34 xp+180 yp+20 w10 h17 c%infocol% gboosterinfo,?
Gui,Add,Checkbox, v2tab35 x250 yp+5 cwhite %bluebooster%,Blue Booster
Gui,Add,Checkbox, v2tab36 x250 yp+25 cwhite %redbooster%,Red Booster
Gui,Add,Checkbox, v2tab37 x250 yp+25 cwhite %whitebooster%,White Booster
Gui,Add,Groupbox, v2tab38 x240 yp+10 w200 h40 cwhite,
Gui,Add,Checkbox, v2tab39 x250 yp+15 cwhite %reglitter%,Reglitter pinetree
Gui,Add,Text, v2tab40 xp+170 yp w10 h17 c%infocol% greglitterinfo,?
Gui,Font,S12
Starttext := "Start [" . startbutton . "]"
StopText := "Stop [" . stopbutton . "]"
PauseText := "Pause [" . pausebutton . "]"
Gui,Add,Text, v2tab41 x20 y570 c53ede5,%Starttext%
Gui,Add,Text, v2tab42 x180 y570 c53ede5,%StopText%
Gui,Add,Text, v2tab43 x340 y570 c53ede5,%PauseText%



Gui,Font,s17 Bold
Gui,Add,Text, v3tab1 x340 y10 cgreen,Planters
Gui,Font,s13
Gui,Add,Groupbox, v3tab2 x10 y50 w435 h215 cwhite,Cycle
Gui,Font,s8
Gui,Add,Text, v3tab3 x15 y80 cwhite,Fields`n`nPlanter`n`n`nFields`n`nPlanter`n`n`nFields`n`nPlanter
Gui,Add,DropDownList, x65 y80 w80 h200 v3tab4,%plantfield1%||None|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
xposition := 65
yposition := 80
checkline2 := true
checkline3 := true
loop 11{
	indexp1 := A_Index+1
	plantfield := plantfield%indexp1%
	fieldnumber := A_Index+4
	xposition := xposition+90
	if(A_Index > 3 && checkline2){
		xposition := 65
		yposition := 144
		checkline2 := false
	}
	if(A_Index > 7 && checkline3){
		xposition := 65
		yposition := 206
		checkline3 := false
	}
	Gui,Add,DropDownList, x%xposition% y%yposition% w80 h200 v3tab%fieldnumber%,%plantfield%||None|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
}
Gui,Add,DropDownList, x65 y105 w80 h200 v3tab16,%planter1%||1|2|3|4|5|6|7
xposition := 65
yposition := 105
checkline2 := true
checkline3 := true
loop 11{
	indexp1 := A_Index+1
	planter := planter%indexp1%
	planternumber := A_Index+16
	xposition := xposition+90
	if(A_Index > 3 && checkline2){
		xposition := 65
		yposition := 170
		checkline2 := false
	}
	if(A_Index > 7 && checkline3){
		xposition := 65
		yposition := 232
		checkline3 := false
	}
	Gui,Add,DropDownList, x%xposition% y%yposition% w80 h200 v3tab%planternumber%,%planter%||1|2|3|4|5|6|7
}
Gui,Font,s13
Gui,Add,GroupBox, v3tab28 x10 yp+40 w260 h140 cwhite,Plant Looting
Gui,Font,s8
Gui,Add,CheckBox, v3tab29 xp+10 yp+35 cwhite %lootplanters%, loot planters
Gui,Add,CheckBox, v3tab30 xp yp+35 cwhite %harviffull1%, harvest plant 1 when fully grown
Gui,Add,CheckBox, v3tab31 xp yp+20 cwhite %harviffull2%, harvest plant 2 when fully grown
Gui,Add,CheckBox, v3tab32 xp yp+20 cwhite %harviffull3%, harvest plant 3 when fully grown
Gui,Font,s13
Gui,Add,GroupBox, v3tab33 x10 yp+40 w200 h130 cwhite,Planter Timers
Gui,Font,s8
gui,Add,Text,v3tab34 xp+70 yp+20 cwhite,harvest time
Gui,Add,Text,v3tab35 xp-60 yp+23 cwhite, plant 1
Gui,Add,DropDownList,v3tab36 xp+50 yp-5 w90 h140,%plantdelay1%||30 min|1 hour|2 hours|4 hours
Gui,Add,Text,v3tab37 xp-50 yp+30 cwhite, plant 2
Gui,Add,DropDownList,v3tab38 xp+50 yp-5 w90 h140,%plantdelay2%||30 min|1 hour|2 hours|4 hours
Gui,Add,Text,v3tab39 xp-50 yp+30 cwhite, plant 3
Gui,Add,DropDownList,v3tab40 xp+50 yp-5 w90 h140,%plantdelay3%||30 min|1 hour|2 hours|4 hours
Gui,Add,Button, v3tab41 x10 yp+50,Reset Settings
Gui,Add,Button, v3tab42 xp+130 yp,Reset Cycle Data
Gui,Font,s10
Gui,Add,Text, v3tab43 x430 y68 w10 h17 c%infocol% gcycleinfo,?
Gui,Add,Text, v3tab44 x195 y440 w10 h17 c%infocol% gharvtimeinfo,?
Gui,Add,Text, v3tab45 x110 y560 w10 h17 c%infocol% gresetsettingsinfo,?
Gui,Add,Text, v3tab46 x255 y560 w10 h17 c%infocol% gresetcycleinfo,?


Gui,Font,s17 Bold
Gui,Add,Text, v4tab1 x320 y10 cgreen,Resources
Gui,Font,s13
Gui,Add,Groupbox, v4tab2 x20 y40 w230 h125 cwhite,Dispensers
Gui,Font,s10
gui,Add,Checkbox, v4tab3 x30 yp+20 cwhite %clock%,Use wealthclock
gui,Add,Checkbox, v4tab4 x30 yp+20 cwhite %gluedisp%,Use glue dispenser
gui,Add,Checkbox, v4tab5 x30 yp+20 cwhite %strawdisp%,Use Strawberry dispenser
gui,Add,Checkbox, v4tab6 x30 yp+20 cwhite %bluebdisp%,Use blueberry dispenser
gui,Add,Checkbox, v4tab7 x30 yp+20 cwhite %cocodisp%,Use coconut dispenser
Gui,Font,s13
Gui,Add,Groupbox, v4tab8 x20 yp+35 w300 h90 cwhite,Ant challenge
Gui,Font,s10
Gui,Add,Checkbox, v4tab9 xp+5 yp+20 cwhite %ant%, claim free ant pass
Gui,Add,Checkbox, v4tab10 xp yp+20 cwhite %freeant%, use free pass to play ant
Gui,Add,Checkbox, v4tab11 xp yp+20 cwhite %buyant%, buy and use ant pass every
Gui,Add,DropDownlist, v4tab12 xp+215 yp w60 h200 ,%playtimer%||30 min|1 hour|2 hours|4 hours
Gui,Font,s13
Gui,Add,Groupbox, v4tab13 x20 yp+35 w300 h75 cwhite,kill vicious
Gui,Font,s10
Gui,Add,Checkbox, v4tab14 xp+10 yp+25 cwhite %vicious%,kill vicious bee when night is detected
Gui,Add,Text, v4tab15 x85 yp+25 cwhite,maximum combat time [Seconds]
Gui,Add,Edit, v4tab16 number x30 yp-2 w50,%maxcombattime%
Gui,Font,s13
Gui,Add,Groupbox, v4tab17 x20 yp+35 w180 h185 cwhite,Mobs
Gui,Font,s10
Gui,Add,Checkbox, v4tab18 x30 yp+20 cwhite %lady%,Kill ladybugs
Gui,Add,Checkbox, v4tab19 x30 yp+20 cwhite %rhino%,Kill rhino beetles
Gui,Add,Checkbox, v4tab20 x30 yp+20 cwhite %spider%,Kill spider
Gui,Add,Checkbox, v4tab21 x30 yp+20 cwhite %scorpion%,Kill scorpions
Gui,Add,Checkbox, v4tab22 x30 yp+20 cwhite %mantis%,Kill mantises
Gui,Add,Checkbox, v4tab23 x30 yp+20 cwhite %wolf%,Kill werewolf
gui,Add,Checkbox, v4tab24 x30 yp+20 cwhite %tunnel%,Kill tunnelbear
gui,Add,Checkbox, v4tab25 x30 yp+20 cwhite %kingbeetle%,Kill kingbeetle
Gui,Add,Text, v4tab26 x115 yp+45 cwhite,mondo kill type
Gui,Add,DropDownlist, v4tab27 x20 yp-2  w90 h200,%mondo%||No Kill|Blessing|Loot
Gui,Add,Text, v4tab28 x230 y60 w10 h17 c%infocol% gdispenserinfo,?
Gui,Add,Text, v4tab29 x180 y370 w10 h17 c%infocol% gmobinfo,?



Gui,Font,s17 Bold
Gui,Add,Text, v5tab1 x380 y10 cgreen,Buffs
Gui,Font,s10
Gui,Add,Text, v5tab2 x155 y40 cwhite, [Seconds]
loop 6{
	checkboxnum := A_Index+2
	checkboxtext := A_Index+1
	data := buff%checkboxtext%
	time := buff%checkboxtext%time
	editnum := checkboxnum+6
	Gui,Add,Checkbox, v5tab%checkboxnum% x20 yp+30 cwhite %data%,hotbar slot %checkboxtext%
	Gui,Add,Edit, v5tab%editnum% number xp+120 yp-5 w100 ,%time%
}



Gui,Font,s17 Bold
Gui,Add,Text, v6tab1 x360 y10 cgreen,Quests
Gui,Font,s10
Gui,Add,Picture, v6tab2 x10 y200,Macro Parts\GUI\Images/comingsoon.png



Gui,Font,s17 Bold
Gui,Add,Text, v7tab1 x270 y10 cgreen,Memory match
Gui,Font,s10
Gui,Add,Picture, v7tab2 x10 y200,Macro Parts\GUI\Images/comingsoon.png



Gui,Font,s17 Bold
Gui,Add,Text, v8tab1 x350 y10 cgreen,Presets
Gui,Font,s15
Gui,Add,Picture, v8tab2 x10 y50,Macro Parts\GUI\Images/nectar.png
Gui,Add,Text, v8tab3 xp+30 y53 c53ede5,Load blue 5 nectar preset
Gui,Add,Picture, v8tab4 xp yp+30,Macro Parts\GUI\Images/blue5nect.png
Gui,Add,Picture, v8tab5 x7 yp+55,Macro Parts\GUI\Images/honey.png
Gui,Add,Text, v8tab6 xp+34 yp+5 c53ede5,Load Ideal blue honeymaker preset
Gui,Add,Picture, v8tab7 x10 yp+55,Macro Parts\GUI\Images/gumdrop.png
Gui,Add,Text, v8tab8 xp+33 yp+2 c53ede5,Load gumdrop farmer
Gui,Add,Picture, v8tab9 x10 yp+55,Macro Parts\GUI\Images/jb.png
Gui,Add,Text, v8tab10 xp+33 yp+2 c53ede5,Load Jelly bean/Stinger farmer
Gui,Add,Picture, v8tab11 xp yp+30,Macro Parts\GUI\Images/stingfarmer.png
Gui,Add,Picture, v8tab12 x10 yp+55,Macro Parts\GUI\Images/strawberry.png
Gui,Add,Text, v8tab13 xp+33 yp+2 c53ede5,Load full fruit farmer
Gui,Add,Picture, v8tab14 x10 yp+55,Macro Parts\GUI\Images/ticket.png
Gui,Add,Text, v8tab15 xp+33 yp-3 c53ede5,Load ticket farmer
Gui,Font,s10
Gui,Add,Text, v8tab16 x335 y17 w10 h17 c%infocol% gpresetinfo,?



Gui,Font,s17 Bold
Gui,Add,Text, v9tab1 x330 y10 cgreen,Keybinds
Gui,Font,s13
Gui,Add,Groupbox, v9tab2 x20 yp+40 w220 h220 cwhite,Movement
Gui,Font,s10
Gui,Add,Edit, v9tab3 x30 yp+20 h20 w17 limit1,%forward%
Gui,Add,Text, v9tab4 xp+20 yp+3 cwhite,Walk forwards
Gui,Add,Edit, v9tab5 x30 yp+30 h20 w17 limit1,%left%
Gui,Add,Text, v9tab6 xp+20 yp+3 cwhite,Walk to the left
Gui,Add,Edit, v9tab7 x30 yp+30 h20 w17 limit1,%backwards%
Gui,Add,Text, v9tab8 xp+20 yp+3 cwhite,Walk backwards
Gui,Add,Edit, v9tab9 x30 yp+30 h20 w17 limit1,%right%
Gui,Add,Text, v9tab10 xp+20 yp+3 cwhite,Walk to the right
Gui,Add,Edit, v9tab11 x30 yp+30 h20 w17 limit1,%camleft%
Gui,Add,Text, v9tab12 xp+20 yp+3 cwhite,Rotate camera to the left
Gui,Add,Edit, v9tab13 x30 yp+30 h20 w17 limit1,%camright%
Gui,Add,Text, v9tab14 xp+20 yp+3 cwhite,Rotate camera to the right
Gui,Font,s13
Gui,Add,Groupbox, v9tab15 x20 yp+40 w150 h250 cwhite,Hotbar
Gui,Font,s10
Gui,Add,Edit, v9tab16 x30 yp+20 h20 w17 limit1,%hotbar1%
Gui,Add,Text, v9tab17 xp+20 yp+3 cwhite,Hotbar slot 1
Gui,Add,Edit, v9tab18 x30 yp+30 h20 w17 limit1,%hotbar2%
Gui,Add,Text, v9tab19 xp+20 yp+3 cwhite,Hotbar slot 2
Gui,Add,Edit, v9tab20 x30 yp+30 h20 w17 limit1,%hotbar3%
Gui,Add,Text, v9tab21 xp+20 yp+3 cwhite,Hotbar slot 3
Gui,Add,Edit, v9tab22 x30 yp+30 h20 w17 limit1,%hotbar4%
Gui,Add,Text, v9tab23 xp+20 yp+3 cwhite,Hotbar slot 4
Gui,Add,Edit, v9tab24 x30 yp+30 h20 w17 limit1,%hotbar5%
Gui,Add,Text, v9tab25 xp+20 yp+3 cwhite,Hotbar slot 5
Gui,Add,Edit, v9tab26 x30 yp+30 h20 w17 limit1,%hotbar6%
Gui,Add,Text, v9tab27 xp+20 yp+3 cwhite,Hotbar slot 6
Gui,Add,Edit, v9tab28 x30 yp+30 h20 w17 limit1,%hotbar7%
Gui,Add,Text, v9tab29 xp+20 yp+3 cwhite,Hotbar slot 7
Gui,Font,s13
Gui,Add,Groupbox, v9tab30 x180 y278 w100 h120 cwhite,Macro
Gui,Font,s10
Gui,Add,Edit, v9tab31 x190 yp+20 h20 w27 limit2,%Startkey%
Gui,Add,Text, v9tab32 xp+30 yp+3 cwhite,Start
Gui,Add,Edit, v9tab33 x190 yp+30 h20 w27 limit2,%Stopkey%
Gui,Add,Text, v9tab34 xp+30 yp+3 cwhite,Stop
Gui,Add,Edit, v9tab35 x190 yp+30 h20 w27 limit2,%Pausekey%
Gui,Add,Text, v9tab36 xp+30 yp+3 cwhite,Pause



Gui,Font,s17 Bold
Gui,Add,Text, v10tab1 x350 y10 cgreen,Settings
Gui,Font,s10
Gui,Add,Text, v10tab2 x75 y50 cWhite,character speed
Gui,Add,Edit, v10tab3 x20 yp number w50
Gui,Add,UpDown, v10tab4 Range10-50, %speed%
Gui,Font,s13
Gui,Add,Groupbox, v10tab5 x20 yp+35 w390 h140 cwhite,Webhooks
Gui,Font,s10
Gui,Add,Text, v10tab6 x210 yp+35 cwhite,Events webhook
Gui,Add,Edit, v10tab7 w175 h20 x30 yp, %hookevent%
Gui,Add,Text, v10tab8 x210 yp+35 cwhite,Errors webhook
Gui,Add,Edit, v10tab9 w175 h20 x30 yp, %hookerror%
Gui,Add,Text, v10tab10 x210 yp+35 cwhite,Balloon warnings webhook
Gui,Add,Edit, v10tab11 w175 h20 x30 yp, %hookballoon%
Gui,Font,s13
Gui,Add,Groupbox, v10tab12 x20 yp+50 w250 h130 cwhite,Vip Links
Gui,Font,s10
Gui,Add,Text, v10tab13 x160 yp+35 cwhite,main viplink
Gui,Add,Edit, v10tab14 w120 h20 x35 yp-5 , %main%
Gui,Add,Text, v10tab15 x160 yp+35 cwhite,backup viplink
Gui,Add,Edit, v10tab16 w120 h20 x35 yp-5, %alt%
Gui,Add,Checkbox, v10tab17 x30 yp+35 cwhite %joinmain%,Force join main link
Gui,Font,s13
Gui,Add,Groupbox, v10tab18 x20 yp+50 w250 h100 cwhite,Server Rebooter
Gui,Font,s10
Gui,Add,Checkbox, v10tab19 x30 yp+30 cwhite %rebootserver%,Reboot the server
Gui,Add,Edit, v10tab20 x30 yp+30 number w50
Gui,Add,UpDown, v10tab21 Range10-5000, %reboottime%
Gui,Add,Text, v10tab22 yp+2 x85 cwhite,Cooldown [Minutes]
Gui,Font,s12 Bold
Gui,Add,Text, v10tab23 x20 yp+50 c53ede5,Reset Config
Gui,Add,Text, v10tab24 x20 yp+25 c53ede5,Reset Timers
Gui,Font,s10 Bold
Gui,Add,Button,v10tab25 x380 y560,credits


changetab(1)
Gui,show,w450 h600,Syspalk's macro
;------Functions------
popup(SizeX,SizeY,FontSize,Title,Text){
	Textloc := SizeX-20
	Gui, popup:Destroy
	Gui, popup:color,0x2A2F32
	Gui, popup:Font,s%FontSize%,Segoe UI
	Gui, popup:Add,Text, +wrap x10 y5 w%Textloc% cwhite,%Text%
	Gui, popup:Show, w%SizeX% h%SizeY%,%Title%
}

changetab(tab){
	Tooltip,Loading tab...
	var := 0
	loop 11{
		var++
		if not (tab = A_Index){
			loop 46{
				GuiControl,Hide,%var%tab%A_Index%
			}
		}
	}
	
	
	loop 46{
		GuiControl,Show,%tab%tab%A_Index%
	}
	Tooltip,
}