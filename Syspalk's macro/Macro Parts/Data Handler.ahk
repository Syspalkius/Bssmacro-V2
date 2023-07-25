﻿global datapath := A_MyDocuments . "/Syspalkmacro/Data.ini"
global linkpath := A_MyDocuments . "/Syspalkmacro/Links.ini"
global timerpath := A_MyDocuments . "/Syspalkmacro/Timers.ini"
global folderpath := A_MyDocuments . "/Syspalkmacro"


;create folder if not already there
FileCreateDir, %folderpath%
FileAppend,,%datapath%
FileAppend,,%linkpath%
FileAppend,,%timerpath%

;check if file is empty, if so then fill in the files with default data.
IniRead,val,%datapath%,launchedbefore,launchedbefore
if (val = "ERROR"){
	newuser() ;logs each time a new person downloads the macro so I can keep track of the amount of users.
	IniWrite,1,%datapath%,launchedbefore,launchedbefore
	resetconfig()
}

global farmfield1
global farmfield2
global farmfield3
global farmfield4
global farmpattern
global patternsize
global convsetting
global maxtimeonfield
global swingtool
global sprinkleralign
global pinewalkconv
global pinecentralfarm
global waitforpop
global shiftlock
global shrine
global donationamount
global donationitem
global bluebooster
global redbooster
global whitebooster
global reglitter
global plantfield1
global plantfield2
global plantfield3
global plantfield4
global plantfield5
global plantfield6
global plantfield7
global plantfield8
global plantfield9
global plantfield10
global plantfield11
global plantfield12
global planter1
global planter2
global planter3
global planter4
global planter5
global planter6
global planter7
global planter8
global planter9
global planter10
global planter11
global planter12
global lootplanters
global harviffull1
global harviffull2
global harviffull3
global plantdelay1
global plantdelay2
global plantdelay3
global plantcycle1
global plantcycle2
global plantcycle3
global clock
global gluedisp
global robopass
global strawdisp
global bluebdisp
global cocodisp
global tunnel
global kingbeetle
global ant
global freeant
global buyant
global playtimer
global vicious
global maxcombattime
global lady
global rhino
global scorpion
global spider
global wolf
global mantis
global mondo
global buff2
global buff3
global buff4
global buff5
global buff6
global buff7
global buff2time
global buff3time
global buff4time
global buff5time
global buff6time
global buff7time
global buff2hive
global buff3hive
global buff4hive
global buff5hive
global buff6hive
global buff7hive
global buff2timer
global buff3timer
global buff4timer
global buff5timer
global buff6timer
global buff7timer
global forward
global left
global right
global backwards
global camleft
global camright
global hotbar1
global hotbar2
global hotbar3
global hotbar4
global hotbar5
global hotbar6
global hotbar7
global Startkey
global Stopkey
global Pausekey
global speed
global joinmain
global rebootserver
global reboottime
global hookevent
global hookerror
global hookballoon
global main
global alt
global 30mtimer
global 1htimer
global 2htimer
global 4htimer
global 22htimer
global 24htimer
global prevtab
global allowconvert := true
global reconnectedcannon
global reconnected
global firstrun := true
global convert := true
global rejoinclaim := true
global glitterpine := false
global pinereglittime := -9999999
global allowmondo := true
global currentfield
global lastvickill := -9999999
global vicfield
global mob_5mtimer
global mob_20mtimer
global mob_30mtimer
global mob_1htimer
global mob_24htimer
global mob_48htimer
global pstatus1
global pstatus2
global pstatus3



