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
Gui,Add,Picture, gQuestbutton v1tab11 x7 yp+3, Images/quests.png
Gui,Add,Text, gSettingsbutton v1tab12 x40 yp+37 cf5c88e,Settings
Gui,Add,Picture, gSettingsbutton v1tab13 x5 yp-5, Images/cog.png
Gui,Font,s12 Bold
Gui,Add,Text, v1tab14 x205 y40 c%updatecol%,Latest Update : 03/24/2023
Gui,Font,s15 Bold
Gui,Add,Text, v1tab15 x225 yp+25 cwhite,New in This version
Gui,Font,s9
Gui,Add,Text, v1tab16 x200 yp+40 w250 cwhite,1.
Gui,Add,Text, v1tab17 xp yp+25 w250 cwhite,2.
Gui,Add,Text, v1tab18 xp yp+25 w250 cwhite,3.
Gui,Add,Text, v1tab19 xp yp+25 w250 cwhite,4.
Gui,Add,Text, v1tab20 xp yp+25 w250 cwhite,5.
Gui,Add,Text, v1tab21 xp yp+25 w250 cwhite,6.
Gui,Add,Text, v1tab22 xp yp+25 w250 cwhite,7.
Gui,Font,s15 Bold
Gui,Add,Text, v1tab23 x285 y280 cwhite,About
Gui,Font,s9
Gui,Add,Text, v1tab24 xp-95 yp+30 w250 cwhite +wrap,The development of this macro started on 04/10/2022,You are allowed to share this macro with other people but you aren't allowed to steal my code and claim it is yours, if you do want to borrow some code you must give proper credits and mention that it was developed by me, The main thing this macro is targeted towards is bee swarm simulator automation specifically for endgame players.`n`nThis macro was completely developed by Syspalk, if you do encounter bugs you are able to report them to me on discord [Syspalk#0955] or you can join my discord server and report it there.`n`nLicensed with a GNU LGPL v2.1 license.
Gui,Font,s12
Gui,Add,Text, gJoindiscord v1tab25 xp yp+240 cblue,Join Discord
Gui,Add,Text, ggotogithub v1tab26 xp yp+20 cblue,Goto Github

Gui,Font,s9
Gui,Add,DropDownList, v2tab1 x20 y75 w95 h200 ,%farmfield1%||None|bugrun&polar|Plant 1|Plant 2|Plant 3|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui,Add,DropDownList, v2tab2 xp+100 yp w95 h200 ,%farmfield2%||None|bugrun&polar|Plant 1|Plant 2|Plant 3|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui,Add,DropDownList, v2tab3 xp+100 yp w95 h200 ,%farmfield3%||None|bugrun&polar|Plant 1|Plant 2|Plant 3|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui,Add,DropDownList, v2tab4 xp+100 yp w95 h200 ,%farmfield4%||None|bugrun&polar|Plant 1|Plant 2|Plant 3|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui,Font,s10
Gui,Add,Text, v2tab5 x40 y50 cwhite,Field 1             Field 2             Field 3             Field 4
Gui,Add,DropDownList, v2tab6 x20 y135 w90 h200,%fieldpatern%||None|zigzag|squares|zigzag++
Gui,Add,Text, v2tab7 xp+15 yp-20 cwhite,Pattern                               Size
Gui,Add,Slider, v2tab8 xp+115 yp+25 range200-800,500
Gui,Add,DropDownlist, v2tab9 yp+35 x20 w70 h200,%convsetting%||None|Reset|Rejoin
Gui,Add,Text, v2tab10 xp+75 yp+5 cwhite,Conversion type
Gui,Add,Edit,  v2tab11 x20 yp+30 number w40
Gui,Add,UpDown, v2tab12 Range1-60, %maxtimespentonfield%
Gui,Add,Text, v2tab13 xp+45  yp+5 cwhite, max time on field (minutes)
Gui,Add,Text, v2tab14 x75 yp+30 cWhite,character speed
Gui,Add,Edit,  v2tab15 x20 yp number w50
Gui,Add,UpDown, v2tab16 Range10-50, %haststatus%
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



