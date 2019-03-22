#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
#MaxHotkeysPerInterval 200
Menu, Tray, Icon, keyboard.ico ; this changes the tray icon to a little keyboard!

statusy = 1850
; statusy = 1700
statusx = 30
statusheight = 80
statusheight2 = 110
statuswidth=500
statuswidth2=700
font=Roboto

#if (getKeyState("F23", "P"))
F23::return

;;;;;first row;;;;;

F1:: 
guiShow("Capture Whole Screen","FF0000","Screen Capture")
Send {Ctrl Down}{Shift Down}{Alt Down}{F1 Down}{F1 Up}{Alt Up}{Shift Up}{Ctrl Up}
return
F2::
guiShow("Capture Region","FF0000","Screen Capture")
Send {Ctrl Down}{Shift Down}{Alt Down}{F2 Down}{F2 Up}{Alt Up}{Shift Up}{Ctrl Up}
return
F3::
guiShow("Capture Active Window","FF0000","Screen Capture")
Send {Ctrl Down}{Shift Down}{Alt Down}{F3 Down}{F3 Up}{Alt Up}{Shift Up}{Ctrl Up}
return
F4::
guiShow("Capture GIF","FF0000","Screen Capture")
Send {Ctrl Down}{Shift Down}{Alt Down}{F4 Down}{F4 Up}{Alt Up}{Shift Up}{Ctrl Up}
return
F5::
guiShow("Shorten URL","0000FF","Screen Capture")
Send {Ctrl Down}{Shift Down}{Alt Down}{F5 Down}{F5 Up}{Alt Up}{Shift Up}{Ctrl Up}
return
F6::
guiShow("Send Code","00FF00","Screen Capture")
Send {Ctrl Down}{Shift Down}{Alt Down}{F6 Down}{F6 Up}{Alt Up}{Shift Up}{Ctrl Up}
return
F7::
F9::
F8::
F10::
F11::
F12::tooltip, you pressed the function key %A_thishotkey% on the extra keyboard

;;;;;next row;;;;;