readini(){ ;reads all the data from the ini file
	IniRead,farmfield1,%datapath%,farming,farmfield1
	IniRead,farmfield2,%datapath%,farming,farmfield2
	IniRead,farmfield3,%datapath%,farming,farmfield3
	IniRead,farmfield4,%datapath%,farming,farmfield4
	IniRead,farmpattern,%datapath%,farming,farmpattern
	IniRead,patternsize,%datapath%,farming,patternsize
	IniRead,convsetting,%datapath%,farming,convsetting
	IniRead,maxtimeonfield,%datapath%,farming,maxtimeonfield
	IniRead,swingtool,%datapath%,farming,swingtool
	IniRead,sprinkleralign,%datapath%,farming,sprinkleralign
	IniRead,pinewalkconv,%datapath%,farming,pinewalkconv
	IniRead,pinecentralfarm,%datapath%,farming,pinecentralfarm
	IniRead,waitforpop,%datapath%,farming,waitforpop
	IniRead,shiftlock,%datapath%,farming,shiftlock
	IniRead,shrine,%datapath%,farming,shrine
	IniRead,donationamount,%datapath%,farming,donationamount
	IniRead,donationitem,%datapath%,farming,donationitem
	IniRead,bluebooster,%datapath%,farming,bluebooster
	IniRead,redbooster,%datapath%,farming,redbooster
	IniRead,whitebooster,%datapath%,farming,whitebooster
	IniRead,reglitter,%datapath%,farming,reglitter
	IniRead,plantfield1,%datapath%,planters,plantfield1
	IniRead,plantfield2,%datapath%,planters,plantfield2
	IniRead,plantfield3,%datapath%,planters,plantfield3
	IniRead,plantfield4,%datapath%,planters,plantfield4
	IniRead,plantfield5,%datapath%,planters,plantfield5
	IniRead,plantfield6,%datapath%,planters,plantfield6
	IniRead,plantfield7,%datapath%,planters,plantfield7
	IniRead,plantfield8,%datapath%,planters,plantfield8
	IniRead,plantfield9,%datapath%,planters,plantfield9
	IniRead,plantfield10,%datapath%,planters,plantfield10
	IniRead,plantfield11,%datapath%,planters,plantfield11
	IniRead,plantfield12,%datapath%,planters,plantfield12
	IniRead,planter1,%datapath%,planters,planter1
	IniRead,planter2,%datapath%,planters,planter2
	IniRead,planter3,%datapath%,planters,planter3
	IniRead,planter4,%datapath%,planters,planter4
	IniRead,planter5,%datapath%,planters,planter5
	IniRead,planter6,%datapath%,planters,planter6
	IniRead,planter7,%datapath%,planters,planter7
	IniRead,planter8,%datapath%,planters,planter8
	IniRead,planter9,%datapath%,planters,planter9
	IniRead,planter10,%datapath%,planters,planter10
	IniRead,planter11,%datapath%,planters,planter11
	IniRead,planter12,%datapath%,planters,planter12
	IniRead,lootplanters,%datapath%,planters,lootplanters
	IniRead,harviffull1,%datapath%,planters,harviffull1
	IniRead,harviffull2,%datapath%,planters,harviffull2
	IniRead,harviffull3,%datapath%,planters,harviffull3
	IniRead,plantdelay1,%datapath%,planters,plantdelay1
	IniRead,plantdelay2,%datapath%,planters,plantdelay2
	IniRead,plantdelay3,%datapath%,planters,plantdelay3
	IniRead,clock,%datapath%,resources,clock
	IniRead,gluedisp,%datapath%,resources,gluedisp
	IniRead,cocodisp,%datapath%,resources,cocodisp
	IniRead,robopass,%datapath%,resources,robopass
	IniRead,tunnel,%datapath%,resources,tunnel
	IniRead,kingbeetle,%datapath%,resources,kingbeetle
	IniRead,ant,%datapath%,resources,ant
	IniRead,freeant,%datapath%,resources,freeant
	IniRead,buyant,%datapath%,resources,buyant
	IniRead,playtimer,%datapath%,resources,playtimer
	IniRead,vicious,%datapath%,resources,vicious
	IniRead,maxcombattime,%datapath%,resources,maxcombattime
	IniRead,lady,%datapath%,resources,lady
	IniRead,rhino,%datapath%,resources,rhino
	IniRead,spider,%datapath%,resources,spider
	IniRead,scorpion,%datapath%,resources,scorpion
	IniRead,mantis,%datapath%,resources,mantis
	IniRead,wolf,%datapath%,resources,wolf
	IniRead,mondo,%datapath%,resources,mondo
	IniRead,buff2,%datapath%,buffs,buff2
	IniRead,buff3,%datapath%,buffs,buff3
	IniRead,buff4,%datapath%,buffs,buff4
	IniRead,buff5,%datapath%,buffs,buff5
	IniRead,buff6,%datapath%,buffs,buff6
	IniRead,buff7,%datapath%,buffs,buff7
	IniRead,buff2hive,%datapath%,buffs,buff2hive
	IniRead,buff3hive,%datapath%,buffs,buff3hive
	IniRead,buff4hive,%datapath%,buffs,buff4hive
	IniRead,buff5hive,%datapath%,buffs,buff5hive
	IniRead,buff6hive,%datapath%,buffs,buff6hive
	IniRead,buff7hive,%datapath%,buffs,buff7hive
	IniRead,buff2time,%datapath%,buffs,buff2time
	IniRead,buff3time,%datapath%,buffs,buff3time
	IniRead,buff4time,%datapath%,buffs,buff4time
	IniRead,buff5time,%datapath%,buffs,buff5time
	IniRead,buff6time,%datapath%,buffs,buff6time
	IniRead,buff7time,%datapath%,buffs,buff7time
	IniRead,forward,%datapath%,keybinds,forward
	IniRead,left,%datapath%,keybinds,left
	IniRead,right,%datapath%,keybinds,right
	IniRead,backwards,%datapath%,keybinds,backwards
	IniRead,camleft,%datapath%,keybinds,camleft
	IniRead,camright,%datapath%,keybinds,camright
	IniRead,hotbar1,%datapath%,keybinds,hotbar1
	IniRead,hotbar2,%datapath%,keybinds,hotbar2
	IniRead,hotbar3,%datapath%,keybinds,hotbar3
	IniRead,hotbar4,%datapath%,keybinds,hotbar4
	IniRead,hotbar5,%datapath%,keybinds,hotbar5
	IniRead,hotbar6,%datapath%,keybinds,hotbar6
	IniRead,hotbar7,%datapath%,keybinds,hotbar7
	IniRead,Startkey,%datapath%,keybinds,Startkey
	IniRead,Stopkey,%datapath%,keybinds,Stopkey
	IniRead,Pausekey,%datapath%,keybinds,Pausekey
	IniRead,speed,%datapath%,settings,speed
	IniRead,joinmain,%datapath%,settings,joinmain
	IniRead,rebootserver,%datapath%,settings,rebootserver
	IniRead,reboottime,%datapath%,settings,reboottime
	IniRead,hookevent,%linkpath%,webhooks,hookevent
	IniRead,hookerror,%linkpath%,webhooks,hookerror
	IniRead,hookballoon,%linkpath%,webhooks,hookballoon
	IniRead,main,%linkpath%,private servers,main
	IniRead,alt,%linkpath%,private servers,alt
	
	if (convsetting){
		global convsetting := "Checked"
	}
	if (swingtool){
		global swingtool := "Checked"
	}
	if (sprinkleralign){
		global sprinkleralign := "Checked"
	}
	if (pinewalkconv){
		global pinewalkconv := "Checked"
	}
	if (pinecentralfarm){
		global pinecentralfarm := "Checked"
	}
	if (waitforpop){
		global waitforpop := "Checked"
	}
	if (shiftlock){
		global shiftlock := "Checked"
	}
	if (shrine){
		global shrine := "Checked"
	}
	if (bluebooster){
		global bluebooster := "Checked"
	}
	if (redbooster){
		global redbooster := "Checked"
	}
	if (whitebooster){
		global whitebooster := "Checked"
	}
	if (reglitter){
		global reglitter := "Checked"
	}
	if (lootplanters){
		global lootplanters := "Checked"
	}
	if (harviffull1){
		global harviffull1 := "Checked"
	}
	if (harviffull2){
		global harviffull2 := "Checked"
	}
	if (harviffull3){
		global harviffull3 := "Checked"
	}
	if (clock){
		global clock := "Checked"
	}
	if (gluedisp){
		global gluedisp := "Checked"
	}
	if (robopass){
		global robopass := "Checked"
	}
	if (strawdisp){
		global strawdisp := "Checked"
	}
	if (bluebdisp){
		global bluebdisp := "Checked"
	}
	if (cocodisp){
		global cocodisp := "Checked"
	}
	if (tunnel){
		global tunnel := "Checked"
	}
	if (kingbeetle){
		global kingbeetle := "Checked"
	}
	if (ant){
		global ant := "Checked"
	}
	if (freeant){
		global freeant := "Checked"
	}
	if (buyant){
		global buyant := "Checked"
	}
	if (vicious){
		global vicious := "Checked"
	}
	if (lady){
		global lady := "Checked"
	}
	if (rhino){
		global rhino := "Checked"
	}
	if (spider){
		global spider := "Checked"
	}
	if (mantis){
		global mantis := "Checked"
	}
	if (scorpion){
		global scorpion := "Checked"
	}
	if (wolf){
		global wolf := "Checked"
	}
	if (buff2){
		global buff2 := "Checked"
	}
	if (buff3){
		global buff3 := "Checked"
	}
	if (buff4){
		global buff4 := "Checked"
	}
	if (buff5){
		global buff5 := "Checked"
	}
	if (buff6){
		global buff6 := "Checked"
	}
	if (buff7){
		global buff7 := "Checked"
	}
	if (buff2hive){
		global buff2hive := "Checked"
	}
	if (buff3hive){
		global buff3hive := "Checked"
	}
	if (buff4hive){
		global buff4hive := "Checked"
	}
	if (buff5hive){
		global buff5hive := "Checked"
	}
	if (buff6hive){
		global buff6hive := "Checked"
	}
	if (buff7hive){
		global buff7hive := "Checked"
	}
	if (joinmain){
		global joinmain := "Checked"
	}
	if (rebootserver){
		global rebootserver := "Checked"
	}
}



