global updatecol := "Green"
global currentversion
Fileread,currentversion,Macro Parts\GUI\version.txt
try{
	whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
	whr.Open("GET", "https://raw.githubusercontent.com/Syspalkius/Bssmacro-V2/main/Syspalk's%20macro/Macro%20Parts/GUI/Version.txt", true)
	whr.Send()
	whr.WaitForResponse()
	version := whr.ResponseText
}
if (currentversion != version && version != ""){
	tooltip,
	MsgBox,52,New version,There is a new version available, would you like to download the new version?`n`nCurrent Version = %currentversion%`nNew version = %version%
	ifmsgbox,Yes
	{
		run,https://github.com/Syspalkius/Bssmacro-V2
		run,https://github.com/Syspalkius/Bssmacro-V2/archive/refs/heads/main.zip
		Exitapp
	}
	global updatecol := "Red"
}