`::
  guiShow2("Dip to Black","DB00FD")
  BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
  BlockInput, On ;-------------------------------------Blocks input from the user.
  SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
  MouseGetPos, xm, ym ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
  DllCall("SetCursorPos", int, 967, int, 61) ;----------Moves cursor to effects tab.
  sleep, 10
  MouseClick, Left, , , 1 ;----------------------------Selects the effects tab.
  DllCall("SetCursorPos", int, 1562, int, 128) ;---------Moves mouse cursor to effects search bar.
  sleep, 10
  MouseClick, Left, , , 1 ;----------------------------Selects effects search bar.
  DllCall("SetCursorPos", int, 1718, int, 25) ;---------Moves mouse cursor to effects search bar.
  sleep, 500
  MouseClick, Left, , , 1 ;----------------------------Selects effects search bar.
  SendInput, {Ctrl down}a{Ctrl up}{BS}Dip to Black ;------------------------------Clears effects search bar and inputs preset name.
  DllCall("SetCursorPos", int, 1573, int, 299) ;---------Moves mouse cursor to select the preset.
  sleep, 500
  MouseClickDrag, Left, , , xm, ym, 1 l ;----------Drags preset to clip.
  DllCall("SetCursorPos", int, xpos, int, ypos) ;------Returns the mouse to original position.
  BlockInput, off ;------------------------------------Re-enables user input.
  return
1::
2::
3::
4::
5::
6::
7::
  guiShow2("Rotate","DB00FD")
  BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
  BlockInput, On ;-------------------------------------Blocks input from the user.
  SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
  MouseGetPos, xm, ym ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
  DllCall("SetCursorPos", int, 967, int, 61) ;----------Moves cursor to effects tab.
  sleep, 10
  MouseClick, Left, , , 1 ;----------------------------Selects the effects tab.
  DllCall("SetCursorPos", int, 1562, int, 128) ;---------Moves mouse cursor to effects search bar.
  sleep, 10
  MouseClick, Left, , , 1 ;----------------------------Selects effects search bar.
  DllCall("SetCursorPos", int, 1718, int, 25) ;---------Moves mouse cursor to effects search bar.
  sleep, 500
  MouseClick, Left, , , 1 ;----------------------------Selects effects search bar.
  SendInput, {Ctrl down}a{Ctrl up}{BS}Rotate 90 ;------------------------------Clears effects search bar and inputs preset name.
  DllCall("SetCursorPos", int, 1573, int, 299) ;---------Moves mouse cursor to select the preset.
  sleep, 500
  MouseClickDrag, Left, , , xm, ym, 1 l ;----------Drags preset to clip.
  DllCall("SetCursorPos", int, xpos, int, ypos) ;------Returns the mouse to original position.
  BlockInput, off ;------------------------------------Re-enables user input.
  return
8::
9::
0::
-::
=::
backspace::
;;;;;next row;;;;;

tab::
^q::
  FileDelete, Clip1.clip
  FileDelete, Clip2.clip
  FileDelete, Clip3.clip
  FileDelete, Clip4.clip
  guiShow("Cleared All Clipboards","FF0000","Clipboard")
  return
q::
  Clipboard1 := Clip()
  FileDelete, Clip1.clip
  FileAppend, %Clipboard%, Clip1.clip
  guiShow("Copied to Clipboard 1","FF0000","Clipboard")
  return
w::
  Clipboard1 := Clip()
  FileDelete, Clip2.clip
  FileAppend, %Clipboard%, Clip2.clip
  guiShow("Copied to Clipboard 2","FF0000","Clipboard")
  return
e::
  Clipboard1 := Clip()
  FileDelete, Clip3.clip
  FileAppend, %Clipboard%, Clip3.clip
  guiShow("Copied to Clipboard 3","FF0000","Clipboard")
  return
r::
  Clipboard1 := Clip()
  FileDelete, Clip4.clip
  FileAppend, %Clipboard%, Clip4.clip
  guiShow("Copied to Clipboard 4","FF0000","Clipboard")
  return
t::
  Send, {Ctrl down}c{Ctrl up}{Alt down}{Shift down}{Ctrl down}s{Ctrl up}{Shift up}{Alt up}
  guiShow("Shortened URL","00FF00","Clipboard")
  return
y::
u::
  run Explorer "C:\Users\jacklrpendleton\Documents"
  guiShow("Opening Documents Folder","FFFFFF","Folders")
  return
i::
  run Explorer "C:\Users\jacklrpendleton\Music"
  guiShow("Opening Music Folder","FFFFFF","Folders")
  return
^i::
  run Explorer "C:\Users\jacklrpendleton\OneDrive\Skating"
  guiShow("Opening Music Folder","FFFFFF","Folders")
  return
o::
  run Explorer "C:\Users\jacklrpendleton\Pictures"
  guiShow("Opening Pictures Folder","FFFFFF","Folders")
  return
p::
  run Explorer "C:\Users\jacklrpendleton\Videos"
  guiShow("Opening Videos Folder","FFFFFF","Folders")
  return
[::
  guiShow2("Dip to Black","DB00FD")
  BlockInput, SendAndMouse ;---------------------------Selects the inputs to block.
  BlockInput, On ;-------------------------------------Blocks input from the user.
  SetKeyDelay, 0 ;-------------------------------------Makes key presses have 0 delay.
  MouseGetPos, xm, ym ;----------------------------Stores current co-ordinates of mouse position as variables x and y.
  DllCall("SetCursorPos", int, 967, int, 61) ;----------Moves cursor to effects tab.
  sleep, 1000
  MouseClick, Left, , , 1 ;----------------------------Selects the effects tab.
  DllCall("SetCursorPos", int, 1562, int, 128) ;---------Moves mouse cursor to effects search bar.
  sleep, 1000
  MouseClick, Left, , , 1 ;----------------------------Selects effects search bar.
  DllCall("SetCursorPos", int, 1718, int, 25) ;---------Moves mouse cursor to effects search bar.
  sleep, 1000
  MouseClick, Left, , , 1 ;----------------------------Selects effects search bar.
  SendInput, {BS}Dip to Black ;------------------------------Clears effects search bar and inputs preset name.
  DllCall("SetCursorPos", int, 1573, int, 299) ;---------Moves mouse cursor to select the preset.
  sleep, 1000
  MouseClickDrag, Left, , , xm, ym, 1 l ;----------Drags preset to clip.
  DllCall("SetCursorPos", int, xpos, int, ypos) ;------Returns the mouse to original position.
  BlockInput, off ;------------------------------------Re-enables user input.
  return
]::
  guiShow("Opening Videos Folder","DB00FDp","Folders")
  return
\::

;;;;;next row;;;;;

capslock::
a::
  FileRead, Clipboard, C:\Users\jacklrpendleton\Desktop\2keyboard\Clip1.clip ; Note the use of *c, which must precede the filename.
  ClipWait
  SendInput ^v
  guiShow("Pasted from Clipboard 1","FF0000","Clipboard")
  return
s::
  FileRead, Clipboard, C:\Users\jacklrpendleton\Desktop\2keyboard\Clip2.clip ; Note the use of *c, which must precede the filename.
  ClipWait
  SendInput ^v
  guiShow("Pasted from Clipboard 2","FF0000","Clipboard")
  return
d::
  FileRead, Clipboard, C:\Users\jacklrpendleton\Desktop\2keyboard\Clip3.clip ; Note the use of *c, which must precede the filename.
  ClipWait
  SendInput ^v
  guiShow("Pasted from Clipboard 3","FF0000","Clipboard")
  return
f::
  FileRead, Clipboard, C:\Users\jacklrpendleton\Desktop\2keyboard\Clip4.clip ; Note the use of *c, which must precede the filename.
  ClipWait
  SendInput ^v
  guiShow("Pasted from Clipboard 4","FF0000","Clipboard")
  return
g::
  Run, "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE"
  guiShow("Running Outlook","00A1F1","Office")
  return
h::
  Run, "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE"
  guiShow("Running Word","243974","Office")
  return
j::
  Run, "C:\Program Files\Adobe\Adobe Photoshop CC 2018\Photoshop.exe"
  guiShow("Running Photoshop","00A9FD","Office")
  return
k::
Run, "E:\Program Files\Adobe\Adobe Premiere Pro CC 2018\Adobe Premiere Pro.exe"
guiShow("Running Premiere","DB00FD","Adobe CC")
return
l::
Run, "E:\Program Files\Adobe\Adobe After Effects CC 2018\Support Files\AfterFX.exe"
guiShow("Running After Effects","6F00FD","Adobe CC")
return
`;::
Run, "E:\Program Files\Adobe\Adobe Illustrator CC 2018\Support Files\Contents\Windows\Illustrator.exe"
guiShow("Running Illustrator","FDA100","Adobe CC")
return
'::
enter::
;Input my radius
InputBox, Radius, Radius, Input Radius
;Draw my circle
^5::
MouseGetPos, StartX, StartY
MouseMove, 0, %Radius%, 0, R
MouseClick, Left, , , , 0, D
Loop 64
{
	xVar := Radius*Sin(A_Index/10)
	yVar := Radius*Cos(A_Index/10)
	DrawX := StartX+xVar
	DrawY := StartY+yVar
	MouseMove, %DrawX%, %DrawY%,

}
MouseClick, Left, , , , 0, U

