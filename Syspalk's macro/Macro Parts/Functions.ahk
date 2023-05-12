walk(time,dir){ ;makes the character do walking and stuff like that.
	readgui()
	distance := (time/speed)*28
	if (dir = "f"){
		Send {%forward% down}
		sleep %distance%
		Send {%forward% up}	
	}else if (dir = "l"){
		Send {%left% down}
		sleep %distance%
		Send {%left% up}
	}else if (dir = "b"){
		Send {%backwards% down}
		sleep %distance%
		Send {%backwards% up}
	}else if (dir = "r"){
		Send {%right% down}
		sleep %distance%
		Send {%right% up}
	}
}

walkhold(dir,setting){ ;basically just the same as keydown but without a keyup after.
	getkeyinfo()
	if (dir = "f"){
		Send {%forward% %setting%}
	}else if (dir = "l"){
		Send {%left% %setting%}
	}else if (dir = "b"){
		Send {%backwards% %setting%}
	}else if (dir = "r"){
		Send {%right% %setting%}
	}
}

SendSpace(){ ;makes the character jump.
	Send {space down}
	sleep 100
	Send {space up}
}

camrotate(amount,dir){ ;just rotates the damn camera
	getkeyinfo()
	if (dir = "l"){
		dir := camleft
	}else{
		dir := camright
	}
	loop %amount%{
		Send %dir%
	}
}

SendHotbar(var){ ;sends key to the hotbar.
	getkeyinfo()
	var := hotbar%var%
	Send %var%
}

r(wait){ ;kills your character
	SendInput {Escape}
	sleep 250
	SendInput {r}
	sleep 250
	SendInput {Enter}
	sleep 250
	if(wait){
		sleep 8000
	}
}

walktocannon(){ ;makes the character walk to the cannon.
	attempts := 0
	cannonstart:
	if (attempts != 0){
		Reset()
	}
	attempts++
	readgui()
	sleep 100
	walk(1000,"f") 
	walkhold("r","Down")
	loop 55{
		if (SearchFunction("cannon.png",50)[1] = 0){
			break
		}
		sleep 100
	}
	sleep 750
	sendSpace()
	sleep 300
	walkhold("r","up")
	WinGetPos , windowX, windowY, windowWidth, windowY, Roblox
	WindowY := windowY/3
	btimer := A_Tickcount
	sleep 300
	walkhold("r","Down")
	loop{
		ImageSearch,foundx,foundy,0,0,A_ScreenWidth,windowY,*10 Macro Parts/images/e.png 
		if (errorlevel = 0){
			walkhold("r","Up")
			break
		}
		if (A_Tickcount - btimer > 5000){
			if (attempts > 2){
				ErrorLog("Reconnected (Issue : E button for cannon wasn't detected after too many tries)")
				walkhold("r","Up")
				;Reconnect()
				global reconnectedcannon := true
				return
			}else{
				walkhold("r","Up")
				goto,cannonstart
			}
		}
	}
} 

Reset(){ ;this will make your character commit suicide and also has some crapy anti bear glitch protection which only works half of the time but it's better than other macros which will let your character fling all the way to the onett house instead of going to pepper
	Retryy:
	readgui()
	r(false)
	sleep 2000
	breaktimer := A_TickCount
	resetagain := false
	while (1){ ;search for bear
		if (SearchFunction("BrownBear.png",40)[1] = 0 || SearchFunction("BlackBear.png",40)[1] = 0 || SearchFunction("MotherBear.png",40)[1] = 0 || SearchFunction("PandaBear.png",40)[1] = 0 || SearchFunction("PolarBear.png",40)[1] = 0 || SearchFunction("Sciencebear.png",40)[1] = 0 || ){
			resetagain := true ;if bear detected set to true
		}
		if (A_TickCount - breaktimer > 6500){
			break
		}
	}
	if (resetagain){
		goto, Retryy ;if bear detected go back to start
	}
	breaktimer := A_TickCount
	while (1){
		sleep 100
		if (SearchFunction("hive.png",30)[1] = 0 || SearchFunction("hiven.png",30)[1] = 0){ ;look for hive image
			global Fails := 0
			camrotate(4,"l")
			zoomout()
			break
		}
		else{
			camrotate(4,"l")
		}
		if (A_TickCount - breaktimer > 15000){
			ErrorLog("Failed to detect hive image")
			if (Fails = 1){
				global Fails := 0
				ErrorLog("Reconnected (Issue : Hive image wasn't found too many times in a row)")
				;Reconnect()
				goto,Retryy
			}
			else{
				global Fails := 1
				goto,Retryy
			}
		}
	}
	zoomout()
	breaktimer := A_TickCount
	if (convsetting && allowconvert && SearchFunction("e.png",10)[1] = 0){ ;convert balloon if reset convert is sellected
		Send e
		while (1){
			if (SearchFunction("e.png",40)[1] != 0){
				sleep 5000
				break
			}
			if (A_TickCount - breaktimer > 360000){
				break
			}
			;safetycheck()
		}	
	}
}