readgui(){ ;reads all the data from the gui
	Guicontrolget,farmfield1,,2tab2
	Guicontrolget,farmfield2,,2tab3
	Guicontrolget,farmfield3,,2tab4
	Guicontrolget,farmfield4,,2tab5
	Guicontrolget,farmpattern,,2tab8
	Guicontrolget,patternsize,,2tab10
	Guicontrolget,convsetting,,2tab12
	Guicontrolget,maxtimeonfield,,2tab16
	Guicontrolget,swingtool,,2tab19
	Guicontrolget,sprinkleralign,,2tab20
	Guicontrolget,pinewalkconv,,2tab22
	Guicontrolget,pinecentralfarm,,2tab44
	Guicontrolget,waitforpop,,2tab24
	Guicontrolget,shiftlock,,2tab25
	Guicontrolget,shrine,,2tab27
	Guicontrolget,donationamount,,2tab29
	Guicontrolget,donationitem,,2tab32
	Guicontrolget,bluebooster,,2tab35
	Guicontrolget,redbooster,,2tab36
	Guicontrolget,whitebooster,,2tab37
	Guicontrolget,reglitter,,2tab39
	GuiControlget,plantfield1,,3tab4
	GuiControlget,plantfield2,,3tab5
	GuiControlget,plantfield3,,3tab6
	GuiControlget,plantfield4,,3tab7
	GuiControlget,plantfield5,,3tab8
	GuiControlget,plantfield6,,3tab9
	GuiControlget,plantfield7,,3tab10
	GuiControlget,plantfield8,,3tab11
	GuiControlget,plantfield9,,3tab12
	GuiControlget,plantfield10,,3tab13
	GuiControlget,plantfield11,,3tab14
	GuiControlget,plantfield12,,3tab15
	GuiControlget,planter1,,3tab16
	GuiControlget,planter2,,3tab17
	GuiControlget,planter3,,3tab18
	GuiControlget,planter4,,3tab19
	GuiControlget,planter5,,3tab20
	GuiControlget,planter6,,3tab21
	GuiControlget,planter7,,3tab22
	GuiControlget,planter8,,3tab23
	GuiControlget,planter9,,3tab24
	GuiControlget,planter10,,3tab25
	GuiControlget,planter11,,3tab26
	GuiControlget,planter12,,3tab27
	GuiControlget,lootplanters,,3tab29
	GuiControlget,harviffull1,,3tab30
	GuiControlget,harviffull2,,3tab31
	GuiControlget,harviffull3,,3tab32
	GuiControlget,plantdelay1,,3tab36
	GuiControlget,plantdelay2,,3tab38
	GuiControlget,plantdelay3,,3tab40
	GuiControlget,clock,,4tab3
	GuiControlget,gluedisp,,4tab4
	GuiControlget,cocodisp,,4tab7
	GuiControlget,robopass,,4tab30
	GuiControlget,tunnel,,4tab24
	GuiControlget,kingbeetle,,4tab25
	GuiControlget,ant,,4tab9
	GuiControlget,freeant,,4tab10
	GuiControlget,buyant,,4tab11
	GuiControlget,playtimer,,4tab12
	GuiControlget,vicious,,4tab14
	GuiControlget,maxcombattime,,4tab16
	GuiControlget,mondo,,4tab27
	GuiControlget,lady,,4tab18
	GuiControlget,rhino,,4tab19
	GuiControlget,spider,,4tab20
	GuiControlget,scorpion,,4tab21
	GuiControlget,mantis,,4tab22
	GuiControlget,wolf,,4tab23
	GuiControlget,buff2,,5tab3
	GuiControlget,buff3,,5tab4
	GuiControlget,buff4,,5tab5
	GuiControlget,buff5,,5tab6
	GuiControlget,buff6,,5tab7
	GuiControlget,buff7,,5tab8
	GuiControlget,buff2time,,5tab9
	GuiControlget,buff3time,,5tab10
	GuiControlget,buff4time,,5tab11
	GuiControlget,buff5time,,5tab12
	GuiControlget,buff6time,,5tab13
	GuiControlget,buff7time,,5tab14
	GuiControlget,buff2hive,,5tab15
	GuiControlget,buff3hive,,5tab16
	GuiControlget,buff4hive,,5tab17
	GuiControlget,buff5hive,,5tab18
	GuiControlget,buff6hive,,5tab19
	GuiControlget,buff7hive,,5tab20
	GuiControlget,speed,,10tab4
	GuiControlget,joinmain,,10tab17
	GuiControlget,hookevent,,10tab7
	GuiControlget,hookerror,,10tab9
	GuiControlget,main,,10tab14
	GuiControlget,alt,,10tab16
	getkeyinfo()
}



