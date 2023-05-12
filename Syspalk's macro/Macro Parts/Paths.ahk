pinetree(nectar){
	pinetreestart:
	eventlog("Going to pinetree")
	if (!pinewalkconv || firstrun){
		global firstrun := false
		Reset()
	}
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,pinetreestart
	}
	camrotate(3,"r")
	send e
	Send {Shift}
	sleep 800
	SendSpace()
	Send {Shift}
	SendSpace()
	sleep 8000
	if (nectar = true){
		camrotate(1,"l")
		walk(3000,"f")
		walk(3000,"r")
		Send {Shift}
		sleep 100
		Send {Shift}
		walk(300,"l") 
		sleep 1000
	}
	else{
		walk(5000,"f")
		walk(1800,"b")
	}
}

pineapple(nectar){
	pineapstart:
	eventlog("Going to pineapple")
	reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,pineapstart
	}
	Send e
	camrotate(2,"l")
	Send {shift}
	sleep 1900
	Sendspace()
	Sendspace()
	Send {shift}
	sleep 2650
	camrotate(2,"l")
	Send {Shift}
	sleep 500
	Send {Shift}
	SendSpace()
	sleep 2000
	if (nectar = true){
		walk(4000,"f")
		walk(4000,"l")
	}
}

sunf(nectar){
	eventlog("Going to sunflower")
	SendInput {Escape}
	sleep 100
	SendInput {r}
	sleep 100
	SendInput {Enter}
	sleep 8000
	Reset()
	walk(7000,"r")
	Sendspace()
	walk(400,"r")
	sleep 1000
	walk(2000,"r")
	walk(5500,"b")
	if (nectar = true){
		walk(5000,"r")
		walk(6000,"f")
		walk(300,"b")
		walk(175,"l")
		sleep 200
	}else{
		walk(750,"l")
	}
} 

pump(nectar){
	pumpstart:
	eventlog("Going to pumpkin")
	reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,pumpstart
	}
	camrotate(3,"r")
	Send e
	Send {Shift}
	sleep 1000
	SendSpace()
	SendSpace()
	Send {Shift}
	sleep 3000
	camrotate(1,"r")
	SendSpace()
	sleep 2000
	walk(1000,"f")
	if (nectar = true){
		walk(4000,"f")
		sleep 100
		walk(75,"b")
		sleep 250
		Send {Shift}
		Send {Space Down}
		walk(7000,"r")
		Send {Space Up}
		Send {Shift}
		sleep 2000
		walk(1000,"f")
		walk(250,"l")
	}
}

bluf(nectar){
	blufstart:
	eventlog("Going to blue flower")
	Reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,blufstart
	}
	camrotate(2,"l")
	send e
	send {Shift}
	sleep 620
	sendSpace()
	sendSpace()
	send {Shift}
	sleep 3200
	sendSpace()
	sleep 1250
	walk(1500,"l")
	walk(1000,"r")
	if (nectar){
		walk(4500,"r")
		Send {Shift}
		walk(4000,"b")
		Send {Shift}
		loop 20{
			walk(50,"l")
			Send e
		}
		walk(1500,"r")
		walk(300,"l")
	}
}

straw(nectar){
	strawstart:
	eventlog("Going to strawberry")
	Reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,strawstart
	}
	camrotate(2,"r")
	Send e
	Send {Shift}
	sleep 1000
	SendSpace()
	SendSpace()
	Send {Shift}
	sleep 1700
	SendSpace()
	sleep 3000
	walk(4000,"r")
	walk(3000,"f")
	if (nectar = true){
		walk(100,"b")
		walk(100,"l")
	}
	else{
		walk(1000,"b")
		walk(1000,"l")
	}
}

coco(nectar){
	cocostart:
	eventlog("Going to coconut")
	Reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,cocostart
	}
	walkhold("r","Down")
	sleep 4000
	SendSpace()
	sleep 1500
	walkhold("r","Up")
	walkhold("f","Down")
	sleep 2000
	SendSpace()
	sleep 3000
	SendSpace()
	sleep 1000
	SendSpace()
	sleep 4000
	walkhold("f","Up")
	camrotate(4,"r")
	Send {Shift}
	walk(75,"f")
	sleep 75
	camrotate(4,"r")
	Send {Shift}
	walk(1000,"l")
	if(nectar = true){
		walk(1500,"r")
		walk(200,"l")
		sleep 100
	}
}

