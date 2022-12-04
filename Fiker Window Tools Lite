;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
/*

        Welcome to Fiker Windows Tools
          Version 1.1.5 Source Code!

*/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;                  Setups                  ;

;                "Settings"                ;

#NoEnv
#MaxHotkeysPerInterval, 69420
#MaxThreadsPerHotkey, 69420
#MaxThreads, 69420
#InstallKeybdHook, 1
#SingleInstance, Force

SendMode Input
SetWorkingDir %A_ScriptDir%
SetKeyDelay, -1
SetBatchLines, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0, 0, 0
Coordmode, Mouse, Screen
FormatTime, CurrentDateAndTime,, M.dd.yyyy hh.mm.ss tt

;                "Settings"                ;

FileName = FWT Lite
FikerStuff = https://fiker1.carrd.co/
FikerDiscord = ItzF1ker1#1106
Version = 1.1
SubVer = .4
FolderPath = %A_ScriptDir%
IniFileName = FWTv1.1.5-Settings.ini
IniFilePath = %FolderPath%\%IniFileName%

if !FileExist(IniFilePath)
	{
    Msgbox, 0x40044, %FileName%, I couldn't find the settings files named "%IniFileName%"!`nMake sure it's in the same folder as this script.`n`nIf you just updated %FileName% to version %Version%%SubVer% you can rename the old file to "%IniFileName%"`nbut the script will probably broke if there's some pretty big update so I don't really recommend it.`n`nIf you just downloaded this script or lost the ini file,`nDo you want to create a new file with the default settings?`n`nScript file location:`n%FolderPath%`nIf you select No, the script will exit.
	IfMsgBox Yes
		{
            FileAppend,
            (
[CursorMover]
CursorLeft =1
CursorUp =1
CursorDown =1
CursorRight =1

[WindowTransparent]
TransAdd =1
TransMin =1

[Preferences]
TooltipTimer =1000
            ), %IniFileName%
		}
	IfMsgBox No
		ExitApp
	}