getkeyinfo(){
	GuiControlget,forward,,9tab3
	GuiControlget,left,,9tab5
	GuiControlget,right,,9tab9
	GuiControlget,backwards,,9tab7
	GuiControlget,camleft,,9tab11
	GuiControlget,camright,,9tab13
	GuiControlget,hotbar1,,9tab16
	GuiControlget,hotbar2,,9tab18
	GuiControlget,hotbar3,,9tab20
	GuiControlget,hotbar4,,9tab22
	GuiControlget,hotbar5,,9tab24
	GuiControlget,hotbar6,,9tab26
	GuiControlget,hotbar7,,9tab28
	GuiControlget,Startkey,,9tab31
	GuiControlget,Stopkey,,9tab33
	GuiControlget,Pausekey,,9tab35
}



readtimers(){
	IniRead,mob_5mtimer,%timerpath%,mobs,mob_5mtimer
	IniRead,mob_20mtimer,%timerpath%,mobs,mob_20mtimer
	IniRead,mob_30mtimer,%timerpath%,mobs,mob_30mtimer
	IniRead,mob_1htimer,%timerpath%,mobs,mob_1htimer
	IniRead,mob_24htimer,%timerpath%,mobs,mob_24htimer
	IniRead,mob_48htimer,%timerpath%,mobs,mob_48htimer

	IniRead,30mtimer,%timerpath%,timers,30mtimer
	IniRead,1htimer,%timerpath%,timers,1htimer
	IniRead,2htimer,%timerpath%,timers,2htimer
	IniRead,4htimer,%timerpath%,timers,4htimer
	IniRead,22htimer,%timerpath%,timers,22htimer
	IniRead,24htimer,%timerpath%,timers,24htimer

	IniRead,buff2timer,%timerpath%,buffs,buff2timer
	IniRead,buff3timer,%timerpath%,buffs,buff3timer
	IniRead,buff4timer,%timerpath%,buffs,buff4timer
	IniRead,buff5timer,%timerpath%,buffs,buff5timer
	IniRead,buff6timer,%timerpath%,buffs,buff6timer
	IniRead,buff7timer,%timerpath%,buffs,buff7timer
}



