global menubar := 0
Gui,Font,s17 Bold
Gui,color,0x2A2F32
global updatecol := "Green"

Gui,Add,Text, vactivetab x320 y0 w300 cf5c88e,

Gui,Add,Picture, x10 y10 gmenubar, Images/menu.png
Gui,Add,Text, xp+40 yp-5 gmenubar cwhite, Home

Gui,Add,Groupbox, v1tab1 x0 y-10 w180 h605
Gui,Add,Text, gFarmingbutton v1tab2 x40 yp+50 cf5c88e,Farming
Gui,Add,Picture, gFarmingbutton v1tab3 x5 yp-5, Images/honey.png
Gui,Add,Text, gPlanterbutton v1tab4 x40 yp+45 cf5c88e,Planters
Gui,Add,Picture, gPlanterbutton v1tab5 x5 yp-5, Images/planter.png
Gui,Add,Text, gResourcesbutton v1tab6 x40 yp+45 cf5c88e,Resources
Gui,Add,Picture, gResourcesbutton v1tab7 x5 yp-5, Images/resources.png
Gui,Add,Text, gBuffsbutton v1tab8 x40 yp+45 cf5c88e,Buffs
Gui,Add,Picture, gBuffsbutton v1tab9 x5 yp-5, Images/extract.png
Gui,Add,Text, gQuestbutton v1tab10 x40 yp+45 cf5c88e,Quests
Gui,Add,Picture, gQuestbutton v1tab11 x7 yp-5, Images/quests.png
Gui,Add,Text, gkeybindbutton v1tab12 x40 yp+45 cf5c88e,Keybinds
Gui,Add,Picture, gkeybindbutton v1tab13 x7 yp+3, Images/keyboard.png
Gui,Add,Text, gmemorybutton w120 v1tab14 x40 yp+37 cf5c88e +wrap,Memory - Match
Gui,Add,Picture, gmemorybutton v1tab15 x7 yp+3, Images/memory.png
Gui,Add,Text, gpresetbutton v1tab16 x40 yp+65 cf5c88e,Presets
Gui,Add,Picture, gpresetbutton v1tab17 x5 yp+3, Images/robopass.png
Gui,Add,Text, gSettingsbutton v1tab18 x40 yp+37 cf5c88e,Settings
Gui,Add,Picture, gSettingsbutton v1tab19 x5 yp-5, Images/cog.png
Gui,Font,s12 Bold
Gui,Add,Text, v1tab20 x205 y40 c%updatecol%,Latest Update : 03/24/2023
Gui,Font,s15 Bold
Gui,Add,Text, v1tab21 x225 yp+25 cwhite,New in This version
Gui,Font,s9
Gui,Add,Text, v1tab22 x200 yp+40 w250 cwhite,1.
Gui,Add,Text, v1tab23 xp yp+25 w250 cwhite,2.
Gui,Add,Text, v1tab24 xp yp+25 w250 cwhite,3.
Gui,Add,Text, v1tab25 xp yp+25 w250 cwhite,4.
Gui,Add,Text, v1tab26 xp yp+25 w250 cwhite,5.
Gui,Add,Text, v1tab27 xp yp+25 w250 cwhite,6.
Gui,Add,Text, v1tab28 xp yp+25 w250 cwhite,7.
Gui,Font,s15 Bold
Gui,Add,Text, v1tab29 x285 y280 cwhite,About
Gui,Font,s9
Gui,Add,Text, v1tab30 xp-95 yp+30 w250 cwhite +wrap,The development of this macro started on 04/10/2022,You are allowed to share this macro with other people but you aren't allowed to steal my code and claim it is yours, if you do want to borrow some code you must give proper credits and mention that it was developed by me, The main thing this macro is targeted towards is bee swarm simulator automation specifically for endgame players.`n`nThis macro was completely developed by Syspalk, if you do encounter bugs you are able to report them to me on discord [Syspalk#0955] or you can join my discord server and report it there.`n`nLicensed with a GNU LGPL v2.1 license.
Gui,Font,s12 Bold
Gui,Add,Link, v1tab31 xp yp+240,<a href="https://discord.gg/t572FnTqfs">Join Discord</a>
Gui,Add,Link, v1tab32 xp yp+20,<a href="https://github.com/Syspalkius/bssmacro">Goto Github</a>

