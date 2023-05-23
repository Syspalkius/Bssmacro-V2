Gui, loading:add,Progress, w200 h20 cgreen vprogress -smooth, 0
Gui, loading:color,0x2A2F32
Gui, loading:show, w220 h50,Loading...
SetBatchLines, -1
SetDefaultMouseSpeed, 3
ListLines Off
#Include Macro Parts\Data Handler.ahk
GuiControl,loading:, progress, 20
readini() ;gets all the data from the ini file.
GuiControl,loading:,progress, 30
#Include Macro Parts\Version checker.ahk
GuiControl,loading:,progress, 50
#Include Macro Parts\functions.ahk
GuiControl,loading:,progress, 70
#Include Macro Parts\paths.ahk
GuiControl,loading:,progress, 80
#Include Macro Parts\Patterns.ahk
GuiControl,loading:,progress, 90
#Include Macro Parts\GUI\GUI.ahk
GuiControl,loading:,progress, 100
startmacrokeys() ;activates the start/stop/pause keys
sleep 500
Gui, loading:destroy
return

GuiClose: ;when gui closes will save data and close the macro.
savedata()
ExitApp

start: ;when the start hotkey is pressed it will jump here.
tooltip, ;remove potential tooltip
Gui, -AlwaysOnTop
WinActivate, ahk_class WINDOWSCLIENT ahk_exe RobloxPlayerBeta.exe ;activate roblox window
while(1){
	readgui()
	safetycheck()
	checktimers()
	while (A_Index < 5){
		if (farmfield%A_Index% != "None"){
			GOFarm(farmfield%A_Index%)
		}
		safetycheck()
		checktimers()
	}
	if (farmfield1 = "None" && farmfield2 = "None" && farmfield3 = "None" && farmfield4 = "None"){
		pattern()
	}
}