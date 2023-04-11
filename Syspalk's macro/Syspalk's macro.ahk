Tooltip,Loading...
#Include Macro Parts\Data Handler.ahk
readini()
#Include Macro Parts\GUI\GUI.ahk
startmacrokeys()
return

GuiClose: ;when gui closes will save data and close the macro.
savedata()
ExitApp

start: ;when the start hotkey is pressed it will jump here.
msgbox,start
return