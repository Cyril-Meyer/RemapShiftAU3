#include <Misc.au3>

Local $hDLL = DllOpen("user32.dll")
$key = "5B"

HotKeySet("+!q","Quit")

While True
   If _IsPressed($key, $hDLL) Then
	  Send("{lshift down}")
;~ 	  ConsoleWrite("D")
	  While _IsPressed($key, $hDLL)
	  WEnd
	  Send("{lshift up}")
;~ 	  ConsoleWrite("U")
   EndIf
WEnd

Func Quit()
    Exit
 EndFunc