Return

;;;;;next row;;;;;

Lshift::
z::
  Run, chrome.exe
  guiShow("Running Chrome","FFFFFF","Programs")
  return
x::
  Run, explorer.exe
  guiShow("Running File Explorer","FFFFFF","Folders")
  return
c::
  Run, "C:\Users\jacklrpendleton\AppData\Local\Programs\Microsoft VS Code\Code.exe"
  guiShow("Running VSCode","007acc","Programs")
  return
v::
  Run, "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE\devenv.exe"
  guiShow("Running VS2017","007acc","Programs")
  return
b::
  Send, {Alt}vo{Enter}{Alt}h{Esc}{Esc}
  guiShow("Sorting by: Name","FF00FF","Folders")
  return
n::
  Send, {Alt}vo{NumpadDown}{Enter}{Alt}h{Esc}{Esc}
  guiShow("Sorting by: Date Modified","FF00FF","Folders")
  return
m::
  Send, {Alt}vl{NumpadUp}{Enter}{Alt}h{Esc}{Esc}
  guiShow("Set display mode to: Medium Icons","FF00FF","Folders")
  return
,::
  Send, {Alt}vl{NumpadDown}{Enter}{Alt}h{Esc}{Esc}
  guiShow("Set display mode to: Details","FF00FF","Folders")
  return
