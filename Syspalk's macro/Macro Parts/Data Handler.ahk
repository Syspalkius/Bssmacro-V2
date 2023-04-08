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
}

readgui(){ ;reads all the data from the gui
	
}

savedata(){ ;saves all the data
	
}