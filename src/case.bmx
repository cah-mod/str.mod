Rem
bbdoc: Converts the first letter of the string to uppercase
EndRem
Function StrUpperFirst:String(str:String)
	If str.length = 0
		Return ""
	EndIf
	
	If str.length = 1
		Return str.ToUpper()
	EndIf
	
	Return str[..1].ToUpper() + str[1..]
EndFunction

Rem
bbdoc: Converts the first letter of each word separated by a delimiter
EndRem
Function StrUpperWords:String(str:String, delimiter:String=" ")
	Local words:String[] = str.Trim().split(delimiter)
	
	For Local i:Int = 0 Until words.length
		words[i] = StrUpperFirst(words[i])
	Next
	
	Return " ".Join(words).Trim()
EndFunction

Rem
bbdoc: Converts all of the strings of an array into uppercase
EndRem
Function Upper:String[](arr:String[])
	Local out:String[] = arr[..]
	
	For Local i:Int = 0 Until out.length
		out[i] = out[i].ToUpper()
	Next
	
	Return out
EndFunction

Rem
bbdoc: Converts all of the strings of an array into lowercase
EndRem
Function Lower:String[](arr:String[])
	Local out:String[] = arr[..]
	
	For Local i:Int = 0 Until out.length
		out[i] = out[i].ToLower()
	Next
	
	Return out
EndFunction