.::
  Run, "C:\Program Files (x86)\Steam\Steam.exe"
  guiShow("Running Steam","00adee","Programs")
  return
/::
  Run, "C:\Users\jacklrpendleton\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\discord.bat"
  guiShow("Running Discord","7289DA","Programs")
  return
Rshift::
  Run, "C:\Users\jacklrpendleton\AppData\Roaming\Spotify\Spotify.exe"
  guiShow("Running Spotify","1DB954","Programs")
  return

;;;;;next row;;;;;

Lctrl::
Run nircmd changeappvolume Spotify.exe -0.05
guiShow("Spotify Volume -5","1DB954","Audio")
return
Lwin::
Lalt::
space::
Ralt::
Rwin::
appskey::
  guiShow2("Running Macro: crime","FF0000")
  Send {!}crime{enter}  ; Types a two-line signature.
  Sleep, 100
  Send {!}give fanman all{enter}  ; Types a two-line signature.
  guiShow2("Done!","00FF00")
  return
Rctrl::

;;;;;next area;;;;;

PrintScreen::tooltip, printscreen
ScrollLock::tooltip, scroll lock
SC061::tooltip, SC061 is unpredictable

CtrlBreak::tooltip, IDK if CTRL BREAK is even a real key
pause::tooltip, 'pause' is unpredictable
Break::tooltip, 'break' is unpredictable
SC045::msgbox, sc045 is num lock but maybe actually pause/break???

insert::
home::
  Run, "C:\Users\jacklrpendleton\Desktop\2keyboard\overlay_crosshair.ahk"
  guiShow2("Running Crosshair","FFFFFF")
  return
pgup::

delete::
end::
  guiShow2("Running Macro: Deposit All","FF0000")
  Send {!}dep all{enter}  ; Types a two-line signature.
  guiShow2("Done!","00FF00")
  return
pgdn::tooltip, you pressed %A_thishotkey% on the extra keyboard weird keys

up::
  Send, {LWinDown}{Up Down}{Up Up}{LWinUp}
  guiShow("Window Up","FFFFFF","Window Management")
  return
down::
  Send, {LWinDown}{Down Down}{Down Up}{LWinUp}
  guiShow("Window Down","FFFFFF","Window Management")
  return
left::
  Send, {LWinDown}{Left Down}{Left Up}{LWinUp}
  guiShow("Window Left","FFFFFF","Window Management")
  return
right::
  Send, {LWin}{Right Down}{Right Up}{LWinUp}
  guiShow("Window Right","FFFFFF","Window Management")
  return

;;;;;next area;;;;;

numpad0::
  Run nircmd changeappvolume focused -1
  guiShow("Muted Active Window","FFFF00","Audio")
  return
numpad1::
  Run nircmd setdefaultsounddevice "Headset Earphone"
  guiShow("Output: Headphones 1","3399ff","Audio")
  return
numpad2::
  Run nircmd setdefaultsounddevice "Realtek Digital Output"
  guiShow("Output: Headphones 2","3399ff","Audio")
  return