SearchFunction(image,variation){ ;imagesearch in function so it's nicer to use.
	mousemove,A_ScreenWidth/2,A_ScreenHeight/2
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *%variation% Macro Parts\images\%image%
	return [ErrorLevel,FoundX,FoundY]
} 


GOField(field,nectar := false){ ;function that takes input and turns it in to an output that lets you go to the field and stuff like that.
	if (field = "Bamboo"){
		bamboo(nectar)
	}else if (field = "Blue Flower"){
		bluf(nectar)
	}else if (field = "Cactus"){
		cactus(nectar)
	}else if (field = "Coconut"){
		coco(nectar)
	}else if (field = "Dandelion"){
		dande(nectar)
	}else if (field = "Mountain"){
		mountain(nectar)
	}else if (field = "Mushroom"){
		mush(nectar)
	}else if (field = "Pepper"){
		pep(nectar)
	}else if (field = "Pine Tree"){
		pinetree(nectar)
	}else if (field = "Pineapple"){
		pineapple(nectar)
	}else if (field = "Pumpkin"){
		pump(nectar)
	}else if (field = "Rose"){
		rose(nectar)
	}else if (field = "Spider"){
		spider(nectar)
	}else if (field = "Strawberry"){
		straw(nectar)
	}else if (field = "Stump"){
		stump(nectar)
	}else if (field = "Sunflower"){
		sunf(nectar)
	}else if (field = "Clover"){
		clover(nectar)
	}
}

GoFarm(field){ ;function for farming.
	gofarmstart:
	;timerchecks()
	readgui()
	GoField(field)
	if (field = "Pine Tree"){
		pinetree := true
	}else{
		pinetree := false
	}
	breaktimer := A_TickCount
	maxfieldtime := maxtimeonfield * 60000
	zoomout()
	Sendhotbar(1)
	;checkbufftimer()
	toggleshiftlock()
	poptimer := 99999999999999999999999999999999999999
	firstpop := true
	while(1){
		
		loop 3{
			readgui()
			pattern(pinetree)
			zoomout()
			if (sprinkleralign && patternsize > 10){
				movetosat(10)
			}
			
			if (A_TickCount - breaktimer > maxfieldtime){
				if (SearchFunction("pop.png",10)[1] = 1 && A_TickCount - poptimer < 45000){
					if (firstpop){
						firstpop := false
						poptimer := A_TickCount
					}
				}else{
					toggleshiftlock()
					pinewalktohive(pinetree)
					return
				}
			}
			
			if (bagcheck() = 1){
				toggleshiftlock()
				pinewalktohive(pinetree)
				return
			}
		}
		
		checkbufftimer()
		;safetycheck()
		if(reconnected = true){
			global reconnected := false
			return
		}
	}
}

bagcheck(){ ;checks if the bag is full I should have done this with a return but at the time I didn't know how that stuff worked but this works too I guess.
	if (SpecificPixelSearchFunction(0x1700F7,2,0,0,A_ScreenWidth,150)[1] = 0){
		return true
	}
}

movetosat(var){
	winUp := A_ScreenHeight / 2.1
	winDown := A_ScreenHeight / 1.9
	winLeft := A_ScreenWidth / 2.1
	winRight := A_ScreenWidth /1.9
	
	if (SearchFunction("sprinkler.png",25)[2] < WinLeft && SearchFunction("sprinkler.png",25)[1] = 0){
		walk(100,"l")
		loop %var%{
			if (SearchFunction("sprinkler.png",25)[2] < WinLeft && SearchFunction("sprinkler.png",25)[1] = 0){
				walk(100,"l")
			}
		}
	}else if (SearchFunction("sprinkler.png",25)[2] > WinRight && SearchFunction("sprinkler.png",25)[1] = 0){
		walk(100,"r")
		loop %var%{
			if (SearchFunction("sprinkler.png",25)[2] > WinRight && SearchFunction("sprinkler.png",25)[1] = 0){
				walk(100,"r")
			}
		}
	}
	
	if (SearchFunction("sprinkler.png",25)[3] < WinDown && SearchFunction("sprinkler.png",25)[1] = 0){
		walk(100,"f")
		loop %var%{
			if (SearchFunction("sprinkler.png",25)[3] < WinDown && SearchFunction("sprinkler.png",25)[1] = 0){
				walk(100,"f")
			}
		}
	}else if (SearchFunction("sprinkler.png",25)[3] > WinUp && SearchFunction("sprinkler.png",25)[1] = 0){
		walk(100,"b")
		loop %var%{
			if (SearchFunction("sprinkler.png",25)[3] > WinUp && SearchFunction("sprinkler.png",25)[1] = 0){
				walk(100,"b")
			}
		}
	}
}

