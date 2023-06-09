Rem
bbdoc: Remove unwanted characters from the beginning of a string
EndRem
Function TrimLeft:String(str:String, chars:String)
	For Local i:Int = 0 To str.Length-1
		If Not StrContains(chars, str[i])
			Return str[i..str.Length]
		EndIf
	Next
EndFunction

Rem
bbdoc: Remove unwanted characters from the beginning of each string in an array
EndRem
Function TrimLeft:String[](str:String[], chars:String)
	Local out:String[] = str[..]
	
	For Local i:Int = 0 Until out.length
		out[i] = TrimLeft(out[i], chars)
	Next
	
	Return out
EndFunction

Rem
bbdoc: Remove unprintable characters from the beginning of a string
EndRem
Function TrimLeft:String(str:String)
	For Local i:Int = 0 To str.Length-1
		If str[i] > 32
			Return str[i..str.Length]
		EndIf
	Next
EndFunction

Rem
bbdoc: Remove unprintable characters from the beginning of each string in an array
EndRem
Function TrimLeft:String[](str:String[])
	Local out:String[] = str[..]
	
	For Local i:Int = 0 Until out.length
		out[i] = TrimLeft(out[i])
	Next
	
	Return out
EndFunction

Rem
bbdoc: Remove unwanted characters from the end of a string
EndRem
Function TrimRight:String(str:String, chars:String)
	For Local i:Int = str.Length - 1 To 0 Step -1
		If Not StrContains(chars, str[i])
			Return str[0..i + 1]
		EndIf
	Next
EndFunction

Rem
bbdoc: Remove unwanted characters from the end of each string in an array
EndRem
Function TrimRight:String[](str:String[], chars:String)
	Local out:String[] = str[..]
	
	For Local i:Int = 0 Until out.length
		out[i] = TrimRight(out[i], chars)
	Next
	
	Return out
EndFunction

Rem
bbdoc: Remove unprintable characters from the end of a string
EndRem
Function TrimRight:String(str:String)
	For Local i:Int = str.Length - 1 To 0 Step -1
		If str[i] > 32
			Return str[0..i + 1]
		EndIf
	Next
EndFunction

Rem
bbdoc: Remove unprintable characters from the beginning of each string in an array
EndRem
Function TrimRight:String[](str:String[])
	Local out:String[] = str[..]
	
	For Local i:Int = 0 Until out.length
		out[i] = TrimRight(out[i])
	Next
	
	Return out
EndFunction

Rem
bbdoc: Remove unwanted characters from both start and end
EndRem
Function Trim:String(str:String, chars:String)
	str = TrimLeft(str, chars)
	str = TrimRight(str, chars)
	Return str
EndFunction

Rem
bbdoc: Remove unwanted characters from both start and end of each string in an array
EndRem
Function Trim:String[](str:String[], chars:String)
	Local out:String[] = str[..]
	
	For Local i:Int = 0 Until out.length
		out[i] = Trim(out[i], chars)
	Next
	
	Return out
EndFunction

Rem
bbdoc: Remove unprintable characters from both start and end of each string in an array
EndRem
Function Trim:String[](str:String[])
	Local out:String[] = str[..]
	
	For Local i:Int = 0 Until out.length
		out[i] = out[i].Trim()
	Next
	
	Return out
EndFunction