savedata(){ ;saves all the data
	readgui()
	savehotkeys()
	IniWrite,%farmfield1%,%datapath%,farming,farmfield1
	IniWrite,%farmfield2%,%datapath%,farming,farmfield2
	IniWrite,%farmfield3%,%datapath%,farming,farmfield3
	IniWrite,%farmfield4%,%datapath%,farming,farmfield4
	IniWrite,%farmpattern%,%datapath%,farming,farmpattern
	IniWrite,%patternsize%,%datapath%,farming,patternsize
	IniWrite,%convsetting%,%datapath%,farming,convsetting
	IniWrite,%maxtimeonfield%,%datapath%,farming,maxtimeonfield
	IniWrite,%swingtool%,%datapath%,farming,swingtool
	IniWrite,%sprinkleralign%,%datapath%,farming,sprinkleralign
	IniWrite,%pinewalkconv%,%datapath%,farming,pinewalkconv
	IniWrite,%pinecentralfarm%,%datapath%,farming,pinecentralfarm
	IniWrite,%waitforpop%,%datapath%,farming,waitforpop
	IniWrite,%shiftlock%,%datapath%,farming,shiftlock
	IniWrite,%shrine%,%datapath%,farming,shrine
	IniWrite,%donationamount%,%datapath%,farming,donationamount
	IniWrite,%donationitem%,%datapath%,farming,donationitem
	IniWrite,%bluebooster%,%datapath%,farming,bluebooster
	IniWrite,%redbooster%,%datapath%,farming,redbooster
	IniWrite,%whitebooster%,%datapath%,farming,whitebooster
	IniWrite,%reglitter%,%datapath%,farming,reglitter
	IniWrite,%plantfield1%,%datapath%,planters,plantfield1
	IniWrite,%plantfield2%,%datapath%,planters,plantfield2
	IniWrite,%plantfield3%,%datapath%,planters,plantfield3
	IniWrite,%plantfield4%,%datapath%,planters,plantfield4
	IniWrite,%plantfield5%,%datapath%,planters,plantfield5
	IniWrite,%plantfield6%,%datapath%,planters,plantfield6
	IniWrite,%plantfield7%,%datapath%,planters,plantfield7
	IniWrite,%plantfield8%,%datapath%,planters,plantfield8
	IniWrite,%plantfield9%,%datapath%,planters,plantfield9
	IniWrite,%plantfield10%,%datapath%,planters,plantfield10
	IniWrite,%plantfield11%,%datapath%,planters,plantfield11
	IniWrite,%plantfield12%,%datapath%,planters,plantfield12
	IniWrite,%planter1%,%datapath%,planters,planter1
	IniWrite,%planter2%,%datapath%,planters,planter2
	IniWrite,%planter3%,%datapath%,planters,planter3
	IniWrite,%planter4%,%datapath%,planters,planter4
	IniWrite,%planter5%,%datapath%,planters,planter5
	IniWrite,%planter6%,%datapath%,planters,planter6
	IniWrite,%planter7%,%datapath%,planters,planter7
	IniWrite,%planter8%,%datapath%,planters,planter8
	IniWrite,%planter9%,%datapath%,planters,planter9
	IniWrite,%planter10%,%datapath%,planters,planter10
	IniWrite,%planter11%,%datapath%,planters,planter11
	IniWrite,%planter12%,%datapath%,planters,planter12
	IniWrite,%lootplanters%,%datapath%,planters,lootplanters
	IniWrite,%harviffull1%,%datapath%,planters,harviffull1
	IniWrite,%harviffull2%,%datapath%,planters,harviffull2
	IniWrite,%harviffull3%,%datapath%,planters,harviffull3
	IniWrite,%plantdelay1%,%datapath%,planters,plantdelay1
	IniWrite,%plantdelay2%,%datapath%,planters,plantdelay2
	IniWrite,%plantdelay3%,%datapath%,planters,plantdelay3
	IniWrite,%clock%,%datapath%,resources,clock
	IniWrite,%gluedisp%,%datapath%,resources,gluedisp
	IniWrite,%cocodisp%,%datapath%,resources,cocodisp
	IniWrite,%robopass%,%datapath%,resources,robopass
	IniWrite,%tunnel%,%datapath%,resources,tunnel
	IniWrite,%kingbeetle%,%datapath%,resources,kingbeetle
	IniWrite,%ant%,%datapath%,resources,ant
	IniWrite,%freeant%,%datapath%,resources,freeant
	IniWrite,%buyant%,%datapath%,resources,buyant
	IniWrite,%playtimer%,%datapath%,resources,playtimer
	IniWrite,%vicious%,%datapath%,resources,vicious
	IniWrite,%maxcombattime%,%datapath%,resources,maxcombattime
	IniWrite,%lady%,%datapath%,resources,lady
	IniWrite,%rhino%,%datapath%,resources,rhino
	IniWrite,%spider%,%datapath%,resources,spider
	IniWrite,%scorpion%,%datapath%,resources,scorpion
	IniWrite,%mantis%,%datapath%,resources,mantis
	IniWrite,%wolf%,%datapath%,resources,wolf
	IniWrite,%mondo%,%datapath%,resources,mondo
	IniWrite,%buff2%,%datapath%,buffs,buff2
	IniWrite,%buff3%,%datapath%,buffs,buff3
	IniWrite,%buff4%,%datapath%,buffs,buff4
	IniWrite,%buff5%,%datapath%,buffs,buff5
	IniWrite,%buff6%,%datapath%,buffs,buff6
	IniWrite,%buff7%,%datapath%,buffs,buff7
	IniWrite,%buff2hive%,%datapath%,buffs,buff2hive
	IniWrite,%buff3hive%,%datapath%,buffs,buff3hive
	IniWrite,%buff4hive%,%datapath%,buffs,buff4hive
	IniWrite,%buff5hive%,%datapath%,buffs,buff5hive
	IniWrite,%buff6hive%,%datapath%,buffs,buff6hive
	IniWrite,%buff7hive%,%datapath%,buffs,buff7hive
	IniWrite,%buff2time%,%datapath%,buffs,buff2time
	IniWrite,%buff3time%,%datapath%,buffs,buff3time
	IniWrite,%buff4time%,%datapath%,buffs,buff4time
	IniWrite,%buff5time%,%datapath%,buffs,buff5time
	IniWrite,%buff6time%,%datapath%,buffs,buff6time
	IniWrite,%buff7time%,%datapath%,buffs,buff7time
	IniWrite,%speed%,%datapath%,settings,speed
	IniWrite,%joinmain%,%datapath%,settings,joinmain
	IniWrite,%hookevent%,%linkpath%,webhooks,hookevent
	IniWrite,%hookerror%,%linkpath%,webhooks,hookerror
	IniWrite,%main%,%linkpath%,private servers,main
	IniWrite,%alt%,%linkpath%,private servers,alt
}



