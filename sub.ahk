#NoEnv
#Persistent
#SingleInstance, Force

Gui, Add, Text, x12 y19 w140 h30 vStat, 실행 상태 : F2을 눌러주세요 !
Gui, Add, Text, x12 y59 w140 h30 , "F2" : 실행 `n Ctrl + ``` : 프로그램 종료
; Generated using SmartGUI Creator for SciTE
Gui, Show, w170 h101, ★
return

GuiClose:
ExitApp

^`::ExitApp

F2::
GuiControl,, Stat, 실행 상태 : 실행중...!
Loop
{
	EssentialFolder := A_ScriptDir "\essential"
    KickImagePath := EssentialFolder "\kick.png"


	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, %KickImagePath%
    if ErrorLevel = 0
    {
        MouseClick, left, %FoundX%, %FoundY%
        Sleep, 100
    }
}