global menubar := 0
Gui,Font,s17 Bold
Gui,color,0x2A2F32
global updatecol := "Green"


Gui, Add, Picture, x10 y10 gmenubar, Images/menu.png
Gui, Add, Text, xp+40 yp-5 gmenubar cwhite, Home


Gui,Add,Groupbox, v1tab1 x0 y-10 w180 h605
Gui,Add,Text, gFarmingbutton v1tab2 x40 yp+50 cf5c88e,Farming
Gui,Add,Picture, gFarmingbutton v1tab3 x5 yp-5, Images/honey.png
Gui,Add,Text, gPlanterbutton v1tab4 x40 yp+45 cf5c88e,Planters
Gui,Add,Picture, gPlanterbutton v1tab5 x5 yp-5, Images/planter.png
Gui,Add,Text, gResourcesbutton v1tab6 x40 yp+45 cf5c88e,Resources
Gui,Add,Picture, gResourcesbutton v1tab7 x5 yp-5, Images/resources.png
Gui,Add,Text, gSettingsbutton v1tab8 x40 yp+45 cf5c88e,Settings
Gui,Add,Picture, gSettingsbutton v1tab9 x5 yp-5, Images/cog.png
Gui,Font,s12 Bold
Gui,Add,Text, v1tab10 x205 y15 c%updatecol%,Latest Update : 03/24/2023
Gui,Font,s15 Bold
Gui,Add,Text, v1tab11 x225 yp+25 cwhite,New in This version
Gui,Font,s9
Gui,Add,Text, v1tab12 xp-35 yp+30 w250 cwhite +wrap,[placeholder] [placeholder] [placeholder] [placeholder] [placeholder] [placeholder] [placeholder] [placeholder] [placeholder] [placeholder] [placeholder] 
Gui,Font,s15 Bold
Gui,Add,Text, v1tab13 x285 y300 cwhite,About
Gui,Font,s9
Gui,Add,Text, v1tab14 xp-95 yp+30 w250 cwhite +wrap,The development of this macro started at 04/10/2022,You are allowed to share this macro with other people but you aren't allowed to steal my code and claim it is yours, if you do want to borrow some code you must give proper credits and mention that it was developed by me, The main thing this macro is targeted towards is bee swarm simulator automation for specifically endgame players.`n`nThis macro was fully created by Syspalk, so if you do encounter bugs you are able to report them to me on discord [Syspalk#0955] or you can join my discord server and report it there.
Gui,Font,s12
Gui,Add,Text, gJoindiscord v1tab15 xp yp+220 cblue,Join Discord
Gui,Add,Text, ggotogithub v1tab16 xp yp+20 cblue,Goto Github

gui,Add,Text, v2tab1 x40 y40 cwhite,this is tab2
gui,Add,Text, v3tab1 x40 y40 cwhite,this is tab3
gui,Add,Text, v4tab1 x40 y40 cwhite,this is tab4
gui,Add,Text, v5tab1 x40 y40 cwhite,this is tab5

changetab(1)
Gui,show,w450 h600,Syspalk's macro

changetab(tab){
	var := 0
	loop 10{
		var++
		if not (tab = A_Index){
			loop 20{
				GuiControl,Hide,%var%tab%A_Index%
			}
		}
	}
	
	
	loop 20{
		GuiControl,Show,%tab%tab%A_Index%
	}
}

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

Settingsbutton(){
	changetab(5)
}

Joindiscord(){
	run,https://discord.gg/t572FnTqfs
}

gotogithub(){
	run,https://github.com/Syspalkius/bssmacro
}