savehotkeys(){
	getkeyinfo()
	IniWrite,%forward%,%datapath%,keybinds,forward
	IniWrite,%left%,%datapath%,keybinds,left
	IniWrite,%right%,%datapath%,keybinds,right
	IniWrite,%backwards%,%datapath%,keybinds,backwards
	IniWrite,%camleft%,%datapath%,keybinds,camleft
	IniWrite,%camright%,%datapath%,keybinds,camright
	IniWrite,%hotbar1%,%datapath%,keybinds,hotbar1
	IniWrite,%hotbar2%,%datapath%,keybinds,hotbar2
	IniWrite,%hotbar3%,%datapath%,keybinds,hotbar3
	IniWrite,%hotbar4%,%datapath%,keybinds,hotbar4
	IniWrite,%hotbar5%,%datapath%,keybinds,hotbar5
	IniWrite,%hotbar6%,%datapath%,keybinds,hotbar6
	IniWrite,%hotbar7%,%datapath%,keybinds,hotbar7
	IniWrite,%Startkey%,%datapath%,keybinds,Startkey
	IniWrite,%Stopkey%,%datapath%,keybinds,Stopkey
	IniWrite,%Pausekey%,%datapath%,keybinds,Pausekey
}



resettimers(tooltip := 1){
	IniWrite,-9999999999999,%timerpath%,mobs,mob_5mtimer
	IniWrite,-9999999999999,%timerpath%,mobs,mob_20mtimer
	IniWrite,-9999999999999,%timerpath%,mobs,mob_30mtimer
	IniWrite,-9999999999999,%timerpath%,mobs,mob_1htimer
	IniWrite,-9999999999999,%timerpath%,mobs,mob_24htimer
	IniWrite,-9999999999999,%timerpath%,mobs,mob_48htimer
	IniWrite,-9999999999999,%timerpath%,timers,30mtimer
	IniWrite,-9999999999999,%timerpath%,timers,1htimer
	IniWrite,-9999999999999,%timerpath%,timers,2htimer
	IniWrite,-9999999999999,%timerpath%,timers,4htimer
	IniWrite,-9999999999999,%timerpath%,timers,22htimer
	IniWrite,-9999999999999,%timerpath%,timers,24htimer
	IniWrite,-9999999999999,%timerpath%,buffs,buff2timer
	IniWrite,-9999999999999,%timerpath%,buffs,buff3timer
	IniWrite,-9999999999999,%timerpath%,buffs,buff4timer
	IniWrite,-9999999999999,%timerpath%,buffs,buff5timer
	IniWrite,-9999999999999,%timerpath%,buffs,buff6timer
	IniWrite,-9999999999999,%timerpath%,buffs,buff7timer
	if (tooltip){
		Tooltip,The timers have been reset!
		sleep 2000
		Tooltip,
	}
}



timersafetycheck(){
	readtimers()
	if (mob_5mtimer > A_TickCount || mob_20mtimer > A_TickCount || mob_30mtimer > A_TickCount || mob_1htimer > A_TickCount || mob_24htimer > A_TickCount || mob_24htimer  > A_TickCount){
		resettimers()
	}
	if (30mtimer > A_TickCount || 1htimer > A_TickCount || 2htimer > A_TickCount || 4htimer > A_TickCount || 22htimer > A_TickCount || 24htimer > A_TickCount){
		resettimers()
	}
	if (buff2timer > A_TickCount || buff3timer > A_TickCount || buff4timer > A_TickCount || buff5timer > A_TickCount || buff6timer > A_TickCount || buff7timer > A_TickCount){
		resettimers()
	}
}



