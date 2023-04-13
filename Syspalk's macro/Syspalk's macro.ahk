Tooltip,Loading...
#Include Macro Parts\Data Handler.ahk
readini()
#Include Macro Parts\Version checker.ahk
#Include Macro Parts\GUI\GUI.ahk
#Include Macro Parts\functions.ahk
;#Include Macro Parts\paths.ahk
#Include Macro Parts\Patterns.ahk
startmacrokeys()
return

GuiClose: ;when gui closes will save data and close the macro.
savedata()
ExitApp

start: ;when the start hotkey is pressed it will jump here.
while(1){
	readgui()
	pattern()
}