dande(nectar){
	dandstart:
	eventlog("Going to dandelion")
	Reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,dandstart
	}
	camrotate(1,"l")
	send e
	send {Shift}
	sleep 600
	sendSpace()
	sendSpace()
	send {Shift}
	sleep 1700
	sendSpace()
	Sleep 3000
	camrotate(1,"l")
	if (nectar = true){
		walk(3000,"f")
		walk(5000,"l")
		camrotate(1,"l")
		loop 30{
			walk(100,"b")
			Send e
		}
		walk(1000,"f")
	}
	else{
		camrotate(2,"r")
		walk(750,"f")
		walk(777,"r")
		camrotate(2,"r")
	}
} 

spider(nectar){
	spidestart:
	eventlog("Going to spider")
	reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,spidestart
	}
	camrotate(2,"l")
	Send e
	sleep 100
	SendSpace()
	sleep 800
	SendSpace()
	sleep 200
	SendSpace()
	sleep 2000
	walk(4000,"l")
	walk(4000,"b")
	if not (nectar){
		camrotate(2,"l")
		walk(1000,"b")
		walk(1000,"r")
	}
}

rose(nectar){
	StartRose:
	eventlog("Going to rose")
	Reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,StartRose
	}
	camrotate(2,"r")
	Send e
	Send {Shift}
	sleep 125
	SendSpace()
	sleep 100
	Send {Shift}
	sleep 250
	SendSpace()
	sleep 2500
	SendSpace()
	sleep 3000
	camrotate(2,"r")
	loop 25{
		walk(100,"f")
		walk(100,"r")
	}
	if (nectar){
		walk(75,"b")
		walk(75,"l")
	}
	else{
		walk(1000,"b")
		walk(1000,"l")
	}
}

mush(nectar){
	startmush:
	eventlog("Going to mushroom")
	Reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,startmush
	}
	camrotate(2,"l")
	Send e
	Send {shift}
	SendSpace()
	sleep 300
	Send {shift}
	Sendspace()
	sleep 666
	SendSpace()
	sleep 3000
	camrotate(2,"l")
	if (nectar = true){
		walk(3000,"f")
		loop 6{
			walk(750,"r")
			walk(750,"f")
		}
		walk(200,"l")
		walk(100,"b")
	}
	else{
		walk(2250,"f")
		walk(500,"l")
	}
}

bamboo(nectar){
	startbamb:
	eventlog("Going to bamboo")
	Reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,startbamb
	}
	camrotate(2,"l")
	Send e
	Send {Shift}
	sleep 150
	SendSpace()
	sleep 950
	Send {Shift}
	SendSpace()
	sleep 2400
	SendSpace()
	camrotate(4,"l")
	sleep 5000
	if(nectar = true){
		camrotate(4,"l")
		walk(3000,"l")
		Send {Shift}
		sleep 100
		Send {Shift}
		walk(5000,"f")
		camrotate(4,"l")
		Send {Shift}
		sleep 100
		Send {Shift}
		loop 20{
			walk(50,"f")
			Send e
		}
		walk(3000,"b")
		walk(300,"f")
	}
}

mountain(nectar){
	startmount:
	eventlog("Going to mountain")
	Reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,startmount
	}
	Send e
	sleep 4000
	if(nectar = false){
		walk(400,"l")
		walk(400,"f")
	}
} 

cactus(nectar){
	eventlog("Going to cactus")
	if (nectar = true){
		pump(true)
		walk(1000,"r")
		walk(5000,"b")
		walk(250,"l")
	}
	else{
		pump(false)
		camrotate(2,"r")
		walk(2500,"r")
	}
}

