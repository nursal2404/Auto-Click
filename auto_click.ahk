#MaxThreadsPerHotkey, 2
SetDefaultMouseSpeed, 0
SetBatchLines, -1

$F12::
    bFlag := !bFlag
    startTime := A_TickCount ; dapatkan tick count saat ini
    while (bFlag && A_TickCount - startTime <= 60000)
    {
        MouseGetPos, mouseX, mouseY ; dapatkan posisi mouse saat ini
        MouseClick, left, %mouseX%, %mouseY%
        sleep, 10
    }
    bFlag := false ; set bFlag menjadi false
    Return
