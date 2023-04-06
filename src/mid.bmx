Rem
bbdoc: Returns part of a string starting at pos, you may use a negative position.
EndRem
Function StrMid:String(str:String, pos:Int)
	If pos = 0 Or pos = 1
		Return str
	ElseIf pos > 0
		Return str[Max(pos-1, 0)..]
	Else
		Return str[Max(str.length+pos, 0)..]
	EndIf
EndFunction

Rem
bbdoc: Returns part of a string starting at pos with a certain length, you may use negative position and length.
EndRem
Function StrMid:String(str:String, pos:Int, length:Int)
	If pos >= 0
		If pos > 0
			pos:-1
		EndIf
		
		If length = 0
			Return str[pos..]
		ElseIf length > 0
			Return str[pos..Min(str.length, pos+length)]
		Else
			Return str[pos..Max(str.length+length, pos)]
		EndIf
	Else
		Local starts:Int = Max(str.length+pos, 0)
		
		If length = 0
			Return str[starts..]
		ElseIf length > 0
			Return str[starts..Min(starts+length, str.length)]
		Else
			starts = Max(starts+length, 0)
			Return str[starts..Min(starts-length, str.length)]
		EndIf
	EndIf
EndFunction