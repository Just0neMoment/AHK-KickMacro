#NoEnv
#Persistent
#SingleInstance, Force


Gui, Add, Text, x12 y19 w140 h30 vStat, 실행 상태 : F3을 눌러주세요 !
Gui, Add, Text, x12 y59 w140 h30 , "F3" : 실행 `n Ctrl + ``` : 프로그램 종료
; Generated using SmartGUI Creator for SciTE
Gui, Show, w170 h101, ★
return

GuiClose:
ExitApp

^`::ExitApp

F3::
GuiControl,, Stat, 실행 상태 : 실행중...!
Loop
{

    ImageFolder := A_ScriptDir "\image"

    Loop, Files, %ImageFolder%\*.*
    {
        If (A_LoopFileExt == "png" or A_LoopFileExt == "jpg" or A_LoopFileExt == "bmp")
        {
            ImagePath := A_LoopFileFullPath
            ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, %ImagePath%
            if ErrorLevel = 0
            {
                ClickX := FoundX + 50
                ClickY := FoundY - 12
                MouseClick, left, %ClickX%, %ClickY%
                Sleep, 100
            }
        }
    }
    Sleep, 1000 ; 예제로 1초 대기
}