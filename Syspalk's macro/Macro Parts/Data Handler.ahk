﻿global farmfield1
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
global clock
global gluedisp
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



readini(){ ;reads all the data from the ini file
	IniRead,farmfield1,Macro Parts/configs/Data.ini,farming,farmfield1
	IniRead,farmfield2,Macro Parts/configs/Data.ini,farming,farmfield2
	IniRead,farmfield3,Macro Parts/configs/Data.ini,farming,farmfield3
	IniRead,farmfield4,Macro Parts/configs/Data.ini,farming,farmfield4
	IniRead,farmpattern,Macro Parts/configs/Data.ini,farming,farmpattern
	IniRead,patternsize,Macro Parts/configs/Data.ini,farming,patternsize
	IniRead,convsetting,Macro Parts/configs/Data.ini,farming,convsetting
	IniRead,maxtimeonfield,Macro Parts/configs/Data.ini,farming,maxtimeonfield
	IniRead,swingtool,Macro Parts/configs/Data.ini,farming,swingtool
	IniRead,sprinkleralign,Macro Parts/configs/Data.ini,farming,sprinkleralign
	IniRead,pinewalkconv,Macro Parts/configs/Data.ini,farming,pinewalkconv
	IniRead,waitforpop,Macro Parts/configs/Data.ini,farming,waitforpop
	IniRead,shiftlock,Macro Parts/configs/Data.ini,farming,shiftlock
	IniRead,shrine,Macro Parts/configs/Data.ini,farming,shrine
	IniRead,donationamount,Macro Parts/configs/Data.ini,farming,donationamount
	IniRead,donationitem,Macro Parts/configs/Data.ini,farming,donationitem
	IniRead,bluebooster,Macro Parts/configs/Data.ini,farming,bluebooster
	IniRead,redbooster,Macro Parts/configs/Data.ini,farming,redbooster
	IniRead,whitebooster,Macro Parts/configs/Data.ini,farming,whitebooster
	IniRead,reglitter,Macro Parts/configs/Data.ini,farming,reglitter
	IniRead,plantfield1,Macro Parts/configs/Data.ini,planters,plantfield1
	IniRead,plantfield2,Macro Parts/configs/Data.ini,planters,plantfield2
	IniRead,plantfield3,Macro Parts/configs/Data.ini,planters,plantfield3
	IniRead,plantfield4,Macro Parts/configs/Data.ini,planters,plantfield4
	IniRead,plantfield5,Macro Parts/configs/Data.ini,planters,plantfield5
	IniRead,plantfield6,Macro Parts/configs/Data.ini,planters,plantfield6
	IniRead,plantfield7,Macro Parts/configs/Data.ini,planters,plantfield7
	IniRead,plantfield8,Macro Parts/configs/Data.ini,planters,plantfield8
	IniRead,plantfield9,Macro Parts/configs/Data.ini,planters,plantfield9
	IniRead,plantfield10,Macro Parts/configs/Data.ini,planters,plantfield10
	IniRead,plantfield11,Macro Parts/configs/Data.ini,planters,plantfield11
	IniRead,plantfield12,Macro Parts/configs/Data.ini,planters,plantfield12
	IniRead,planter1,Macro Parts/configs/Data.ini,planters,planter1
	IniRead,planter2,Macro Parts/configs/Data.ini,planters,planter2
	IniRead,planter3,Macro Parts/configs/Data.ini,planters,planter3
	IniRead,planter4,Macro Parts/configs/Data.ini,planters,planter4
	IniRead,planter5,Macro Parts/configs/Data.ini,planters,planter5
	IniRead,planter6,Macro Parts/configs/Data.ini,planters,planter6
	IniRead,planter7,Macro Parts/configs/Data.ini,planters,planter7
	IniRead,planter8,Macro Parts/configs/Data.ini,planters,planter8
	IniRead,planter9,Macro Parts/configs/Data.ini,planters,planter9
	IniRead,planter10,Macro Parts/configs/Data.ini,planters,planter10
	IniRead,planter11,Macro Parts/configs/Data.ini,planters,planter11
	IniRead,planter12,Macro Parts/configs/Data.ini,planters,planter12
	IniRead,lootplanters,Macro Parts/configs/Data.ini,planters,lootplanters
	IniRead,harviffull1,Macro Parts/configs/Data.ini,planters,harviffull1
	IniRead,harviffull2,Macro Parts/configs/Data.ini,planters,harviffull2
	IniRead,harviffull3,Macro Parts/configs/Data.ini,planters,harviffull3
	IniRead,plantdelay1,Macro Parts/configs/Data.ini,planters,plantdelay1
	IniRead,plantdelay2,Macro Parts/configs/Data.ini,planters,plantdelay2
	IniRead,plantdelay3,Macro Parts/configs/Data.ini,planters,plantdelay3
	IniRead,clock,Macro Parts/configs/Data.ini,resources,clock
	IniRead,gluedisp,Macro Parts/configs/Data.ini,resources,gluedisp
	IniRead,strawdisp,Macro Parts/configs/Data.ini,resources,strawdisp
	IniRead,bluebdisp,Macro Parts/configs/Data.ini,resources,bluebdisp
	IniRead,cocodisp,Macro Parts/configs/Data.ini,resources,cocodisp
	IniRead,tunnel,Macro Parts/configs/Data.ini,resources,tunnel
	IniRead,kingbeetle,Macro Parts/configs/Data.ini,resources,kingbeetle
	IniRead,ant,Macro Parts/configs/Data.ini,resources,ant
	IniRead,freeant,Macro Parts/configs/Data.ini,resources,freeant
	IniRead,buyant,Macro Parts/configs/Data.ini,resources,buyant
	IniRead,playtimer,Macro Parts/configs/Data.ini,resources,playtimer
	IniRead,vicious,Macro Parts/configs/Data.ini,resources,vicious
	IniRead,maxcombattime,Macro Parts/configs/Data.ini,resources,maxcombattime
	IniRead,lady,Macro Parts/configs/Data.ini,resources,lady
	IniRead,rhino,Macro Parts/configs/Data.ini,resources,rhino
	IniRead,spider,Macro Parts/configs/Data.ini,resources,spider
	IniRead,scorpion,Macro Parts/configs/Data.ini,resources,scorpion
	IniRead,mantis,Macro Parts/configs/Data.ini,resources,mantis
	IniRead,wolf,Macro Parts/configs/Data.ini,resources,wolf
	IniRead,mondo,Macro Parts/configs/Data.ini,resources,mondo
	IniRead,buff2,Macro Parts/configs/Data.ini,buffs,buff2
	IniRead,buff3,Macro Parts/configs/Data.ini,buffs,buff3
	IniRead,buff4,Macro Parts/configs/Data.ini,buffs,buff4
	IniRead,buff5,Macro Parts/configs/Data.ini,buffs,buff5
	IniRead,buff6,Macro Parts/configs/Data.ini,buffs,buff6
	IniRead,buff7,Macro Parts/configs/Data.ini,buffs,buff7
	IniRead,buff2time,Macro Parts/configs/Data.ini,buffs,buff2time
	IniRead,buff3time,Macro Parts/configs/Data.ini,buffs,buff3time
	IniRead,buff4time,Macro Parts/configs/Data.ini,buffs,buff4time
	IniRead,buff5time,Macro Parts/configs/Data.ini,buffs,buff5time
	IniRead,buff6time,Macro Parts/configs/Data.ini,buffs,buff6time
	IniRead,buff7time,Macro Parts/configs/Data.ini,buffs,buff7time
	IniRead,forward,Macro Parts/configs/Data.ini,keybinds,forward
	IniRead,left,Macro Parts/configs/Data.ini,keybinds,left
	IniRead,right,Macro Parts/configs/Data.ini,keybinds,right
	IniRead,backwards,Macro Parts/configs/Data.ini,keybinds,backwards
	IniRead,camleft,Macro Parts/configs/Data.ini,keybinds,camleft
	IniRead,camright,Macro Parts/configs/Data.ini,keybinds,camright
	IniRead,hotbar1,Macro Parts/configs/Data.ini,keybinds,hotbar1
	IniRead,hotbar2,Macro Parts/configs/Data.ini,keybinds,hotbar2
	IniRead,hotbar3,Macro Parts/configs/Data.ini,keybinds,hotbar3
	IniRead,hotbar4,Macro Parts/configs/Data.ini,keybinds,hotbar4
	IniRead,hotbar5,Macro Parts/configs/Data.ini,keybinds,hotbar5
	IniRead,hotbar6,Macro Parts/configs/Data.ini,keybinds,hotbar6
	IniRead,hotbar7,Macro Parts/configs/Data.ini,keybinds,hotbar7
	IniRead,Startkey,Macro Parts/configs/Data.ini,keybinds,Startkey
	IniRead,Stopkey,Macro Parts/configs/Data.ini,keybinds,Stopkey
	IniRead,Pausekey,Macro Parts/configs/Data.ini,keybinds,Pausekey
	IniRead,speed,Macro Parts/configs/Data.ini,settings,speed
	IniRead,joinmain,Macro Parts/configs/Data.ini,settings,joinmain
	IniRead,rebootserver,Macro Parts/configs/Data.ini,settings,rebootserver
	IniRead,reboottime,Macro Parts/configs/Data.ini,settings,reboottime
	IniRead,hookevent,Macro Parts/configs/Links.ini,webhooks,hookevent
	IniRead,hookerror,Macro Parts/configs/Links.ini,webhooks,hookerror
	IniRead,hookballoon,Macro Parts/configs/Links.ini,webhooks,hookballoon
	IniRead,main,Macro Parts/configs/Links.ini,private servers,main
	IniRead,alt,Macro Parts/configs/Links.ini,private servers,alt
	
	if (swingtool){
		global swingtool := "Checked"
	}
	if (sprinkleralign){
		global sprinkleralign := "Checked"
	}
	if (pinewalkconv){
		global pinewalkconv := "Checked"
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
}



savedata(){ ;saves all the data
	readgui()
	savehotkeys()
	IniWrite,%farmfield1%,Macro Parts/configs/Data.ini,farming,farmfield1
	IniWrite,%farmfield2%,Macro Parts/configs/Data.ini,farming,farmfield2
	IniWrite,%farmfield3%,Macro Parts/configs/Data.ini,farming,farmfield3
	IniWrite,%farmfield4%,Macro Parts/configs/Data.ini,farming,farmfield4
	IniWrite,%farmpattern%,Macro Parts/configs/Data.ini,farming,farmpattern
	IniWrite,%patternsize%,Macro Parts/configs/Data.ini,farming,patternsize
	IniWrite,%convsetting%,Macro Parts/configs/Data.ini,farming,convsetting
	IniWrite,%maxtimeonfield%,Macro Parts/configs/Data.ini,farming,maxtimeonfield
	IniWrite,%swingtool%,Macro Parts/configs/Data.ini,farming,swingtool
	IniWrite,%sprinkleralign%,Macro Parts/configs/Data.ini,farming,sprinkleralign
	IniWrite,%pinewalkconv%,Macro Parts/configs/Data.ini,farming,pinewalkconv
	IniWrite,%waitforpop%,Macro Parts/configs/Data.ini,farming,waitforpop
	IniWrite,%shiftlock%,Macro Parts/configs/Data.ini,farming,shiftlock
	IniWrite,%shrine%,Macro Parts/configs/Data.ini,farming,shrine
	IniWrite,%donationamount%,Macro Parts/configs/Data.ini,farming,donationamount
	IniWrite,%donationitem%,Macro Parts/configs/Data.ini,farming,donationitem
	IniWrite,%bluebooster%,Macro Parts/configs/Data.ini,farming,bluebooster
	IniWrite,%redbooster%,Macro Parts/configs/Data.ini,farming,redbooster
	IniWrite,%whitebooster%,Macro Parts/configs/Data.ini,farming,whitebooster
	IniWrite,%reglitter%,Macro Parts/configs/Data.ini,farming,reglitter
	IniWrite,%plantfield1%,Macro Parts/configs/Data.ini,planters,plantfield1
	IniWrite,%plantfield2%,Macro Parts/configs/Data.ini,planters,plantfield2
	IniWrite,%plantfield3%,Macro Parts/configs/Data.ini,planters,plantfield3
	IniWrite,%plantfield4%,Macro Parts/configs/Data.ini,planters,plantfield4
	IniWrite,%plantfield5%,Macro Parts/configs/Data.ini,planters,plantfield5
	IniWrite,%plantfield6%,Macro Parts/configs/Data.ini,planters,plantfield6
	IniWrite,%plantfield7%,Macro Parts/configs/Data.ini,planters,plantfield7
	IniWrite,%plantfield8%,Macro Parts/configs/Data.ini,planters,plantfield8
	IniWrite,%plantfield9%,Macro Parts/configs/Data.ini,planters,plantfield9
	IniWrite,%plantfield10%,Macro Parts/configs/Data.ini,planters,plantfield10
	IniWrite,%plantfield11%,Macro Parts/configs/Data.ini,planters,plantfield11
	IniWrite,%plantfield12%,Macro Parts/configs/Data.ini,planters,plantfield12
	IniWrite,%planter1%,Macro Parts/configs/Data.ini,planters,planter1
	IniWrite,%planter2%,Macro Parts/configs/Data.ini,planters,planter2
	IniWrite,%planter3%,Macro Parts/configs/Data.ini,planters,planter3
	IniWrite,%planter4%,Macro Parts/configs/Data.ini,planters,planter4
	IniWrite,%planter5%,Macro Parts/configs/Data.ini,planters,planter5
	IniWrite,%planter6%,Macro Parts/configs/Data.ini,planters,planter6
	IniWrite,%planter7%,Macro Parts/configs/Data.ini,planters,planter7
	IniWrite,%planter8%,Macro Parts/configs/Data.ini,planters,planter8
	IniWrite,%planter9%,Macro Parts/configs/Data.ini,planters,planter9
	IniWrite,%planter10%,Macro Parts/configs/Data.ini,planters,planter10
	IniWrite,%planter11%,Macro Parts/configs/Data.ini,planters,planter11
	IniWrite,%planter12%,Macro Parts/configs/Data.ini,planters,planter12
	IniWrite,%lootplanters%,Macro Parts/configs/Data.ini,planters,lootplanters
	IniWrite,%harviffull1%,Macro Parts/configs/Data.ini,planters,harviffull1
	IniWrite,%harviffull2%,Macro Parts/configs/Data.ini,planters,harviffull2
	IniWrite,%harviffull3%,Macro Parts/configs/Data.ini,planters,harviffull3
	IniWrite,%plantdelay1%,Macro Parts/configs/Data.ini,planters,plantdelay1
	IniWrite,%plantdelay2%,Macro Parts/configs/Data.ini,planters,plantdelay2
	IniWrite,%plantdelay3%,Macro Parts/configs/Data.ini,planters,plantdelay3
}



savehotkeys(){
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
	
	IniWrite,%forward%,Macro Parts/configs/Data.ini,keybinds,forward
	IniWrite,%left%,Macro Parts/configs/Data.ini,keybinds,left
	IniWrite,%right%,Macro Parts/configs/Data.ini,keybinds,right
	IniWrite,%backwards%,Macro Parts/configs/Data.ini,keybinds,backwards
	IniWrite,%camleft%,Macro Parts/configs/Data.ini,keybinds,camleft
	IniWrite,%camright%,Macro Parts/configs/Data.ini,keybinds,camright
	IniWrite,%hotbar1%,Macro Parts/configs/Data.ini,keybinds,hotbar1
	IniWrite,%hotbar2%,Macro Parts/configs/Data.ini,keybinds,hotbar2
	IniWrite,%hotbar3%,Macro Parts/configs/Data.ini,keybinds,hotbar3
	IniWrite,%hotbar4%,Macro Parts/configs/Data.ini,keybinds,hotbar4
	IniWrite,%hotbar5%,Macro Parts/configs/Data.ini,keybinds,hotbar5
	IniWrite,%hotbar6%,Macro Parts/configs/Data.ini,keybinds,hotbar6
	IniWrite,%hotbar7%,Macro Parts/configs/Data.ini,keybinds,hotbar7
	IniWrite,%Startkey%,Macro Parts/configs/Data.ini,keybinds,Startkey
	IniWrite,%Stopkey%,Macro Parts/configs/Data.ini,keybinds,Stopkey
	IniWrite,%Pausekey%,Macro Parts/configs/Data.ini,keybinds,Pausekey
}