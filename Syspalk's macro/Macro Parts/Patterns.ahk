zigzag(size,pinetree){ ;for some reason people call this snake even though snakes don't even move in this pattern in real life unless they are mentally insane
	size := size*8
	if (size < 80){
		sleep 5000
		return
	}
	short := size/6
	if (pinetree = true){
		2a8bc := size*1.1
	}else{
		2a8bc := size
	}loop 2{
		walk(2a8bc,"f")
		walk(short,"r")
		walk(size,"b")
		walk(short,"r")
	}loop 2{
		walk(size,"f")
		walk(short,"l")
		walk(size,"b")
		walk(short,"l")
	}
}

zigzagpp(size,pinetree){ ;this thing is the same as zigzag but better for token collectoin cause it moves to the part on the path where you haven't been for the longest amount of time
	size := size*8
	if (size < 80){
		sleep 5000
		return
	}
	sidewayssize := size/5
	returnsize := sidewayssize*4
	if (pinetree = true){
		sidewayssizez := sidewayssize*0.36
		forwardsize := size*1.1
	}else{
		sidewayssizez := sidewayssize*0.8
		forwardsize := size
	}
	loop 2{
		walk(sidewayssizez,"r")
		walk(forwardsize,"f")
		walk(sidewayssize,"r")
		walk(size,"b")
	}
	walk(returnsize,"l")
	walk(size,"f")
	loop 2{
		walk(sidewayssize,"r")
		walk(size,"b")
		walk(sidewayssize,"r")
		walk(size,"f")
	}
	walk(returnsize,"l")
	walk(size,"b")
}

squares(size,pinetree){ ;idk why anyone would use this but look it's coded pretty nicely
	size := size*3
	if (size < 30){
		sleep 5000
		return
	}
	x := size
	loop 3{
		if (pinetree = true){
			forward := size*1.1
		}else{
			forward := size
		}
		walk(forward,"f")
		walk(size,"r")
		walk(size,"b")
		walk(size,"l")
		size := size + x
	}
} 

pattern(pinetree := false){ ;function that calls a function yes i know i went too far with the function spamming
	readgui()
	mouseMove,A_ScreenWidth/2,A_ScreenHeight/2
	if (swingtool){
		Send {Click Left Down}
	}
	if (farmpattern = "zigzag"){
		zigzag(patternsize,pinetree)
	}else if (farmpattern = "squares"){
		squares(patternsize,pinetree)
	}else if (farmpattern = "zigzag++"){
		zigzagpp(patternsize,pinetree)
	}
	Send {Click Left UP}
	return
}