Gui,Font,s9
Gui,Add,DropDownList, v2tab1 x20 y75 w95 h200 ,%farmfield1%||None|bugrun&polar|Plant 1|Plant 2|Plant 3|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui,Add,DropDownList, v2tab2 xp+100 yp w95 h200 ,%farmfield2%||None|bugrun&polar|Plant 1|Plant 2|Plant 3|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui,Add,DropDownList, v2tab3 xp+100 yp w95 h200 ,%farmfield3%||None|bugrun&polar|Plant 1|Plant 2|Plant 3|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui,Add,DropDownList, v2tab4 xp+100 yp w95 h200 ,%farmfield4%||None|bugrun&polar|Plant 1|Plant 2|Plant 3|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui,Font,s10
Gui,Add,Text, v2tab5 x40 y50 cwhite ,Field 1             Field 2             Field 3             Field 4
Gui,Add,DropDownList, v2tab6 x20 y135 w90 h200,%fieldpatern%||None|zigzag|squares|zigzag++
Gui,Add,Text, v2tab7 xp+15 yp-20 cwhite,Pattern                               Size
Gui,Add,Slider, v2tab8 xp+115 yp+25 range200-800,500
Gui,Add,DropDownlist, v2tab9 yp+35 x20 w70 h200,%convsetting%||None|Reset|Rejoin
Gui,Add,Text, v2tab10 xp+75 yp+5 cwhite,Conversion type
Gui,Add,Edit,  v2tab11 x20 yp+30 number w40
Gui,Add,UpDown, v2tab12 Range1-60, %maxtimespentonfield%
Gui,Add,Text, v2tab13 xp+45  yp+5 cwhite, max time on field (minutes)
Gui,Add,Checkbox, v2tab17 x20 yp+30 %tooldata% cWhite,swing tool while farming
Gui,Add,CheckBox, v2tab18 x20 yp+25 cwhite %sprinkleraligntoggle%,move to sprinkler
Gui,Add,Checkbox, v2tab19 x20 yp+25 cwhite %pineconvdata%,pinetree walk convert
Gui,Add,Checkbox, v2tab20 x20 yp+25 cwhite %shiftlockdata%,farm with shiftlock
Gui,Add,GroupBox, v2tab21 x20 yp+30 w200 h130 cwhite,Shrine
Gui,Add,Checkbox, v2tab22 x25 yp+25 cwhite %shrine%,Donate to the windshrine
Gui,Add,Edit, v2tab23 number x25 yp+30 w50 ,%donationamount%
Gui,Add,UpDown, v2tab24 Range10-50, %haststatus%
Gui,Add,Text, v2tab25 xp+60 yp cwhite,Amount of items
Gui,Add,Text, v2tab26 x130 yp+40 cwhite,Item
Gui,Add,DropDownlist,v2tab27 w100 h200 x25 yp,%itemtodonate%||None|Bitter|BlueBerry|BlueExt|Coconut|Enz|Glit|Glue|Gumdrop|Honeysuck|Oil|Pineap|RedExt|Straw|SunSeed|Ticket|Treat|Trop
Gui,Add,Groupbox, v2tab28 x240 yp-95 w200 h100 cwhite,Boosters
Gui,Add,Checkbox, v2tab29 x250 yp+25 cwhite %bluebooster%,Blue Booster
Gui,Add,Checkbox, v2tab30 x250 yp+25 cwhite %redbooster%,Red Booster
Gui,Add,Checkbox, v2tab31 x250 yp+25 cwhite %whitebooster%,White Booster