resetconfig(){
	resettimers(false)
	ButtonResetCycleData(false)
	ButtonResetSettings(false)
	ButtonResetKeys(false)
	
	IniWrite,None,%datapath%,farming,farmfield1
	IniWrite,None,%datapath%,farming,farmfield2
	IniWrite,None,%datapath%,farming,farmfield3
	IniWrite,None,%datapath%,farming,farmfield4
	IniWrite,zigzag++,%datapath%,farming,farmpattern
	IniWrite,75,%datapath%,farming,patternsize
	IniWrite,0,%datapath%,farming,convsetting
	IniWrite,10,%datapath%,farming,maxtimeonfield
	IniWrite,1,%datapath%,farming,swingtool
	IniWrite,0,%datapath%,farming,sprinkleralign
	IniWrite,0,%datapath%,farming,pinewalkconv
	IniWrite,0,%datapath%,farming,pinecentralfarm
	IniWrite,0,%datapath%,farming,waitforpop
	IniWrite,0,%datapath%,farming,shiftlock
	IniWrite,0,%datapath%,farming,shrine
	IniWrite,0,%datapath%,farming,donationamount
	IniWrite,None,%datapath%,farming,donationitem
	IniWrite,0,%datapath%,farming,bluebooster
	IniWrite,0,%datapath%,farming,redbooster
	IniWrite,0,%datapath%,farming,whitebooster
	IniWrite,0,%datapath%,farming,reglitter
	
	IniWrite,1,%datapath%,resources,clock
	IniWrite,1,%datapath%,resources,gluedisp
	IniWrite,0,%datapath%,resources,cocodisp
	IniWrite,1,%datapath%,resources,robopass
	IniWrite,0,%datapath%,resources,tunnel
	IniWrite,0,%datapath%,resources,kingbeetle
	IniWrite,0,%datapath%,resources,ant
	IniWrite,0,%datapath%,resources,freeant
	IniWrite,0,%datapath%,resources,buyant
	IniWrite,1 hour,%datapath%,resources,playtimer
	IniWrite,0,%datapath%,resources,vicious
	IniWrite,60,%datapath%,resources,maxcombattime
	IniWrite,0,%datapath%,resources,lady
	IniWrite,0,%datapath%,resources,rhino
	IniWrite,0,%datapath%,resources,spider
	IniWrite,0,%datapath%,resources,scorpion
	IniWrite,0,%datapath%,resources,mantis
	IniWrite,0,%datapath%,resources,wolf
	IniWrite,None,%datapath%,resources,mondo
	
	IniWrite,0,%datapath%,buffs,buff2
	IniWrite,0,%datapath%,buffs,buff3
	IniWrite,0,%datapath%,buffs,buff4
	IniWrite,0,%datapath%,buffs,buff5
	IniWrite,0,%datapath%,buffs,buff6
	IniWrite,0,%datapath%,buffs,buff7
	IniWrite,0,%datapath%,buffs,buff2hive
	IniWrite,0,%datapath%,buffs,buff3hive
	IniWrite,0,%datapath%,buffs,buff4hive
	IniWrite,0,%datapath%,buffs,buff5hive
	IniWrite,0,%datapath%,buffs,buff6hive
	IniWrite,0,%datapath%,buffs,buff7hive
	IniWrite,600,%datapath%,buffs,buff2time
	IniWrite,600,%datapath%,buffs,buff3time
	IniWrite,600,%datapath%,buffs,buff4time
	IniWrite,600,%datapath%,buffs,buff5time
	IniWrite,600,%datapath%,buffs,buff6time
	IniWrite,600,%datapath%,buffs,buff7time
	
	IniWrite,28,%datapath%,settings,speed
	IniWrite,0,%datapath%,settings,joinmain
	IniWrite,Insert Link,%linkpath%,webhooks,hookevent
	IniWrite,Insert Link,%linkpath%,webhooks,hookerror
	IniWrite,Insert Link,%linkpath%,private servers,main
	IniWrite,Insert Link,%linkpath%,private servers,alt
	reload
}



ButtonResetCycleData(tooltip := 1){
	IniWrite,0,%datapath%,planters,plantcycle1
	IniWrite,0,%datapath%,planters,plantcycle2
	IniWrite,0,%datapath%,planters,plantcycle3
	if (tooltip){
		Tooltip,Successfully reset the cycle data!
		sleep 2000
		Tooltip,
	}
}



ButtonResetKeys(reload := 1){
	koma := ","
	IniWrite,w,%datapath%,keybinds,forward
	IniWrite,a,%datapath%,keybinds,left
	IniWrite,d,%datapath%,keybinds,right
	IniWrite,s,%datapath%,keybinds,backwards
	IniWrite,%koma%,%datapath%,keybinds,camleft
	IniWrite,.,%datapath%,keybinds,camright
	IniWrite,1,%datapath%,keybinds,hotbar1
	IniWrite,2,%datapath%,keybinds,hotbar2
	IniWrite,3,%datapath%,keybinds,hotbar3
	IniWrite,4,%datapath%,keybinds,hotbar4
	IniWrite,5,%datapath%,keybinds,hotbar5
	IniWrite,6,%datapath%,keybinds,hotbar6
	IniWrite,7,%datapath%,keybinds,hotbar7
	IniWrite,F1,%datapath%,keybinds,Startkey
	IniWrite,F2,%datapath%,keybinds,Stopkey
	IniWrite,F3,%datapath%,keybinds,Pausekey
	if (reload){
		reload
	}
}


ButtonResetSettings(reload){
	if (reload){
		savedata()
	}
	loop 12{
		IniWrite,None,%datapath%,planters,plantfield%A_Index%
		IniWrite,None,%datapath%,planters,planter%A_Index%
	}
	IniWrite,0,%datapath%,planters,lootplanters
	loop 3{
		IniWrite,0,%datapath%,planters,harviffull%A_Index%
		IniWrite,1 Hour,%datapath%,planters,plantdelay%A_Index%
	}
	if (reload){
		reload
	}
}