if !FileExist("FWT_MainIcon.ico")
    {
    MsgBox, 0x40044, %FileName%, There's no icon image of %FileName%, do you want to download it?
    IfMsgBox, Yes
        {
            UrlDownloadToFile, https://cdn.discordapp.com/attachments/930426105171681301/1024615066710065202/FWT_MainIcon.ico, %FolderPath%\FWT_MainIcon.ico
            Tooltip, Downloaded FWT_MainIcon.ico!
            Menu, Tray, Icon, FWT_MainIcon.ico
            Tooltip,
            MsgBox, Sucessfully downloaded the icons! The icon is stored in:`n%FolderPath%\FWT_MainIcon.ico
            Goto, FWTStart
        }
    IfMsgBox, No
        {
            Menu, Tray, NoStandard
            Menu, Tray, Add
            Menu, Tray, Add
            Menu, Tray, Add         , %FileName% v%Version%%SubVer%, FWTTrayMenu
            Menu, Tray, Add         , &Help, FWTTrayMenu
            Menu, Tray, Add
            Menu, Tray, Add         , &Toggle Cursor Mover, FWTTrayMenu
            Menu, Tray, Add         , &Toggle Screen Zoomer, FWTTrayMenu
            Menu, Tray, Add         , &Toggle Window Transparency, FWTTrayMenu
            Menu, Tray, Add
            Menu, Tray, Add         , &Change Cursor Movement, FWTTrayMenu
            Menu, Tray, Add         , &Change Window Transparency, FWTTrayMenu
            Menu, Tray, Add         , &Change Tooltip Timer, FWTTrayMenu
            Menu, Tray, Add
            Menu, Tray, Add         , &Suspend Script, FWTTrayMenu
            Menu, Tray, Add         , &Pause Script, FWTTrayMenu
            Menu, Tray, Add
            Menu, Tray, Add         , &Reload Script, FWTTrayMenu
            Menu, Tray, Add         , E&xit Script, FWTTrayMenu
            Menu, Tray, Default     , E&xit Script
            Menu, Tray, Add
            Menu, Tray, Add
            Menu, Tray, Icon        , FWT_MainIcon.ico
            Menu, Tray, Check       , &Toggle Cursor Mover
            Menu, Tray, Check       , &Toggle Screen Zoomer
            Menu, Tray, Check       , &Toggle Window Transparency
            Goto, FWTStart
        }
    } else {
        Menu, Tray, NoStandard
        Menu, Tray, Icon        , FWT_MainIcon.ico
        Menu, Tray, Add
        Menu, Tray, Add
        Menu, Tray, Add         , %FileName% v%Version%%SubVer%, FWTTrayMenu
        Menu, Tray, Add         , &Help, FWTTrayMenu
        Menu, Tray, Add
        Menu, Tray, Add         , &Toggle Cursor Mover, FWTTrayMenu
        Menu, Tray, Add         , &Toggle Screen Zoomer, FWTTrayMenu
        Menu, Tray, Add         , &Toggle Window Transparency, FWTTrayMenu
        Menu, Tray, Add
        Menu, Tray, Add         , &Change Cursor Movement, FWTTrayMenu
        Menu, Tray, Add         , &Change Window Transparency, FWTTrayMenu
        Menu, Tray, Add         , &Change Tooltip Timer, FWTTrayMenu
        Menu, Tray, Add
        Menu, Tray, Add         , &Suspend Script, FWTTrayMenu
        Menu, Tray, Add         , &Pause Script, FWTTrayMenu
        Menu, Tray, Add
        Menu, Tray, Add         , &Reload Script, FWTTrayMenu
        Menu, Tray, Add         , E&xit Script, FWTTrayMenu
        Menu, Tray, Default     , E&xit Script
        Menu, Tray, Add
        Menu, Tray, Add
        Menu, Tray, Icon        , FWT_MainIcon.ico
        Menu, Tray, Check       , &Toggle Cursor Mover
        Menu, Tray, Check       , &Toggle Screen Zoomer
        Menu, Tray, Check       , &Toggle Window Transparency
        Goto, FWTStart
    }
Return

FWTStart:
    ; Read ini file
    ; Cursor Mover ;
    IniRead, CursorLeft, %IniFileName%, CursorMover, CursorLeft
    IniRead, CursorUp, %IniFileName%, CursorMover, CursorUp
    IniRead, CursorDown, %IniFileName%, CursorMover, CursorDown
    IniRead, CursorRight, %IniFileName%, CursorMover, CursorRight
    ; WindowTransparent ;
    IniRead, TransAdd, %IniFileName%, WindowTransparent, TransAdd
    IniRead, TransMin, %IniFileName%, WindowTransparent, TransMin
    ; Preferences ;
    IniRead, TooltipTimer, %IniFileName%, Preferences, TooltipTimer
    ; Read Variables
    Transparency =255
    ScreenZoom =100
    ToggleCursorMover =1
    ONOFFCursorMover =ON
    IsToggleCursorMoverCheck =Checked
    ToggleScreenZoomer =1
    IsToggleScreenZoomerCheck =Checked
    ONOFFScreenZoomer =ON
    IsToggleWindowTransparencyCheck =Checked
    ToggleWindowTransparency =1
    ONOFFWindowTransparency =ON
    TrayTip, Tool Activated!, %FileName% v%Version%%SubVer%, 1, 16
Return

;                  Setups                   ;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;               Tools Script               ;

KillTooltip:
    ToolTip
    SetTimer, KillTooltip, Off
Return

; Cursor Mover
x & WheelUp:: ; X + Scroll Up
    if (ToggleCursorMover = 1) {
        MouseGetPos, CursorXPos, CursorYPos
        CursorXPos -= %CursorLeft%
        MouseMove, CursorXPos, CursorYPos
        Tooltip, X -%CursorLeft%`n%CursorXPos% / %CursorYPos%
        SetTimer KillTooltip, %TooltipTimer%
    Return
    }
    if (ToggleCursorMover = 0) {
    SendInput, x
    Return
}

z & WheelUp:: ; Z + Scroll Up
    if (ToggleCursorMover = 1) {
        MouseGetPos, CursorXPos, CursorYPos
        CursorYPos -= %CursorUp%
        MouseMove, CursorXPos, CursorYPos
        Tooltip, Y -%CursorUp%`n%CursorXPos% / %CursorYPos%
        SetTimer KillTooltip, %TooltipTimer%
    Return
    }
    if (ToggleCursorMover = 0) {
    SendInput, z
    Return
}

z & WheelDown:: ; Z + Scroll Down
    if (ToggleCursorMover = 1) {
        MouseGetPos, CursorXPos, CursorYPos
        CursorYPos += %CursorDown%
        MouseMove, CursorXPos, CursorYPos
        Tooltip, Y +%CursorDown%`n%CursorXPos% / %CursorYPos%
        SetTimer KillTooltip, %TooltipTimer%
    Return
    }
    if (ToggleCursorMover = 0) {
    SendInput, z
    Return
}

x & WheelDown:: ; X + Scroll Down
    if (ToggleCursorMover = 1) {
        MouseGetPos, CursorXPos, CursorYPos
        CursorXPos += %CursorRight%
        MouseMove, CursorXPos, CursorYPos
        Tooltip, X +%CursorRight%`n%CursorXPos% / %CursorYPos%
        SetTimer KillTooltip, %TooltipTimer%
    Return
    }
    if (ToggleCursorMover = 0) {
    SendInput, x
    Return
}

if (ToggleCursorMover = 1) {
    x::x
    z::z
}
; Cursor Mover

; Screen Zoomer
*$+WheelUp:: ; Shift + Scroll Up
    if (ToggleScreenZoomer = 1) {
	    SendInput, #=
        ScreenZoom += 100
        if (ScreenZoom >= 1600) {
            ScreenZoom = 1600
        }
        Tooltip, %ScreenZoom%
        SetTimer KillTooltip, %TooltipTimer%
    Return
    }
    if (ToggleScreenZoomer = 0) {
    Return
}

*$+WheelDown:: ; Shift + Scroll Down
    if (ToggleScreenZoomer = 1) {
	    SendInput, #-
        ScreenZoom -= 100
        if (ScreenZoom <= 100) {
            ScreenZoom = 100
        }
        Tooltip, %ScreenZoom%
        SetTimer KillTooltip, %TooltipTimer%
    Return
    }
    if (ToggleScreenZoomer = 0) {
    Return
}
; Screen Zoomer

; Set Window Transparency
*$#WheelUp:: ; Window Key + Scroll Up
    if (ToggleWindowTransparency = 1) {
        Transparency += %TransAdd%
        if (Transparency >= 255) {
            Transparency = 255
        }
        WinSet, Transparent, %Transparency%, A
        WinGetActiveTitle, WinActive
        Tooltip, %WinActive%`n%Transparency% (+%TransAdd%).
        SetTimer KillTooltip, %TooltipTimer%
    Return
    }
    if (ToggleWindowTransparency = 0) {
    Return
}

*$#WheelDown:: ; Window Key + Scroll Down
        if (ToggleWindowTransparency = 1) {
        Transparency -= %TransMin%
        if (Transparency <= 10) {
            Transparency = 10
        }
        WinSet, Transparent, %Transparency%, A
        WinGetActiveTitle, WinActive
        Tooltip, %WinActive%`n%Transparency% (-%TransMin%).
        SetTimer KillTooltip, %TooltipTimer%
    Return
    }
    if (ToggleWindowTransparency = 0) {
    Return
}
; Set Window Transparency

;               Tools Script               ;
;              Toggle Stuffs              ;

DoToggleCursorMover:
    Gui, MainFWTGui:Submit, NoHide
    ToggleCursorMover := !ToggleCursorMover
    if (ToggleCursorMover = 1) {
        Menu, Tray, Check, &Toggle Cursor Mover
        IsToggleCursorMoverCheck =Checked
        ONOFFCursorMover =ON
    }
    if (ToggleCursorMover = 0) {
        Menu, Tray, Uncheck, &Toggle Cursor Mover
        IsToggleCursorMoverCheck =
        ONOFFCursorMover =OFF
    }
    TrayTip, CursorMover toggled %ONOFFCursorMover%., %FileName% v%Version%%SubVer%, 1, 16
    SetTimer KillTooltip, %TooltipTimer%
Return

DoToggleScreenZoomer:
    Gui, MainFWTGui:Submit, NoHide
    ToggleScreenZoomer := !ToggleScreenZoomer
    if (ToggleScreenZoomer = 1) {
        Menu, Tray, Check, &Toggle Screen Zoomer
        IsToggleScreenZoomerCheck =Checked
        ONOFFScreenZoomer =ON
    }
    if (ToggleScreenZoomer = 0) {
        Menu, Tray, Uncheck, &Toggle Screen Zoomer
        IsToggleScreenZoomerCheck =
        ONOFFScreenZoomer =OFF
    }
    TrayTip, ScreenZoomer toggled %ONOFFScreenZoomer%., %FileName% v%Version%%SubVer%, 1, 16
Return

DoToggleWindowTransparency:
    Gui, MainFWTGui:Submit, NoHide
    ToggleWindowTransparency := !ToggleWindowTransparency
    if (ToggleWindowTransparency = 1) {
        Menu, Tray, Check, &Toggle Window Transparency
        IsToggleWindowTransparencyCheck =Checked
        ONOFFWindowTransparency =ON
    }
    if (ToggleWindowTransparency = 0) {
        Menu, Tray, Uncheck, &Toggle Window Transparency
        IsToggleWindowTransparencyCheck =
        ONOFFWindowTransparency =OFF
    }
    TrayTip, WindowTransparency toggled %ONOFFWindowTransparency%., %FileName% v%Version%%SubVer%, 1, 16
    SetTimer KillTooltip, %TooltipTimer%
Return

;               Toggle Stuffs               ;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;                Script Stuff                ;

FWTTrayMenu:
    if (A_ThisMenuItem = "&Help") {
        Msgbox,
        (
            Fiker Window Tools Lite v%Version%%SubVer%

        Cursor Mover Keys:
        Move to Left/Right:  X + Scroll Up/Down
        Move to Up/Down:  Z + Scroll Up/Down

        Screen Zoomer Keys (ft. Magnifier):
        Zoom In:  Shift + Scroll Up
        Zoom Out:  Shift + Scroll Down

        Window Transparency Keys:
        Less Transparent:  Window Key + Scroll Up
        More Transparent:  Window Key + Scroll Down

        Win + Alt + F = Suspend & Pause
        )
    }
    if (A_ThisMenuItem = "&Toggle Cursor Mover") {
        Gosub, DoToggleCursorMover
    }
    if (A_ThisMenuItem = "&Toggle Screen Zoomer") {
        Gosub, DoToggleScreenZoomer
    }
    if (A_ThisMenuItem = "&Toggle Window Transparency") {
        Gosub, DoToggleWindowTransparency
    }
    if (A_ThisMenuItem = "&Change Cursor Movement") {
        Gui, changeCursorMove:New, +AlwaysOnTop, changeCursorMove
        Gui, changeCursorMove:Font, s10
        Gui, changeCursorMove:Add, Text,, Move to Left:
        Gui, changeCursorMove:Add, Edit, vCursorLeft r1 w280 Number, %CursorLeft%
        Gui, changeCursorMove:Add, Text,, Move to Right:
        Gui, changeCursorMove:Add, Edit, vCursorRight r1 w280 Number, %CursorRight%
        Gui, changeCursorMove:Add, Text,, Move Up:
        Gui, changeCursorMove:Add, Edit, vCursorUp r1 w280 Number, %CursorUp%
        Gui, changeCursorMove:Add, Text,, Move Down:
        Gui, changeCursorMove:Add, Edit, vCursorDown r1 w280 Number, %CursorDown%
        Gui, changeCursorMove:Add, Button, r1 w280, Change
        Gui, Show,, Change Cursor Movement
        Return

        changeCursorMoveButtonChange:
            Gui, changeCursorMove:Submit
            IniWrite, %CursorLeft%, %IniFileName%, CursorMover, CursorLeft
            IniWrite, %CursorUp%, %IniFileName%, CursorMover, CursorUp
            IniWrite, %CursorDown%, %IniFileName%, CursorMover, CursorDown
            IniWrite, %CursorRight%, %IniFileName%, CursorMover, CursorRight
            TrayTip, Cursor Movement has been changed!, %FileName% v%Version%%SubVer%, 1, 16
        Return
    }
    if (A_ThisMenuItem = "&Change Window Transparency") {
        Gui, changeWinTrans:New, +AlwaysOnTop, changeWinTrans
        Gui, changeWinTrans:Font, s10
        Gui, changeWinTrans:Add, Text,, Add Transparency:
        Gui, changeWinTrans:Add, Edit, vTransAdd r1 w300 Number, %TransAdd%
        Gui, changeWinTrans:Add, Text,, Min Transparency:
        Gui, changeWinTrans:Add, Edit, vTransMin r1 w300 Number, %TransMin%
        Gui, changeWinTrans:Add, Button, r1 w300, Change
        Gui, Show,, Change Window Transparency
        Return

        changeWinTransButtonChange:
            Gui, changeWinTrans:Submit
            IniWrite, %TransAdd%, %IniFileName%, WindowTransparent, TransAdd
            IniWrite, %TransMin%, %IniFileName%, WindowTransparent, TransMin
            TrayTip, Window Transparency has been changed!, %FileName% v%Version%%SubVer%, 1, 16
        Return
    }
    if (A_ThisMenuItem = "&Change Tooltip Timer") {
        Gui, changeTooltipTime:New, +AlwaysOnTop, changeTooltipTime
        Gui, changeTooltipTime:Font, s10
        Gui, changeTooltipTime:Add, Text,, Tooltip Timer:
        Gui, changeTooltipTime:Add, Edit, vTooltipTimer r1 w260 Number, %TooltipTimer%
        Gui, changeTooltipTime:Add, Button, r1 w260, Change
        Gui, Show,, Change Tooltip Timer
        Return

        changeTooltipTimeButtonChange:
            Gui, changeTooltipTime:Submit
            IniWrite, %TooltipTimer%, %IniFileName%, Preferences, TooltipTimer
            TrayTip, Tooltip Timer has been changed!, %FileName% v%Version%%SubVer%, 1, 16
        Return
    }
    if (A_ThisMenuItem = "&Suspend Script") {
        Gosub, ToggleSuspend
    }
    if (A_ThisMenuItem = "&Pause Script") {
        Gosub, TogglePause
    }
    if (A_ThisMenuItem = "&Reload Script") {
        Reload
    }
    if (A_ThisMenuItem = "E&xit Script") {
        ExitApp
    }
Return

ToggleSuspend:
    if (A_IsSuspended) {
        Suspend, Off
        Menu, Tray, Uncheck, &Suspend Script
    } else {
        Menu, Tray, Check, &Suspend Script
        Suspend, On
    }
Return
TogglePause:
    if (A_IsPaused) {
        Pause, Off
        Menu, Tray, Uncheck, &Pause Script
    } else {
        Menu, Tray, Check, &Pause Script
        Pause, On
    }
Return

#!F::
    TrayTip, Win + Alt + F Executed., %FileName% v%Version%%SubVer%, 1, 16
    Gosub, TogglePause
    Gosub, ToggleSuspend
Return

;                Script Stuff                ;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
/*

          The End of The Source Code
     of Fiker Windows Tools Version 1.1.5.

*/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