numpad3::
  Run nircmd setdefaultsounddevice "LG IPS FULLHD"
  guiShow("Output: Line Out","3399ff","Audio")
  return
numpad4::
  Run nircmd changeappvolume focused -0.05
  guiShow("Active Window Volume -5","FFFF00","Audio")
  return
numpad5::
numpad6::
  Run nircmd changeappvolume Discord.exe -0.05
  guiShow("Discord Volume -5","7289DA","Audio")
  return
numpad7::
  Run nircmd changeappvolume focused +0.05
  guiShow("Active Window Volume +5","FFFF00","Audio")
  return
numpad8::
  Run nircmd changeappvolume Spotify.exe +0.05
  guiShow("Spotify Volume +5","1DB954","Audio")
  return
numpad9::
  Run nircmd changeappvolume Discord.exe +0.05
  guiShow("Discord Volume +5","7289DA","Audio")
  return

numlock::
numpadDiv::
numpadMult::

numpadSub::
numpadAdd::
numpadEnter::

numpadDot::
  Run nircmd changeappvolume focused 1
  guiShow("Unmuted Active Window","FFFF00","Audio")
  return

#IfWinActive ahk_exe Adobe Premiere Pro.exe

  Tippy(tipsHere, wait:=333)
  {
  ToolTip, %tipsHere%
  SetTimer, noTip, %wait% ;--in 1/3 seconds by default, remove the tooltip
  }

  noTip:
  	ToolTip,
  	;removes the tooltip
  return

  Return

  #IfWinActive

;;;;;some scan codes;;;;;

;These are modifier keys that I prefer to keep as modifier keys
SC07B::
showMod("ctrl")
Send, {RCtrl}
Return
SC071::
showMod("ctrl")
Send, {LCtrl}
Return
SC073::
showMod("alt")
Send, {LAlt}
Return
SC077::
showMod("alt")
Send, {RAlt}
Return
SC07D::
showMod("shift")
Send, {RShift}
Return
SC070::
showMod("shift")
Send, {LShift}
Return

return
#if
;END of F23 based keyboard
;-------------------------
~RCtrl::
showMod("ctrl")
Return
~LCtrl::
showMod("ctrl")
Return
~LAlt::
showMod("alt")
Return
~RAlt::
showMod("alt")
Return
~RShift::
showMod("shift")
Return
~LShift::
showMod("shift")
Return

;BEGINNING OF 3RD KEYBOARD - USB NUMPAD
#if (getKeyState("F22", "P"))
F22::return

numpad0::
numpad1::
numpad2::
numpad3::
numpad4::
numpad5::
numpad6::
numpad7::
numpad8::
numpad9::tooltip, you pressed %A_thishotkey% from the 3RD keyboard!

numlock::
numpadDiv::
numpadMult::

numpadSub::
numpadAdd::
numpadEnter::

numpadDot::tooltip, you pressed %A_thishotkey% from the 3RD keyboard! YEAAAH!


#if
;End of F22 based 3rd keyboard

;And then you can have a 4th keyboard and so on and so FOURTH!
;If you use all the function keys from F24 to F13, you can start using weird unassigned scancodes, or virtual keys!
;if you run out of those, you can maybe start doubling up keys! Wrap each on in TWO layers of other keys!
;If you run out of THAT, then you're absolutely crazy and your whole room would be filled with keyboards.
guiShow(Text, Color, LText)
{
	IfWinExist, guiWindow
	{
		Gui, destroy
	}

  Gui,+Owner +AlwaysOnTop -Resize -SysMenu -MinimizeBox -MaximizeBox -Disabled -Caption -Border -ToolWindow
  Gui,Margin,0,0
  Gui,Color,191919
  Gui, Add, Picture, x0 y0 +hwndImage, C:\bg.png
  Gui, Font, C%Color% S27 W200 Q5 , Roboto
	Gui, Add, text, x10 y8 BackGroundTrans, %Text%
  Gui, Font, CFFFFFF S15 W200 Q5 , Roboto
  Gui, Add, text, x10 y50 BackGroundTrans, %LText%
  Gui, Font,c44FF55 S20 W1000 norm, Roboto
  Gui +E0x20 +LastFound +ToolWindow +disabled
	SysGet, screenx, 0
	SysGet, screeny, 1
	xpos:=screenx-275
	ypos:=screeny-50
  WinSet, TransColor, 191919 200
	Gui, Show, NoActivate x20 y900 h100 w500, guiWindow





	SetTimer,closeGui, 1500
}
closeGui:
    SetTimer,closeGui, off
    Gui, destroy