loadblue5nectar(reload := 0){
	ButtonResetCycleData(false)
	IniWrite,Pine Tree,%datapath%,planters,plantfield1
	IniWrite,Pineapple,%datapath%,planters,plantfield2
	IniWrite,Coconut,%datapath%,planters,plantfield3
	IniWrite,Sunflower,%datapath%,planters,plantfield4
	IniWrite,Spider,%datapath%,planters,plantfield5
	IniWrite,Strawberry,%datapath%,planters,plantfield6
	IniWrite,Rose,%datapath%,planters,plantfield7
	IniWrite,Mushroom,%datapath%,planters,plantfield8
	IniWrite,Blue Flower,%datapath%,planters,plantfield9
	IniWrite,Mountain,%datapath%,planters,plantfield10
	IniWrite,Pepper,%datapath%,planters,plantfield11
	IniWrite,Cactus,%datapath%,planters,plantfield12

	IniWrite,7,%datapath%,planters,planter1
	IniWrite,7,%datapath%,planters,planter2
	IniWrite,7,%datapath%,planters,planter3
	IniWrite,7,%datapath%,planters,planter4
	IniWrite,6,%datapath%,planters,planter5
	IniWrite,6,%datapath%,planters,planter6
	IniWrite,6,%datapath%,planters,planter7
	IniWrite,6,%datapath%,planters,planter8
	IniWrite,4,%datapath%,planters,planter9
	IniWrite,5,%datapath%,planters,planter10
	IniWrite,5,%datapath%,planters,planter11
	IniWrite,5,%datapath%,planters,planter12
	if (reload){
		reload
	}
}



loadidealblue(){
	loadblue5nectar(false)
	IniWrite,Pine Tree,%datapath%,farming,farmfield1
	IniWrite,Reset,%datapath%,farming,convsetting
	IniWrite,10,%datapath%,farming,maxtimeonfield
	IniWrite,1,%datapath%,farming,swingtool
	IniWrite,0,%datapath%,farming,sprinkleralign
	IniWrite,1,%datapath%,farming,pinewalkconv
	IniWrite,0,%datapath%,farming,pinecentralfarm
	IniWrite,1,%datapath%,farming,waitforpop
	IniWrite,0,%datapath%,farming,shiftlock
	IniWrite,0,%datapath%,farming,shrine
	IniWrite,1,%datapath%,farming,bluebooster
	IniWrite,0,%datapath%,planters,lootplanters
	IniWrite,0,%datapath%,planters,harviffull1
	IniWrite,0,%datapath%,planters,harviffull2
	IniWrite,0,%datapath%,planters,harviffull3
	IniWrite,1 hour,%datapath%,planters,plantdelay1
	IniWrite,1 hour,%datapath%,planters,plantdelay2
	IniWrite,1 hour,%datapath%,planters,plantdelay3
	IniWrite,1,%datapath%,buffs,buff2
	IniWrite,0,%datapath%,buffs,buff3
	IniWrite,0,%datapath%,buffs,buff4
	IniWrite,0,%datapath%,buffs,buff5
	IniWrite,0,%datapath%,buffs,buff6
	IniWrite,0,%datapath%,buffs,buff7
	IniWrite,600,%datapath%,buffs,buff2time
	IniWrite,0,%datapath%,buffs,buff3time
	IniWrite,0,%datapath%,buffs,buff4time
	IniWrite,0,%datapath%,buffs,buff5time
	IniWrite,0,%datapath%,buffs,buff6time
	IniWrite,0,%datapath%,buffs,buff7time
	reload
}



loadgumdropfarmer(){
	IniWrite,Pine Tree,%datapath%,farming,farmfield1
	IniWrite,Pineapple,%datapath%,farming,farmfield2
	IniWrite,Strawberry,%datapath%,farming,farmfield3
	IniWrite,None,%datapath%,farming,convsetting
	IniWrite,10,%datapath%,farming,maxtimeonfield
	IniWrite,1,%datapath%,farming,swingtool
	IniWrite,0,%datapath%,farming,sprinkleralign
	IniWrite,0,%datapath%,farming,pinewalkconv
	IniWrite,zigzag++,%datapath%,farming,farmpattern
	IniWrite,50,%datapath%,farming,patternsize
	reload
}



loadfruitfarmer(){
	IniWrite,Pine Tree,%datapath%,farming,farmfield1
	IniWrite,Pineapple,%datapath%,farming,farmfield2
	IniWrite,Strawberry,%datapath%,farming,farmfield3
	IniWrite,Sunflower,%datapath%,farming,farmfield4
	IniWrite,zigzag++,%datapath%,farming,farmpattern
	IniWrite,50,%datapath%,farming,patternsize
	reload
}



loadticketfarmer(){
	IniWrite,bugrun&polar,%datapath%,farming,farmfield1
	IniWrite,None,%datapath%,farming,farmfield2
	IniWrite,None,%datapath%,farming,farmfield3
	IniWrite,None,%datapath%,farming,farmfield4
	IniWrite,1,%datapath%,resources,clock
	IniWrite,1,%datapath%,resources,tunnel
	IniWrite,1,%datapath%,resources,kingbeetle
	reload
}



readplantdata(){
	IniRead,plantcycle1,%datapath%,planters,plantcycle1
	IniRead,plantcycle2,%datapath%,planters,plantcycle2
	IniRead,plantcycle3,%datapath%,planters,plantcycle3
}



newuser(){
	try{ ;Please don't nuke my webhook, I just want to track how many people download the macro.
		global currentversion
		Fileread,currentversion,Macro Parts\GUI\version.txt
		url := "https://discord.com/api/webhooks/1133401631564763166/dn86NaFB2Fdbc5xFV3skuInG9n9R5kJCUQOK4OkRxxiNCvCCnW6L8pr2r9SVhXPW8n8V"
		postdata=
		(
		{
		"content": "[%currentversion%] New User"
		}
		)
		WebRequest := ComObjCreate("WinHttp.WinHttpRequest.5.1")
		WebRequest.Open("POST", url, false)
		WebRequest.SetRequestHeader("Content-Type", "application/json")
		WebRequest.Send(postdata) 
	}
}