stump(nectar){
	startstump:
	eventlog("Going to stump")
	Reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,startstump
	}
	camrotate(2,"l")
	send e
	send {Shift}
	sleep 1800
	sendSpace()
	sendSpace()
	send {Shift}
	sleep 5000
	sendSpace()
	sleep 2000
	walk(1750,"l")
	if (nectar = true){
		walk(4000,"f")
		Send {Shift}
		camrotate(2,"l")
		walk(4000,"f")
		camrotate(2,"r")
		walk(500,"f")
		camrotate(5,"l")
		Send {Shift}
		camrotate(4,"r")
		zoomout()
		walk(500,"b")
		SendSpace()
		walk(500,"b")
		loop 30{
			walk(100,"b")
			Send e
		}
		walk(1000,"f")
	}
}

pep(nectar){
	startpep:
	eventlog("Going to pepper")
	Reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,startpep
	}
	walkhold("r","Down")
	sleep 3500
	SendSpace()
	sleep 1000
	walkhold("r","Up")
	walkhold("f","Down")
	sleep 1000
	SendSpace()
	sleep 2750
	SendSpace()
	sleep 1000
	SendSpace()
	sleep 3000
	walkhold("f","up")
	camrotate(4,"r")
	Send {Shift}
	walk(75,"f")
	camrotate(4,"r")
	zoomout()
	sleep 50
	Send {Shift}
	SendSpace()
	walk(4000,"f")
	SendSpace()
	walkhold("r","Down")
	walk(5000,"f")
	sleep 1700
	walkhold("r","Up")
	Send {Shift}
	camrotate(3,"l")
	walk(75,"f")
	sleep 50
	Send {Shift}
	camrotate(3,"l")
	walkhold("r","Down")
	sleep 1200
	camrotate(2,"l")
	SendSpace()
	sleep 1000
	walkhold("r","Up")
	if not (nectar){
		walkhold("r","Up")
		walk(550,"r")
		camrotate(2,"r")
	}
	if (nectar = true){
		camrotate(2,"l")
		Sleep 3000
		walkhold("r","Up")
		camrotate(2,"l")
		Send {Shift}
		sleep 300
		Send {Shift}
		loop 25{
			walk(100,"f")
			Send e
		}
		walk(1000,"b")
	}
}

clover(nectar){
	eventlog("Going to clover")
	Reset()
	walktocannon()
	camrotate(2,"l")
	Send e
	Send {Shift}
	sleep 100
	SendSpace()
	sleep 200
	Send {Shift}
	SendSpace()
	sleep 4000
	SendSpace()
	sleep 750
	walk(500,"f")
	camrotate(2,"r")
	SendInput {PGUP}
	if(nectar){
		SendInput {PGDN}
		camrotate(2,"l")
		walk(5000,"r")
		Send {Shift}
		sleep 100
		Send {Shift}
		walk(50,"l")
		walk(5000,"b")
		Send {Shift}
		sleep 100
		Send {Shift}
		walk(100,"r")
		Send {Shift}
		sleep 100
		Send {Shift}
		walk(2000,"f")
		Send {Shift}
		sleep 100
		Send {Shift}
		walk(100,"b")
		Send {Shift}
		sleep 100
		Send {Shift}
		SendSpace()
		walk(500,"f")
		walk(250,"l")
	}
}