gui,Add,Text, v3tab1 x40 y40 cwhite,this is tab3


Gui,Add,Groupbox, v4tab1 x20 y40 w230 h165 cwhite,Dispensers
gui,Add,Checkbox, v4tab2 x30 yp+20 cwhite %clock%,Use wealthclock
gui,Add,Checkbox, v4tab3 x30 yp+20 cwhite %gluedisp%,Use glue dispenser
gui,Add,Checkbox, v4tab4 x30 yp+20 cwhite %strawdisp%,Use Strawberry dispenser
gui,Add,Checkbox, v4tab5 x30 yp+20 cwhite %bluedisp%,Use blueberry dispenser
gui,Add,Checkbox, v4tab6 x30 yp+20 cwhite %cocodisp%,Use coconut dispenser
gui,Add,Checkbox, v4tab7 x30 yp+20 cwhite %killtb%,Kill tunnelbear
gui,Add,Checkbox, v4tab8 x30 yp+20 cwhite %killkb%,Kill kingbeetle
Gui,Add,Groupbox, v4tab9 x20 yp+35 w300 h90 cwhite,ant
Gui,Add,Checkbox, v4tab10 xp+5 yp+20 cwhite %antsetting%, claim free ant pass
Gui,Add,Checkbox, v4tab11 xp yp+20 cwhite %antcheck%, use free pass to play ant
Gui,Add,Checkbox, v4tab12 xp yp+20 cwhite %buyplayant%, buy and use ant pass every
Gui,Add,DropDownlist, v4tab13 xp+215 yp w60 h200 ,%whenplayantdata%||30 min|1 hour|2 hours|4 hours
Gui,Add,Groupbox, v4tab14 x20 yp+35 w300 h75 cwhite, kill vicious
Gui,Add,Checkbox, v4tab15 xp+10 yp+25 cwhite %killviccheck%,kill vicious bee when night is detected
Gui,Add,Text, v4tab16 x85 yp+25 cwhite,maximum combat time [Seconds]
Gui,Add,Edit, v4tab17 number x30 yp-2 w50,%fighttimedata%
Gui,Add,Groupbox, v4tab18 x20 yp+35 w180 h145 cwhite,mobs
Gui,Add,Checkbox, v4tab19 x30 yp+20 cwhite %killlady%,Kill ladybugs
Gui,Add,Checkbox, v4tab20 x30 yp+20 cwhite %killrhino%,Kill rhino beetles
Gui,Add,Checkbox, v4tab21 x30 yp+20 cwhite %killspider%,Kill spider
Gui,Add,Checkbox, v4tab22 x30 yp+20 cwhite %killscorp%,Kill scorpions
Gui,Add,Checkbox, v4tab23 x30 yp+20 cwhite %killmantis%,Kill mantises
Gui,Add,Checkbox, v4tab24 x30 yp+20 cwhite %killwolf%,Kill werewolf
Gui,Add,Text, v4tab25 x115 yp+45 cwhite,mondo kill type
Gui,Add,DropDownlist, v4tab26 x20 yp-2  w90 h200,%mondokilldata%||No Kill|Blessing|Loot

gui,Add,Text, v5tab1 x40 y40 cwhite,this is tab5
gui,Add,Text, v6tab1 x40 y40 cwhite,this is tab6

changetab(1)
Gui,show,w450 h600,Syspalk's macro

changetab(tab){
	var := 0
	loop 10{
		var++
		if not (tab = A_Index){
			loop 30{
				GuiControl,Hide,%var%tab%A_Index%
			}
		}
	}
	
	
	loop 30{
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

Settingsbutton(){
	changetab(7)
	GuiControl,,activetab,Settings
}

Joindiscord(){
	run,https://discord.gg/t572FnTqfs
}

gotogithub(){
	run,https://github.com/Syspalkius/bssmacro
}