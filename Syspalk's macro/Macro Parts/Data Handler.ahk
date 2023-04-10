readini(){ ;reads all the data from the ini file
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
}

readgui(){ ;reads all the data from the gui
	
}

savedata(){ ;saves all the data
	
}