SpecificPixelSearchFunction(color,variation,x1,y1,x2,y2){ ;pixelsearch in a function.
	mousemove,A_ScreenWidth/2,A_ScreenHeight/2 ;move mouse to 0,0
	PixelSearch, FoundX, FoundY,%x1%,%y1%,%x2%,%y2%,%color%, *%variation%,fast
	return [ErrorLevel,FoundX,FoundY]
}

toggleshiftlock(){
	readgui()
	if (shiftlock){
		Send Shift
	}
}

zoomout(){
	loop 10{
		Send o
		sleep 1
	}
}

checkbufftimer(){ ;checks the timers for the hotbar buffs.
	readgui()
	readtimers()
	while (A_Index < 8){
		if (buff%A_Index%){
			if (A_TickCount - buff%A_Index%timer > buff%A_Index%time*1000){
				SendHotbar(A_Index)
				IniWrite,%A_TickCount%,Macro Parts/configs/Timers.ini,buffs,buff%A_Index%timer
			}
		}
	}
}

hours(time){
	return time*3600000
}

checktimers(){
	readtimers()
	if (A_TickCount - 30mtimer > hours(0.5)){
		IniWrite,%A_TickCount%,Macro Parts/configs/Timers.ini,timers,30mtimer

	}
	if (A_TickCount - 1htimer > hours(1)){
		IniWrite,%A_TickCount%,Macro Parts/configs/Timers.ini,timers,1htimer
		readgui()
		if (clock){
			Clock()
		}
		if (redbooster){
			redbooster()
		}
		if (whitebooster){
			whitebooster()
		}
		if (shrine){
			shrine()
		}
		if (bluebooster){
			bluebooster()
		}
	}
	if (A_TickCount - 2htimer > hours(2)){
		IniWrite,%A_TickCount%,Macro Parts/configs/Timers.ini,timers,2htimer
		
	}
	if (A_TickCount - 4htimer > hours(4)){
		IniWrite,%A_TickCount%,Macro Parts/configs/Timers.ini,timers,4htimer

	}
	if (A_TickCount - 22htimer > hours(22)){
		IniWrite,%A_TickCount%,Macro Parts/configs/Timers.ini,timers,22htimer

	}
	if (A_TickCount - 24htimer > hours(24)){
		IniWrite,%A_TickCount%,Macro Parts/configs/Timers.ini,timers,24htimer

	}
}

EventLog(Event){ ;saves what it does and when it does it in a text file for debugging
	FormatTime,Time, hh:mm:ss
	FileAppend,%Time% %Event% `n,Macro Parts\logs\EventLog.txt
	try{
		IniRead,url,Macro Parts/configs/Links.ini,webhooks,hookevent
		postdata=
		(
		{
		"content": "[EVENT] %Event%"
		}
		)
		WebRequest := ComObjCreate("WinHttp.WinHttpRequest.5.1")
		WebRequest.Open("POST", url, false)
		WebRequest.SetRequestHeader("Content-Type", "application/json")
		WebRequest.Send(postdata) 
	}
}

ErrorLog(ErrorMessage){ ;same thing as eventlog but this time it logs errors in a seperate file xd
	FormatTime,Time, hh:mm:ss
	FileAppend,%Time% %ErrorMessage%  `n,Macro Parts\logs\ErrorLog.txt
	try{
		IniRead,url,Macro Parts/configs/Links.ini,webhooks,hookerror
		postdata=
		(
		{
		"content": "[ERROR] %ErrorMessage%"
		}
		)
		WebRequest := ComObjCreate("WinHttp.WinHttpRequest.5.1")
		WebRequest.Open("POST", url, false)
		WebRequest.SetRequestHeader("Content-Type", "application/json")
		WebRequest.Send(postdata) 
	}
}

cub(searchfor){
	loop 2{
		mousemove,140,125
		Send {click}
		sleep 10
	}
	mousemove,250,125
	sleep 10
	Send {Click}
	sleep 500
	if (SearchFunction("cub.png",10)[1] = 0){
		mousemove,SearchFunction("cub.png",10)[2],SearchFunction("cub.png",10)[3]
		sleep 200
		Send {Click}
		sleep 500
		if (SearchFunction(searchfor,10)[1] = 0){
			mousemove,SearchFunction(searchfor,10)[2],SearchFunction(searchfor,10)[3]
			sleep 200
			Send {Click}
			sleep 500
		}
	}
}