Return

guiShow2(Text, Color)
{
	IfWinExist, guiWindow
	{
		Gui, destroy
	}

  Gui,+Owner +AlwaysOnTop -Resize -SysMenu -MinimizeBox -MaximizeBox -Disabled -Caption -Border -ToolWindow
  Gui,Margin,0,0
  Gui,Color,191919
  Gui, Add, Picture, x0 y0 +hwndImage, C:\bg.png
  Gui, Font, C%Color% S27 W200 Q5 , Roboto
	Gui, Add, text, x10 y8 BackGroundTrans, %Text%
  Gui, Font,c44FF55 S20 W1000 norm, Roboto
  Gui +E0x20 +LastFound +ToolWindow +disabled
	SysGet, screenx, 0
	SysGet, screeny, 1
	xpos:=screenx-275
	ypos:=screeny-50
  WinSet, TransColor, 191919 200
	Gui, Show, NoActivate x20 y900 h100 w500, guiWindow





	SetTimer,closeGui, 1500
}

showMod(Image)
{
	IfWinExist, guiWindow
	{
		Gui, destroy
	}

  img = %Image%.png

  Gui,+Owner +AlwaysOnTop -Resize -SysMenu -MinimizeBox -MaximizeBox -Disabled -Caption -Border -ToolWindow
  Gui,Margin,0,0
  Gui,Color,191919
  Gui, Add, Picture, x0 y0 w96 h96 +hwndImage, C:\bg.png
  Gui, Add, Picture, x0 y0 w96 h96 BackGroundTrans, %img%
  Gui +E0x20 +LastFound +ToolWindow +disabled
	SysGet, screenx, 0
	SysGet, screeny, 1
	xpos:=screenx-275
	ypos:=screeny-50
  WinSet, TransColor, 191919 200
	Gui, Show, NoActivate x20 y900 h100 w500, guiWindow





	SetTimer,closeGui, 1500
}

Clip(Text="", Reselect="") ; http://www.autohotkey.com/forum/viewtopic.php?p=467710 , modified February 19, 2013
{
	Static BackUpClip, Stored, LastClip
	If (A_ThisLabel = A_ThisFunc) {
		If (Clipboard == LastClip)
			Clipboard := BackUpClip
		BackUpClip := LastClip := Stored := ""
	} Else {
		If !Stored {
			Stored := True
			BackUpClip := ClipboardAll ; ClipboardAll must be on its own line
		} Else
			SetTimer, %A_ThisFunc%, Off
		LongCopy := A_TickCount, Clipboard := "", LongCopy -= A_TickCount ; LongCopy gauges the amount of time it takes to empty the clipboard which can predict how long the subsequent clipwait will need
		If (Text = "") {
			SendInput, ^c
			ClipWait, LongCopy ? 0.6 : 0.2, True
		} Else {
			Clipboard := LastClip := Text
			ClipWait, 10
			SendInput, ^v
		}
		SetTimer, %A_ThisFunc%, -700
		Sleep 20 ; Short sleep in case Clip() is followed by more keystrokes such as {Enter}
		If (Text = "")
			Return LastClip := Clipboard
		Else If (ReSelect = True) or (Reselect and (StrLen(Text) < 3000)) {
			StringReplace, Text, Text, `r, , All
			SendInput, % "{Shift Down}{Left " StrLen(Text) "}{Shift Up}"
		}
	}
	Return
	Clip:
	Return Clip()
}