pinewalktohive(pinetree){
	if (pinewalkconv && pinetree){
		eventlog("Walking back to the hive")
		sleep 100
		camrotate(1,"r")
		walkhold("r","Down")
		walkhold("f","Down")
		sleep 4000
		walkhold("f","Up")
		sleep 8000
		walkhold("r","Up")
		camrotate(4,"r")
		Send {Shift}
		sleep 100
		Send {Shift}
		walk(8000,"f")
		walk(1000,"r")
		walkhold("f","Down")
		Send {Shift}
		SendSpace()
		sleep 300
		SendSpace()
		sleep 1000
		walkhold("f","Up")
		sleep 7000
		Send {Shift}
		walk(2000,"f")
		walk(390,"b")
		starttimer := A_TickCount
		walkhold("l","Down")
		WinGetPos , windowX, windowY, windowWidth, windowY, Roblox
		WindowY := windowY/3
		while (1){
			ImageSearch,FoundX,FoundY,0,0,A_ScreenWidth,WindowY,*10 Macro Parts/images/e.png 
			if (errorlevel = 0){
				walkhold("l","Up")
				zoomout()
				loopbreak := A_TickCount
				if (convert = true){
					Send e
					while (1){
						if (SearchFunction("e.png",40)[1] = 1){
							sleep 5000
							break
						}
						if (A_TickCount - loopbreak > 360000){
							break
						}
						safetycheck()
					}	
				}
				walk(750,"f")
				walkhold("l","Up")
				return
			}else if (A_TickCount - starttimer > 1000){
				walkhold("l","Up")
				break
			}
		}
		starttimer := A_TickCount
		walkhold("r","Down")
		while (1){
			ImageSearch,FoundX,FoundY,0,0,A_ScreenWidth,WindowY,*10 Macro Parts/images/e.png 
			if (errorlevel = 0){
				walkhold("r","Up")
				zoomout()
				loopbreak := A_TickCount
				if (convert = true){
					Send e
					while (1){
						if (SearchFunction("e.png",40)[1] = 1){
							sleep 5000
							break
						}
						if (A_TickCount - loopbreak > 360000){
							break
						}
						safetycheck()
					}	
				}
				walk(750,"f")
				walkhold("r","Up")
				return
			}else if (A_TickCount - starttimer > 4000){
				walkhold("r","Up")
				break
			}
		}
	}
	Errorlog("Couldn't find E button to convert at hive")
	Reset()
}

Clock(){
	Reset()
	walktocannon()
	EventLog("Going to wealthclock")
	camrotate(1,"l")
	send e
	sleep 1425
	send {Shift}
	sendSpace()
	sendSpace()
	sleep 200
	send {Shift}
	sleep 7800
	camrotate(1,"l")
	walk(3000,"r")
	walk(3000,"f")
	Send {Shift}
	SendSpace()
	Send {Shift}
	Send {w up}
	Send {z up}
	walk(3000,"l")
	sleep 100
	Send {a up}
	Send {q up}
	SendSpace()
	walk(500,"b")
	walk(150,"l")
	sleep 1000
	if (SearchFunction("e.png",10)[1] = 1){
		ErrorLog("Failed to grab Wealth Clock")
	}
	sleep 1000
	Send e
	sleep 1000
}

redbooster(){
	EventLog("Going to red booster")
	sunf(false)
	walk(4000,"r")
	walk(5000,"f")
	SendSpace()
	walk(4000,"r")
	walk(2000,"b")
	walk(500,"l")
	walk(500,"b")
	walk(2000,"r")
	walk(3000,"f")
	walk(50,"b")
	walk(2000,"l")
	sleep 1000
	if (SearchFunction("e.png",10)[1] = 1){
		ErrorLog("Failed to grab red booster")
	}
	sleep 1000
	Send e
	sleep 1000
}

bluebooster(){
	EventLog("Going to blue booster")
	bluf(false)
	walk(5500,"r")
	walk(5000,"f")
	walk(1500,"l")
	walk(300,"b")
	walk(400,"l")
	walk(4500,"f")
	SendSpace()
	walkhold("f","Down")
	sleep 3000
	camrotate(2,"r")
	sleep 4000
	camrotate(2,"r")
	sleep 5000
	Send {Shift}
	camrotate(4,"r")
	SendSpace()
	Send {Shift}
	sleep 175
	camrotate(2,"l")
	sleep 5000
	walkhold("f","Up")
	sleep 1000
	if (SearchFunction("e.png",10)[1] = 1){
		ErrorLog("Failed to grab blue booster")
	}
	sleep 1000
	Send e
	sleep 1000
}

whitebooster(){
	EventLog("Going to mountain booster")
	Reset()
	walktocannon()
	Send e
	sleep 6000
	walk(7000,"r")
	sleep 1000
	if (SearchFunction("e.png",10)[1] = 1){
		ErrorLog("Failed to grab mountain booster")
	}
	sleep 1000
	Send e
	sleep 1000
}

