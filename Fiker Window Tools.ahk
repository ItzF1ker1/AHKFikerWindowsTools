;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
/*

        Welcome to Fiker Windows Tools
          Version 1.0.0 Source Code!

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

FileName = Fiker Windows Tools
FikerStuff = https://myurls.bio/itzf1ker1
FikerDiscord = ItzF1ker1#1106
Version = 1.0
SubVer = .0
FolderPath = %A_ScriptDir%
IniFileName = FWTv1.0.0-Settings.ini
IniFilePath = %FolderPath%\%IniFileName%

if !FileExist(IniFilePath)
	{
    Msgbox, 0x40044, %FileName% v%Version%%SubVer% By: %FikerDiscord%, I couldn't find the settings files named "%IniFileName%"!`nMake sure it's in the same folder as this script.`n`nIf you just updated %FileName% to version %Version%%SubVer% you can rename the old file to "%IniFileName%"`nbut the script will probably broke if there's some pretty big update so I don't really recommend it.`n`nIf you just downloaded this script or lost the ini file,`nDo you want to create a new file with the default settings?`n`nScript file location:`n%FolderPath%`nIf you select No, the script will exit.
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
MainGuiX =667
MainGuiY =262
StopwatchGuiX =831
StopwatchGuiY =443
GuiColor =3D3B3C
GuiFontColor =FFFFFF
            ), %IniFileName%
		}
	IfMsgBox No
		ExitApp
	}

if !FileExist("FWT_MainIcon.ico")
    {
    MsgBox, 0x40044, %FileName% v%Version%%SubVer% By: %FikerDiscord%, There's no icon image of %FileName%, do you want to download it?
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
            Goto, FWTStart
        }
    } else {
        Menu, Tray, Icon, FWT_MainIcon.ico
        Goto, FWTStart
    }
Return

FWTStart:
        Gui, StartFWT:New, +AlwaysOnTop, StartFWT
        Gui, StartFWT:Font, s10
        Gui, StartFWT:Add, Text, x10 y15, %FileName% Sucessfully Activated!`nVersion: %Version%%SubVer%`n`n`nAHK by %FikerDiscord%
        Gui, StartFWT:Add, Button, default xm x170 y110 w50 gYesStartFWT, Start
        Gui, StartFWT:Add, Button, x240 y110 w50 gNoStartFWT, Exit
        Gui, StartFWT:Show, h150 w300, %Filename% v%Version%%SubVer% By: %FikerDiscord%
    Return
    YesStartFWT:
        Gui, StartFWT:Destroy
        Gui, LoadFWT:New, +AlwaysOnTop, LoadFWT
        Gui, LoadFWT:Font, s18
        Gui, LoadFWT:Add, Text, x10 w300 vLoadingText, %LoadingText%
        Gui, LoadFWT:Add, Progress, BackgroundCACACA h20 w279 x10 y120 vLoadFWT -Smooth, 0
        Gui, LoadFWT:Show, h150 w300, %Filename% v%Version%%SubVer% By: %FikerDiscord%
        ; Read ini file
        ; Cursor Mover ;
        GuiControl,, LoadingText, Loading Cursor Mover...
        IniRead, CursorLeft, %IniFileName%, CursorMover, CursorLeft
        GuiControl,, LoadFWT, +1
        IniRead, CursorUp, %IniFileName%, CursorMover, CursorUp
        GuiControl,, LoadFWT, +1
        IniRead, CursorDown, %IniFileName%, CursorMover, CursorDown
        GuiControl,, LoadFWT, +1
        IniRead, CursorRight, %IniFileName%, CursorMover, CursorRight
        GuiControl,, LoadFWT, +1
        ; WindowTransparent ;
        GuiControl,, LoadingText, Loading Window Transparent...
        IniRead, TransAdd, %IniFileName%, WindowTransparent, TransAdd
        GuiControl,, LoadFWT, +1
        IniRead, TransMin, %IniFileName%, WindowTransparent, TransMin
        GuiControl,, LoadFWT, +1
        ; Preferences ;
        GuiControl,, LoadingText, Loading Preferences...
        IniRead, TooltipTimer, %IniFileName%, Preferences, TooltipTimer
        GuiControl,, LoadFWT, +1
        IniRead, MainGuiX, %IniFileName%, Preferences, MainGuiX
        GuiControl,, LoadFWT, +1
        IniRead, MainGuiY, %IniFileName%, Preferences, MainGuiY
        GuiControl,, LoadFWT, +1
        IniRead, StopwatchGuiX, %IniFileName%, Preferences, StopwatchGuiX
        GuiControl,, LoadFWT, +1
        IniRead, StopwatchGuiY, %IniFileName%, Preferences, StopwatchGuiY
        GuiControl,, LoadFWT, +1
        IniRead, GuiColor, %IniFileName%, Preferences, GuiColor
        GuiControl,, LoadFWT, +1
        IniRead, GuiFontColor, %IniFileName%, Preferences, GuiFontColor
        GuiControl,, LoadFWT, +1
        ; Read Variables
        GuiControl,, LoadingText, Loading Variables...
        MainGuiH =375
        GuiControl,, LoadFWT, +1
        MainGuiW =550
        GuiControl,, LoadFWT, +1
        Transparency =255
        GuiControl,, LoadFWT, +1
        ScreenZoom =100
        GuiControl,, LoadFWT, +1
        ToggleCursorMover =1
        GuiControl,, LoadFWT, +1
        ONOFFCursorMover =ON
        GuiControl,, LoadFWT, +1
        IsToggleCursorMoverCheck =Checked
        GuiControl,, LoadFWT, +1
        ToggleScreenZoomer =1
        GuiControl,, LoadFWT, +1
        IsToggleScreenZoomerCheck =Checked
        GuiControl,, LoadFWT, +1
        ONOFFScreenZoomer =ON
        GuiControl,, LoadFWT, +1
        IsToggleWindowTransparencyCheck =Checked
        GuiControl,, LoadFWT, +1
        ToggleWindowTransparency =1
        GuiControl,, LoadFWT, +1
        ONOFFWindowTransparency =ON
        GuiControl,, LoadFWT, +1
        TxtNoteCount =38 Characters
        GuiControl,, LoadFWT, +1
        Hrs :="00"
        GuiControl,, LoadFWT, +1
        Min :="00"
        GuiControl,, LoadFWT, +1
        Sec :="00"
        GuiControl,, LoadFWT, +1
        StopwatchTime =00:00:00
        GuiControl,, LoadFWT, +1
        GuiControl,, LoadingText, Loading Gui...
        Gosub, LoadMainFWTGui
        Gosub, LoadFWTTrayMenu
    Return
    NoStartFWT:
        Gui, StartFWT:Destroy
        ExitApp
    Return
Return

;                  Setups                   ;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;                    GUIs                    ;

LoadMainFWTGui:
    GuiControl,, LoadingText, Finished!
    GuiControl,, LoadFWT, +70
    Sleep, 1000
    Gui, LoadFWT:Destroy
    Gui, MainFWTGui:New,, MainFWTGui
    Gui, MainFWTGui:Color, %GuiColor%
    Gui, MainFWTGui:Font, c%GuiFontColor%
    Gui, MainFWTGui:Add, Tab3, w%MainGuiW% h%MainGuiH%, [ Help ]|[ Settings ]|[ Note ]|[ Preferences ]|[ Changelog ]|[ About ]
    Gui, MainFWTGui:Tab, 1 ; Help Tab
    Gui, MainFWTGui:Font, s20
    Gui, MainFWTGui:Add, Text, c%GuiColorFont%, %FileName%
    Gui, MainFWTGui:Font, s12
    Gui, MainFWTGui:Add, Text, x285 y44 c%GuiColorFont%, Help
    Gui, MainFWTGui:Font, s16
    Gui, MainFWTGui:Add, Text, x22 y85 c%GuiColorFont%, Cursor Mover Keys:
    Gui, MainFWTGui:Font, s12
    Gui, MainFWTGui:Add, Text, y+8 c%GuiColorFont%, Move to Left/Right:  X + Scroll Up/Down
    Gui, MainFWTGui:Add, Text, y+8 c%GuiColorFont%, Move to Up/Down:  Z + Scroll Up/Down
    Gui, MainFWTGui:Font, s16
    Gui, MainFWTGui:Add, Text, y+18 c%GuiColorFont%, Screen Zoomer Keys (ft. Magnifier):
    Gui, MainFWTGui:Font, s12
    Gui, MainFWTGui:Add, Text, y+8 c%GuiColorFont%, Zoom In:  Shift + Scroll Up
    Gui, MainFWTGui:Add, Text, y+8 c%GuiColorFont%, Zoom Out:  Shift + Scroll Down
    Gui, MainFWTGui:Font, s16
    Gui, MainFWTGui:Add, Text, y+18 c%GuiColorFont%, Window Transparency Keys:
    Gui, MainFWTGui:Font, s12
    Gui, MainFWTGui:Add, Text, y+8 c%GuiColorFont%, Less Transparent:  Window Key + Scroll Up
    Gui, MainFWTGui:Add, Text, y+8 c%GuiColorFont%, More Transparent:  Window Key + Scroll Down
    Gui, MainFWTGui:Add, Checkbox, x220 y89 c%GuiColorFont% gDoToggleCursorMover %IsToggleCursorMoverCheck%, Toggle ON/OFF
    Gui, MainFWTGui:Add, Checkbox, x370 y+79 c%GuiColorFont% gDoToggleScreenZoomer %IsToggleScreenZoomerCheck%, Toggle ON/OFF
    Gui, MainFWTGui:Add, Checkbox, x305 y+79 c%GuiColorFont% gDoToggleWindowTransparency  %IsToggleWindowTransparencyCheck%, Toggle ON/OFF
    Gui, MainFWTGui:Tab, 2 ; Settings Tab
    Gui, MainFWTGui:Font, s20
    Gui, MainFWTGui:Add, Text, c%GuiColorFont%, %FileName%
    Gui, MainFWTGui:Font, s12
    Gui, MainFWTGui:Add, Text, x285 y44 c%GuiColorFont%, Settings
    Gui, MainFWTGui:Font, s16
    Gui, MainFWTGui:Add, Text, x22 y85 c%GuiColorFont%, Move Cursor:
    Gui, MainFWTGui:Font, s12
    Gui, MainFWTGui:Add, Text, y+8 c%GuiColorFont%, Move to Left:
    Gui, MainFWTGui:Add, Text, x+12 c%GuiColorFont%, Move to Right:
    Gui, MainFWTGui:Add, Text, x+12 c%GuiColorFont%, Move Up:
    Gui, MainFWTGui:Add, Text, x+12 c%GuiColorFont%, Move Down:
    Gui, MainFWTGui:Add, Edit, x22 y+8 c000000 gVarEdit vCursorLeft r1 w91 Number, %CursorLeft%
    Gui, MainFWTGui:Add, Edit, x+15 c000000 gVarEdit vCursorRight r1 w99 Number, %CursorRight%
    Gui, MainFWTGui:Add, Edit, x+15 c000000 gVarEdit vCursorUp r1 w64 Number, %CursorUp%
    Gui, MainFWTGui:Add, Edit, x+15 c000000 gVarEdit vCursorDown r1 w84 Number, %CursorDown%
    Gui, MainFWTGui:Add, Text, x+15 c%GuiColorFont%, pixel
    Gui, MainFWTGui:Font, s16
    Gui, MainFWTGui:Add, Text, x22 y+40 c%GuiColorFont%, Transparent Window:
    Gui, MainFWTGui:Font, s12
    Gui, MainFWTGui:Add, Text, y+8 c%GuiColorFont%, Add Transparent:
    Gui, MainFWTGui:Add, Text, x+12 c%GuiColorFont%, Min Transparent:
    Gui, MainFWTGui:Add, Edit, x22 y+8 c000000 gVarEdit vTransAdd r1 w122 Number, %TransAdd%
    Gui, MainFWTGui:Add, Edit, x+15 c000000 gVarEdit vTransMin r1 w116 Number, %TransMin%
    Gui, MainFWTGui:Tab, 3 ; Note Tab
    Gui, MainFWTGui:Font, s20
    Gui, MainFWTGui:Add, Text, c%GuiColorFont%, %FileName%
    Gui, MainFWTGui:Font, s12
    Gui, MainFWTGui:Add, Text, x285 y44 c%GuiColorFont%, Note
    Gui, MainFWTGui:Font, s10
    Gui, MainFWTGui:Add, Edit, c000000 x22 y85 r14 w524 gCharNoteCount vCharNote, (This won't be saved at the ini file)`n
    Gui, MainFWTGui:Add, Text, c%GuiColorFont% w200 vTxtNoteCount, %TxtNoteCount%
    Gui, MainFWTGui:Add, Button,, Save Note to Storage
    Gui, MainFWTGui:Tab, 4 ; Preferences Tab
    Gui, MainFWTGui:Font, s20
    Gui, MainFWTGui:Add, Text, c%GuiColorFont%, %FileName%
    Gui, MainFWTGui:Font, s12
    Gui, MainFWTGui:Add, Text, x285 y44 c%GuiColorFont%, Preferences
    Gui, MainFWTGui:Font, s16
    Gui, MainFWTGui:Add, Text, x22 y85 c%GuiColorFont%, Theme:
    Gui, MainFWTGui:Font, s12
    Gui, MainFWTGui:Add, Text, y+8 c%GuiColorFont%, Background Color:
    Gui, MainFWTGui:Add, Text, x+12 c%GuiColorFont%, Text Color:
    Gui, MainFWTGui:Add, Edit, x22 y+8 c000000 gVarEdit vGuiColor r1 w133, %GuiColor%
    Gui, MainFWTGui:Add, Edit, x+7 c000000 gVarEdit vGuiFontColor r1 w133, %GuiFontColor%
    Gui, MainFWTGui:Font, s8
    Gui, MainFWTGui:Add, Radio, x22 y180 c%GuiColorFont% gVarEdit vDefaultThemes, Dark Theme
    Gui, MainFWTGui:Add, Radio, x+8 c%GuiColorFont% gVarEdit, Light Theme
    Gui, MainFWTGui:Add, Radio, x+8 c%GuiColorFont% gVarEdit, Fiker Theme
    Gui, MainFWTGui:Add, Button, x22 y+8 w273, Load Theme
    Gui, MainFWTGui:Font, s16
    Gui, MainFWTGui:Add, Text, x22 y+30 c%GuiColorFont%, Tooltip Timer:
    Gui, MainFWTGui:Add, Edit, x22 y+8 c000000 gVarEdit vTooltipTimer r1 w133 Number, %TooltipTimer%
    Gui, MainFWTGui:Tab, 5 ; Changelog Tab
    Gui, MainFWTGui:Font, s20
    Gui, MainFWTGui:Add, Text, c%GuiColorFont%, %FileName%
    Gui, MainFWTGui:Font, s12
    Gui, MainFWTGui:Add, Text, x285 y44 c%GuiColorFont%, Changelogs
    Gui, MainFWTGui:Font, s16
    Gui, MainFWTGui:Add, Text, x22 y85 c%GuiColorFont%, Current Version: %Version%%SubVer%
    Gui, MainFWTGui:Font, s12
    Gui, MainFWTGui:Add, Button, w524, Version 1.0.0
    Gui, MainFWTGui:Tab, 6 ; About Tab
    Gui, MainFWTGui:Add, Text, x24 y44 c%GuiColorFont%, About
    Gui, MainFWTGui:Font, s20
    Gui, MainFWTGui:Add, Text, x+10 y34 c%GuiColorFont%, %FileName%
    Gui, MainFWTGui:Font, s12
    Gui, MainFWTGui:Add, Text, x22 y85 c%GuiColorFont%, `n%FileName% is a simple windows tool`nthat enhance my (Fiker) windows usage (ig)`n`nThis just made for my personal use so`nif theres something broken well hope`nyou can understand that lol`n`n`n
    Gui, MainFWTGui:Add, Button, w315, Script Source Code
    Gui, MainFWTGui:Font, s5
    Gui, MainFWTGui:Add, Text, x370 y260, yes ik i got the window logo wrong`nsjut the fcku up its funny
    Gui, MainFWTGui:Font, s12
    Gui, MainFWTGui:Add, Picture, x370 y100 w160 h160, FWT_MainIcon.ico
    Gui, MainFWTGui:Add, Button, x22 y335 w523 gToMyWebsite, Click to redirect you to my stuffs (def not bring u to phishing site)
    Gui, Tab ; Applies to All Tab
    Gui, MainFWTGui:Font, s8
    Gui, MainFWTGui:Add, Button, x10 y390 w550 gLoadFWTStopwatchGui, Open Tooltip Stopwatch
    Gui, MainFWTGui:Add, Button, w272, Load Default Settings
    Gui, MainFWTGui:Add, Button, w272, Reload Script
    Gui, MainFWTGui:Add, Button, x288 y419 w272, Save to ini File
    Gui, MainFWTGui:Add, Button, w272, Exit Script
    Gui, MainFWTGui:Show,, %FileName% v%Version%%SubVer%    By: %FikerDiscord%
Return

CharNoteCount:
    GuiControlGet, NoteString,, CharNote
    NoteNum := StrLen(NoteString)
    GuiControl,, TxtNoteCount, %NoteNum% Characters`n
Return

MainFWTGuiButtonSaveNotetoStorage:
    Gui, MainFWTGui:Submit, NoHide
    FileAppend, %FileName% Note v%Version%%SubVer% at %CurrentDateAndTime%`n==================================================================`n%CharNote%, %FileName% Note v%Version%%SubVer% %CurrentDateAndTime%.txt
    MsgBox, Note Sucessfully Saved at`n%A_WorkingDir%\%FileName% Note v%Version%%SubVer% %CurrentDateAndTime%.txt
Return

KillTooltip:
    ToolTip
    SetTimer, KillTooltip, Off
Return

VarEdit:
    Gui, MainFWTGui:Submit, NoHide
Return

MainFWTGuiButtonLoadTheme:
    if (DefaultThemes = 1) { ; Dark Theme
        GuiColor =3D3B3C
        GuiFontColor =FFFFFF
        IniWrite, %GuiColor%, %IniFileName%, Preferences, GuiColor
        IniWrite, %GuiFontColor%, %IniFileName%, Preferences, GuiFontColor
        Reload
    }
    if (DefaultThemes = 2) { ; Light Theme
        GuiColor =FFFFFF
        GuiFontColor =000000
        IniWrite, %GuiColor%, %IniFileName%, Preferences, GuiColor
        IniWrite, %GuiFontColor%, %IniFileName%, Preferences, GuiFontColor
        Reload
    }
    if (DefaultThemes = 3) { ; Fiker Theme
        GuiColor =001E27
        GuiFontColor =00CBF5
        IniWrite, %GuiColor%, %IniFileName%, Preferences, GuiColor
        IniWrite, %GuiFontColor%, %IniFileName%, Preferences, GuiFontColor
        Reload
    }
    else { ; Custom Theme
        IniWrite, %GuiColor%, %IniFileName%, Preferences, GuiColor
        IniWrite, %GuiFontColor%, %IniFileName%, Preferences, GuiFontColor
        Reload
    }
Return

MainFWTGuiButtonVersion1.0.0:
    MsgBox,
    (
        27/09/2022 - Version 1.0.0 (The Release Date)
    
    (26/09/2022)
    - Added the GUI.
    - Added the Cursor Mover, Screen Zoomer, and Window Transparency tools.
    - Costumizeable variables for Cursor Mover and Window Transparency tools.

    (27/09/2022)
    - Added toggle system on the Cursor Mover, Screen Zoomer, and Window Transparency tools.
    - Added Note feature.
    - Added Preferences tab with costumizable "theme".
    - Costumizable Tooltip Timer.
    - Added Stopwatch GUI.

    (28/09/2022)
    - Added Tooltip Stopwatch feature.
    - Added custom tray menu.
    - Added custom icon.
    )
Return

ToMyWebsite:
    Run, %FikerStuff%
Return

MainFWTGuiButtonSavetoiniFile:
    Gui, FWTLoadDefault:Destroy
    Gui, FWTSaveToIni:Destroy
    Gui, FWTGuiClose:Destroy
    Gui, FWTStopwatchGuiClose:Destroy
    Gui, FWTSaveToIni:New, +AlwaysOnTop, FWTSaveToIni
    Gui, FWTSaveToIni:Color, %GuiColor%
    Gui, FWTSaveToIni:Font, c%GuiFontColor%
    Gui, FWTSaveToIni:Font, s10
    Gui, FWTSaveToIni:Add, Text, x10 y15, Are you sure you want to save the current setting`nto %IniFileName%?`n`nThis will overwrite`nthe old settings with this new one.
    Gui, FWTSaveToIni:Add, Button, default xm x170 y110 w50 gYesSaveToIni, Save
    Gui, FWTSaveToIni:Add, Button, x240 y110 w50 gNoSaveToIni, No
    Gui, FWTSaveToIni:Show, h150 w300, %Filename% v%Version%%SubVer% By: %FikerDiscord%
Return
YesSaveToIni:
    Gui, FWTSaveToIni:Destroy
        IniWrite, %CursorLeft%, %IniFileName%, CursorMover, CursorLeft
        IniWrite, %CursorUp%, %IniFileName%, CursorMover, CursorUp
        IniWrite, %CursorDown%, %IniFileName%, CursorMover, CursorDown
        IniWrite, %CursorRight%, %IniFileName%, CursorMover, CursorRight
        IniWrite, %TransAdd%, %IniFileName%, WindowTransparent, TransAdd
        IniWrite, %TransMin%, %IniFileName%, WindowTransparent, TransMin
        IniWrite, %TooltipTimer%, %IniFileName%, Preferences, TooltipTimer
        IniWrite, %MainGuiX%, %IniFileName%, Preferences, MainGuiX
        IniWrite, %MainGuiY%, %IniFileName%, Preferences, MainGuiY
        IniWrite, %GuiColor%, %IniFileName%, Preferences, GuiColor
        IniWrite, %GuiFontColor%, %IniFileName%, Preferences, GuiFontColor
    MsgBox, Saved to %IniFileName% in`n%IniFilePath%!
Return
NoSaveToIni:
    Gui, FWTSaveToIni:Destroy
    MsgBox, Cancelled!
Return

MainFWTGuiButtonLoadDefaultSettings:
    Gui, FWTLoadDefault:Destroy
    Gui, FWTSaveToIni:Destroy
    Gui, FWTGuiClose:Destroy
    Gui, FWTStopwatchGuiClose:Destroy
    Gui, FWTLoadDefault:New, +AlwaysOnTop, FWTLoadDefault
    Gui, FWTLoadDefault:Color, %GuiColor%
    Gui, FWTLoadDefault:Font, c%GuiFontColor%
    Gui, FWTLoadDefault:Font, s10
    Gui, FWTLoadDefault:Add, Text, x10 y15, Are you sure you want to load the default setting`nto %IniFileName%?`n`nThis will overwrite`nthe old settings with the default one.`nAnd also will reload the script as well.
    Gui, FWTLoadDefault:Add, Button, default xm x170 y130 w50 gYesLoadDefault, Load
    Gui, FWTLoadDefault:Add, Button, x240 y130 w50 gNoLoadDefault, No
    Gui, FWTLoadDefault:Show, h170 w300, %Filename% v%Version%%SubVer% By: %FikerDiscord%
Return
YesLoadDefault:
    Gui, Submit
        IniWrite, 1, %IniFileName%, CursorMover, CursorLeft
        IniWrite, 1, %IniFileName%, CursorMover, CursorUp
        IniWrite, 1, %IniFileName%, CursorMover, CursorDown
        IniWrite, 1, %IniFileName%, CursorMover, CursorRight
        IniWrite, 1, %IniFileName%, WindowTransparent, TransAdd
        IniWrite, 1, %IniFileName%, WindowTransparent, TransMin
        IniWrite, 1000, %IniFileName%, Preferences, TooltipTimer
        IniWrite, 667, %IniFileName%, Preferences, MainGuiX
        IniWrite, 262, %IniFileName%, Preferences, MainGuiY
        IniWrite, 3D3B3C, %IniFileName%, Preferences, GuiColor
        IniWrite, FFFFFF, %IniFileName%, Preferences, GuiFontColor
    MsgBox, Saved to %IniFileName% in`n%IniFilePath%!`n`nReloading the script once you press OK.
    IfMsgBox, OK
        Reload
    Return
Return
    NoLoadDefault:
        Gui, Destroy
        MsgBox, Cancelled!
    Return
Return

MainFWTGuiButtonReloadScript:
    WinGetPos, MainGuiX, MainGuiY,,, %FileName% v%Version%%SubVer%    By: %FikerDiscord%
    IniWrite, %MainGuiX%, %IniFileName%, Preferences, MainGuiX
    IniWrite, %MainGuiY%, %IniFileName%, Preferences, MainGuiY
    Reload
Return

MainFWTGuiButtonExitScript:
    Gui, FWTLoadDefault:Destroy
    Gui, FWTSaveToIni:Destroy
    Gui, FWTGuiClose:Destroy
    Gui, FWTStopwatchGuiClose:Destroy
    Gui, FWTGuiClose:New, +AlwaysOnTop, FWTGuiClose
    Gui, FWTGuiClose:Color, %GuiColor%
    Gui, FWTGuiClose:Font, c%GuiFontColor%
    Gui, FWTGuiClose:Font, s12
    Gui, FWTGuiClose:Add, Text, x10 y15, Are you sure you want to exit the script?
    Gui, FWTGuiClose:Font, s10
    Gui, FWTGuiClose:Add, Button, default xm x170 y50 w50 gYesGuiClose, Yes
    Gui, FWTGuiClose:Add, Button, x240 y50 w50 gNoGuiClose, No
    Gui, FWTGuiClose:Show, h90 w300, %Filename% v%Version%%SubVer% By: %FikerDiscord%
Return

MainFWTGuiGuiClose:
MainFWTGuiGuiEscape:
    Gui, FWTLoadDefault:Destroy
    Gui, FWTSaveToIni:Destroy
    Gui, FWTGuiClose:Destroy
    Gui, FWTStopwatchGuiClose:Destroy
    Gui, FWTGuiClose:New, +AlwaysOnTop, FWTGuiClose
    Gui, FWTGuiClose:Color, %GuiColor%
    Gui, FWTGuiClose:Font, c%GuiFontColor%
    Gui, FWTGuiClose:Font, s12
    Gui, FWTGuiClose:Add, Text, x10 y15, Are you sure you want to exit the script?
    Gui, FWTGuiClose:Font, s10
    Gui, FWTGuiClose:Add, Button, default xm x170 y50 w50 gYesGuiClose, Yes
    Gui, FWTGuiClose:Add, Button, x240 y50 w50 gNoGuiClose, No
    Gui, FWTGuiClose:Show, h90 w300, %Filename% v%Version%%SubVer% By: %FikerDiscord%
Return
YesGuiClose:
    Gui, FWTGuiClose:Destroy
    WinGetPos, MainGuiX, MainGuiY,,, %FileName% v%Version%%SubVer%    By: %FikerDiscord%
    IniWrite, %MainGuiX%, %IniFileName%, Preferences, MainGuiX
    IniWrite, %MainGuiY%, %IniFileName%, Preferences, MainGuiY
    ExitApp
Return
NoGuiClose:
    Gui, FWTGuiClose:Destroy
Return

;                   GUIs                   ;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;               Tools Script               ;

; Cursor Mover
x & WheelUp:: ; X + Scroll Up
    if (ToggleCursorMover = 1) {
        MouseGetPos, CursorXPos, CursorYPos
        CursorXPos -= %CursorLeft%
        MouseMove, CursorXPos, CursorYPos
        Tooltip,
        (
            %FileName% v%Version%%SubVer%

            Cursor Moved to Left for %CursorLeft% pixel.
            Cursor Current Position: %CursorXPos%, %CursorYPos%
        )
        SetTimer KillTooltip, %TooltipTimer%
    Return
    }
    if (ToggleCursorMover = 0) {
    Return
}

z & WheelUp:: ; Z + Scroll Up
    if (ToggleCursorMover = 1) {
        MouseGetPos, CursorXPos, CursorYPos
        CursorYPos -= %CursorUp%
        MouseMove, CursorXPos, CursorYPos
        Tooltip,
        (
            %FileName% v%Version%%SubVer%

            Cursor Moved to Up for %CursorUp% pixel.
            Cursor Current Position: %CursorXPos%, %CursorYPos%
        )
        SetTimer KillTooltip, %TooltipTimer%
    Return
    }
    if (ToggleCursorMover = 0) {
    Return
}

z & WheelDown:: ; Z + Scroll Down
    if (ToggleCursorMover = 1) {
        MouseGetPos, CursorXPos, CursorYPos
        CursorYPos += %CursorDown%
        MouseMove, CursorXPos, CursorYPos
        Tooltip,
        (
            %FileName% v%Version%%SubVer%

            Cursor Moved to Down for %CursorDown% pixel.
            Cursor Current Position: %CursorXPos%, %CursorYPos%
        )
        SetTimer KillTooltip, %TooltipTimer%
    Return
    }
    if (ToggleCursorMover = 0) {
    Return
}

x & WheelDown:: ; X + Scroll Down
    if (ToggleCursorMover = 1) {
        MouseGetPos, CursorXPos, CursorYPos
        CursorXPos += %CursorRight%
        MouseMove, CursorXPos, CursorYPos
        Tooltip,
        (
            %FileName% v%Version%%SubVer%

            Cursor Moved to Right for %CursorRight% pixel.
            Cursor Current Position: %CursorXPos%, %CursorYPos%
        )
        SetTimer KillTooltip, %TooltipTimer%
    Return
    }
    if (ToggleCursorMover = 0) {
    Return
}

x::x
z::z
; Cursor Mover

; Screen Zoomer
*$+WheelUp:: ; Shift + Scroll Up
    if (ToggleScreenZoomer = 1) {
	    SendInput, #=
        ScreenZoom += 100
        if (ScreenZoom >= 1600) {
            ScreenZoom = 1600
        }
        Tooltip,
        (
            %FileName% v%Version%%SubVer%

            Screen Zoomed In to %ScreenZoom% percent.
            Note: Number might not accurate.
        )
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
        Tooltip,
        (
            %FileName% v%Version%%SubVer%

            Screen Zoomed Out to %ScreenZoom% percent.
            Note: Number might not accurate.
        )
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
        Tooltip,
        (
            %FileName% v%Version%%SubVer%

            %WinActive%
            Window Transparency set to %Transparency% (+%TransAdd%).
        )
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
        Tooltip,
        (
            %FileName% v%Version%%SubVer%

            %WinActive%
            Window Transparency set to %Transparency% (-%TransMin%).
        )
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
    Tooltip,
    (
        %FileName% v%Version%%SubVer%
    
        CursorMover toggled %ONOFFCursorMover%.
    )
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
    Tooltip,
    (
        %FileName% v%Version%%SubVer%
    
        ScreenZoomer toggled %ONOFFScreenZoomer%.
    )
    SetTimer KillTooltip, %TooltipTimer%
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
    Tooltip,
    (
        %FileName% v%Version%%SubVer%
    
        WindowTransparency toggled %ONOFFWindowTransparency%.
    )
    SetTimer KillTooltip, %TooltipTimer%
Return

;               Toggle Stuffs               ;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;               Stopwatch GUI               ;

LoadFWTStopwatchGui:
    Gui, FWTStopwatchGui:New,, FWTStopwatchGui
    Gui, FWTStopwatchGui:Color, %GuiColor%
    Gui, FWTStopwatchGui:Font, c%GuiFontColor% s10
    Gui, FWTStopwatchGui:Add, Text, c%GuiFontColor%, %FileName% v%Version%%SubVer% Stopwatch
    Gui, FWTStopwatchGui:Font, s18
    Gui, FWTStopwatchGui:Add, Text, x82 y+5 c%GuiFontColor% vStopwatchTime, %StopwatchTime%
    Gui, FWTStopwatchGui:Font, s8
    Gui, FWTStopwatchGui:Add, Button, x14 w225, Reset and Log Stopwatch
    Gui, FWTStopwatchGui:Add, Button, w225, Close GUI and Keep Stopwatch Running
    Gui, FWTStopwatchGui:Show,, FWT Stopwatch
    SetTimer, StopwatchFWT, 1000
Return

StopwatchFWT:
    if (Sec <= 60) {
        Sec += 01
    }
    if (Sec >= 60) {
        Sec = 00
        Min += 1
    }
    if (Min >= 60) {
        Sec = 00
        Min = 00
        Hrs += 1
    }
    StopwatchTime = %Hrs%:%Min%:%Sec%
    WinGetActiveTitle, ActiveStopwatchWindow
    GuiControl,, StopwatchTime, %StopwatchTime%
    SetTimer, TooltipStopwatch, 10
Return

TooltipStopwatch:
    Tooltip, %ActiveStopwatchWindow%`n%StopwatchTime%
Return

FWTStopwatchGuiButtonResetandLogStopwatch:
    SetTimer, StopwatchFWT, Off
    Gui, FWTStopwatchGui:Submit
    FileAppend, %FileName% Stopwatch Log v%Version%%SubVer% at %CurrentDateAndTime%`n==================================================================`n%ActiveStopwatchWindow%`n%StopwatchTime%, %FileName% Stopwatch Log v%Version%%SubVer% %CurrentDateAndTime%.txt
    MsgBox, Stopwatch Log Sucessfully Saved at`n%A_WorkingDir%\%FileName% Note v%Version%%SubVer% %CurrentDateAndTime%.txt
    IfMsgBox, Ok
        Sec = 00
        Min = 00
        Hrs = 00
        Gosub, LoadFWTStopwatchGui
    Return
Return

FWTStopwatchGuiButtonCloseGUIandKeepStopwatchRunning:
    Gui, FWTStopwatchGui:Submit
Return

FWTStopwatchGuiGuiClose:
FWTStopwatchGuiGuiEscape:
    Gui, FWTLoadDefault:Destroy
    Gui, FWTSaveToIni:Destroy
    Gui, FWTGuiClose:Destroy
    Gui, FWTStopwatchGuiClose:Destroy
    Gui, FWTStopwatchGuiClose:New, +AlwaysOnTop, FWTGuiClose
    Gui, FWTStopwatchGuiClose:Color, %GuiColor%
    Gui, FWTStopwatchGuiClose:Font, c%GuiFontColor%
    Gui, FWTStopwatchGuiClose:Font, s12
    Gui, FWTStopwatchGuiClose:Add, Text, x10 y15, Are you sure you want to log and close the GUI?
    Gui, FWTStopwatchGuiClose:Font, s10
    Gui, FWTStopwatchGuiClose:Add, Button, x230 y50 w50 gYesStopwatchGuiClose, Yes
    Gui, FWTStopwatchGuiClose:Add, Button, x300 y50 w50 gNoStopwatchGuiClose, No
    Gui, FWTStopwatchGuiClose:Show, h90 w360, %Filename% v%Version%%SubVer% Stopwatch By: %FikerDiscord%
Return
YesStopwatchGuiClose:
    Gui, FWTStopwatchGuiClose:Destroy
    WinGetPos, StopwatchGuiX, StopwatchGuiY,,, FWT Stopwatch
    IniWrite, %StopwatchGuiX%, %IniFileName%, Preferences, StopwatchGuiX
    IniWrite, %StopwatchGuiY%, %IniFileName%, Preferences, StopwatchGuiY
    Gui, FWTStopwatchGui:Submit
    SetTimer, StopwatchFWT, Off
    SetTimer, KillTooltip, %TooltipTimer%
Return
NoStopwatchGuiClose:
    Gui, FWTStopwatchGuiClose:Destroy
Return

;               Stopwatch GUI               ;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;                Script Stuff                ;

LoadFWTTrayMenu:
    Menu, Tray, NoStandard
    Menu, Tray, Add
    Menu, Tray, Add
    Menu, Tray, Add         , %FileName% v%Version%%SubVer%, FWTTrayMenu
    Menu, Tray, Add
    Menu, Tray, Add         , &Open Stopwatch GUI, FWTTrayMenu
    Menu, Tray, Add
    Menu, Tray, Add         , &Toggle Cursor Mover, FWTTrayMenu
    Menu, Tray, Add         , &Toggle Screen Zoomer, FWTTrayMenu
    Menu, Tray, Add         , &Toggle Window Transparency, FWTTrayMenu
    Menu, Tray, Add
    Menu, Tray, Add         , &Suspend Tool, FWTTrayMenu
    Menu, Tray, Add         , &Pause Tool, FWTTrayMenu
    Menu, Tray, Add
    Menu, Tray, Add         , &Reload Tool, FWTTrayMenu
    Menu, Tray, Add         , E&xit Tool, FWTTrayMenu
    Menu, Tray, Default     , E&xit Tool
    Menu, Tray, Add
    Menu, Tray, Add
    Menu, Tray, Icon        , FWT_MainIcon.ico
    Menu, Tray, Check       , &Toggle Cursor Mover
    Menu, Tray, Check       , &Toggle Screen Zoomer
    Menu, Tray, Check       , &Toggle Window Transparency
Return

FWTTrayMenu:
    if (A_ThisMenuItem = "&Open Stopwatch GUI") {
        Gosub, LoadFWTStopwatchGui
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
    if (A_ThisMenuItem = "&Suspend Tool") {
        Gosub, ToggleSuspend
    }
    if (A_ThisMenuItem = "&Pause Tool") {
        Gosub, TogglePause
    }
    if (A_ThisMenuItem = "&Reload Tool") {
        Gosub, MainFWTGuiButtonReloadScript
    }
    if (A_ThisMenuItem = "E&xit Tool") {
        Gosub, MainFWTGuiButtonExitScript
    }
Return

ToggleSuspend:
    if (A_IsSuspended) {
        Suspend, Off
        Menu, Tray, Uncheck, &Suspend Tool
    } else {
        Menu, Tray, Check, &Suspend Tool
        Suspend, On
    }
Return
TogglePause:
    if (A_IsPaused) {
        Pause, Off
        Menu, Tray, Uncheck, &Pause Tool
    } else {
        Menu, Tray, Check, &Pause Tool
        Pause, On
    }
Return

;                Script Stuff                ;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
/*

          The End of The Source Code
     of Fiker Windows Tools Version 1.0.0.

*/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;