gui,Add,Text, v3tab1 x40 y40 cwhite,this is tab3


Gui,Add,Groupbox, v4tab1 x20 y40 w230 h165 cwhite,Dispensers
gui,Add,Checkbox, v4tab2 x30 yp+20 cwhite %clock%,Use wealthclock
gui,Add,Checkbox, v4tab3 x30 yp+20 cwhite %gluedisp%,Use glue dispenser
gui,Add,Checkbox, v4tab4 x30 yp+20 cwhite %strawdisp%,Use Strawberry dispenser
gui,Add,Checkbox, v4tab5 x30 yp+20 cwhite %bluedisp%,Use blueberry dispenser
gui,Add,Checkbox, v4tab6 x30 yp+20 cwhite %cocodisp%,Use coconut dispenser
gui,Add,Checkbox, v4tab7 x30 yp+20 cwhite %killtb%,Kill tunnelbear
gui,Add,Checkbox, v4tab8 x30 yp+20 cwhite %killkb%,Kill kingbeetle
Gui,Add,Groupbox, v4tab9 x20 yp+35 w300 h90 cwhite,Ant challange
Gui,Add,Checkbox, v4tab10 xp+5 yp+20 cwhite %antsetting%, claim free ant pass
Gui,Add,Checkbox, v4tab11 xp yp+20 cwhite %antcheck%, use free pass to play ant
Gui,Add,Checkbox, v4tab12 xp yp+20 cwhite %buyplayant%, buy and use ant pass every
Gui,Add,DropDownlist, v4tab13 xp+215 yp w60 h200 ,%whenplayantdata%||30 min|1 hour|2 hours|4 hours
Gui,Add,Groupbox, v4tab14 x20 yp+35 w300 h75 cwhite,kill vicious
Gui,Add,Checkbox, v4tab15 xp+10 yp+25 cwhite %killviccheck%,kill vicious bee when night is detected
Gui,Add,Text, v4tab16 x85 yp+25 cwhite,maximum combat time [Seconds]
Gui,Add,Edit, v4tab17 number x30 yp-2 w50,%fighttimedata%
Gui,Add,Groupbox, v4tab18 x20 yp+35 w180 h145 cwhite,Mobs
Gui,Add,Checkbox, v4tab19 x30 yp+20 cwhite %killlady%,Kill ladybugs
Gui,Add,Checkbox, v4tab20 x30 yp+20 cwhite %killrhino%,Kill rhino beetles
Gui,Add,Checkbox, v4tab21 x30 yp+20 cwhite %killspider%,Kill spider
Gui,Add,Checkbox, v4tab22 x30 yp+20 cwhite %killscorp%,Kill scorpions
Gui,Add,Checkbox, v4tab23 x30 yp+20 cwhite %killmantis%,Kill mantises
Gui,Add,Checkbox, v4tab24 x30 yp+20 cwhite %killwolf%,Kill werewolf
Gui,Add,Text, v4tab25 x115 yp+45 cwhite,mondo kill type
Gui,Add,DropDownlist, v4tab26 x20 yp-2  w90 h200,%mondokilldata%||No Kill|Blessing|Loot

Gui,Add,Text, v5tab1 x155 y40 cwhite, [Seconds]
Gui,Add,Checkbox, v5tab2 x20 yp+30 cwhite ,hotbar slot 2
Gui,Add,Edit, v5tab3 number xp+120 yp-5 w100 ,
Gui,Add,Checkbox, v5tab4 x20 yp+30 cwhite ,hotbar slot 3
Gui,Add,Edit, v5tab5 number xp+120 yp-5 w100 ,
Gui,Add,Checkbox, v5tab6 x20 yp+30 cwhite ,hotbar slot 4
Gui,Add,Edit, v5tab7 number xp+120 yp-5 w100,
Gui,Add,Checkbox, v5tab8 x20 yp+30 cwhite ,hotbar slot 5
Gui,Add,Edit, v5tab9 number xp+120 yp-5 w100,
Gui,Add,Checkbox, v5tab10 x20 yp+30 cwhite ,hotbar slot 6
Gui,Add,Edit, v5tab11 number xp+120 yp-5 w100,
Gui,Add,Checkbox, v5tab12 x20 yp+30 cwhite ,hotbar slot 7
Gui,Add,Edit, v5tab13 number xp+120 yp-5 w100,