shrine(){
	readgui()
	EventLog("Going to do shrine")
	item := "Shrine" . donationitem . ".png"
	clicks := donationamount - 1
	cub("off.png")
	
	r(true)
	Reset()
	walktocannon()
	walkhold("r","Down")
	sleep 4000
	SendSpace()
	sleep 1500
	walkhold("r","Up")
	walkhold("f","Down")
	sleep 2000
	SendSpace()
	sleep 3000
	SendSpace()
	sleep 1000
	SendSpace()
	sleep 4000
	walkhold("f","up")
	camrotate(4,"r")
	Send {Shift}
	walk(75,"f")
	camrotate(4,"r")
	Send ooooo
	sleep 50
	Send {Shift}
	SendSpace()
	walk(4000,"f")
	walk(1000,"r")
	walk(100,"b")
	SendSpace()
	walkhold("r","Down")
	walk(6000,"f")
	sleep 1700
	
	
	walkhold("r","Up")
	Send {Shift}
	camrotate(3,"l")
	walk(75,"f")
	sleep 50
	Send {Shift}
	camrotate(3,"l")
	walkhold("r","Down")
	sleep 1200
	camrotate(2,"l")
	SendSpace()
	sleep 600
	walkhold("r","Up")
	walk(800,"r")
	walk(1100,"b")
	camrotate(2,"r")
	
	
	walk(5000,"r")
	camrotate(2,"l")
	Send {Shift}
	SendSpace()
	sleep 400
	walk(150,"f")
	Send {Shift}
	camrotate(2,"r")
	sleep 300
	SendSpace()
	walk(500,"r")
	breaktime := A_TickCount
	while (1){
		if (SearchFunction("e.png",10)[1] = 0){
			break
		}else{
			walk(50,"r")
		}
		if (A_TickCount - breaktime > 10000){
			ErrorLog("Failed to do shrine /// Cause : Failed to arrive at donation pad")
			Reconnect()
			cub("on.png")
			return
		}
	}
	sleep 250
	Send e
	sleep 2000
	mouseMove,A_ScreenWidth/2,A_ScreenHeight/1.3
	sleep 250
	Send {Click Left}
	maxshrinetrytime := A_TickCount
	while (1){
		sleep 500
		if (SearchFunction(item,10)[1] = 0){
			sleep 1000
			if (SearchFunction(item,10)[1] = 0){
				sleep 500
				mousemove,SearchFunction("ShrineAdd.png",10)[2],SearchFunction("ShrineAdd.png",10)[3]
				sleep 250
				loop %clicks%{
					Send {Click Left}
					sleep 5
				}
				break
			}
		}else{
			mousemove,SearchFunction("ShrineArrow.png",10)[2],SearchFunction("ShrineArrow.png",10)[3]
			sleep 250
			Send {Click Left}
		}
		if (A_TickCount - maxshrinetrytime > 60000){
			ErrorLog("Failed to do shrine /// Cause : Failed to find donation item")
			Reconnect()
			cub("on.png")
			return
		}
	}
	maxdonatebuttonsearchtime := A_TickCount
	while (1){
		if (SearchFunction("ShrineDonate.png",10)[1] = 0){
			mousemove,SearchFunction("ShrineDonate.png",10)[2],SearchFunction("ShrineDonate.png",10)[3]
			sleep 250
			Send {Click Left}
			break
		}
		if (A_TickCount - maxdonatebuttonsearchtime > 5000){
			Errorlog("Failed to do shrine /// cause : Failed to find donate button")
			Reconnect()
			cub("on.png")
			return
		}
	}
	sleep 2000
	mouseMove,A_ScreenWidth/2,A_ScreenHeight/1.3
	sleep 250
	loop 20{
		Send {Click Left}
		sleep 5
	}
	sleep 2500
	walk(500,"f")
	walk(1000,"l")
	loop 4{
		walk(2000,"r")
		walk(250,"b")
		walk(2000,"l")
		walk(250,"b")
	}
	cub("on.png")
	EventLog("Succesfully donated to shrine")
}