Gui,Add,Text, v10tab1 x75 y50 cWhite,character speed
Gui,Add,Edit, v10tab2 x20 yp number w50
Gui,Add,UpDown, v10tab3 Range10-50, %haststatus%
Gui,Add,Groupbox, v10tab4 x20 yp+35 w390 h140 cwhite,Webhooks
Gui,Add,Text, v10tab5 x210 yp+35 cwhite,Events webhook
Gui,Add,Edit, v10tab6 w175 h20 x30 yp, %hookevent%
Gui,Add,Text, v10tab7 x210 yp+35 cwhite,Errors webhook
Gui,Add,Edit, v10tab8 w175 h20 x30 yp, %hookerror%
Gui,Add,Text, v10tab9 x210 yp+35 cwhite,Balloon warnings webhook
Gui,Add,Edit, v10tab10 w175 h20 x30 yp, %hookballoon%
Gui,Add,Groupbox, v10tab11 x20 yp+50 w250 h130 cwhite,Vip Links
Gui,Add,Text, v10tab12 x160 yp+35 cwhite,main viplink
Gui,Add,Edit, v10tab13 w120 h20 x35 yp-5 ,%plink1%
Gui,Add,Text, v10tab14 x160 yp+35 cwhite,backup viplink
Gui,Add,Edit, v10tab15 w120 h20 x35 yp-5, %plink2%
Gui,Add,Checkbox, v10tab16 x30 yp+35 cwhite %serverdata%,Force join main link
Gui,Add,Groupbox, v10tab17 x20 yp+50 w250 h100 cwhite,Server Rebooter
Gui,Add,Checkbox, v10tab18 x30 yp+30 cwhite %resetserverdata%,Reboot the server
Gui,Add,Edit, v10tab19 x30 yp+30 number w50
Gui,Add,UpDown, v10tab20 Range10-5000, %servreboottime%
Gui,Add,Text, v10tab21 yp+2 x85 cwhite,Cooldown [Minutes]
Gui,Font,s12 Bold
Gui,Add,Text, v10tab22 x20 yp+50 c53ede5,Reset Config
Gui,Add,Text, v10tab23 x20 yp+25 c53ede5,Reset Timers


changetab(1)
Gui,show,w450 h600,Syspalk's macro

changetab(tab){
	var := 0
	loop 10{
		var++
		if not (tab = A_Index){
			loop 40{
				GuiControl,Hide,%var%tab%A_Index%
			}
		}
	}
	
	
	loop 40{
		GuiControl,Show,%tab%tab%A_Index%
	}
}

;------Buttons------
menubar(){
	changetab(1)
	GuiControl,,activetab,
}

Farmingbutton(){
	changetab(2)
	GuiControl,,activetab,Farming
}

Planterbutton(){
	changetab(3)
	GuiControl,,activetab,Planters
}

Resourcesbutton(){
	changetab(4)
	GuiControl,,activetab,Resources
}

Buffsbutton(){
	changetab(5)
	GuiControl,,activetab,Buffs
}

Questbutton(){
	changetab(6)
	GuiControl,,activetab,Quests
}

keybindbutton(){
	changetab(7)
	GuiControl,,activetab,Keybinds
}

memorybutton(){
	changetab(8)
	GuiControl,,activetab,Memory Match
}

presetbutton(){
	changetab(9)
	GuiControl,,activetab,Presets
}

Settingsbutton(){
	changetab(10)
	GuiControl,,activetab,Settings
}