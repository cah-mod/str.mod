Rem
bbdoc: Returns the number of times a substring occurs within a string
EndRem
Function StrCount:Int(str:String, sub:String)
	Local pos:Int, count:Int
	
	Repeat
		pos = str.Find(sub, pos+sub.length)
		
		If pos = -1
			Exit
		EndIf
		
		count:+1
	Forever
	
	Return count
EndFunction

Rem
bbdoc: Returns an array with the number of times each substring occurs within a string
EndRem
Function StrCountArray:Int[](str:String, sub:String[])
	Local out:Int[] = New Int[sub.length]
	
	For Local i:Int = 0 Until sub.length
		out[i] = StrCount(str, sub[i])
	Next
	
	Return out
EndFunction

Rem
bbdoc: Returns the number of times all substrings occurs within a string
EndRem
Function StrCount:Int(str:String, sub:String[])
	Local count:Int
	
	For Local i:Int = EachIn StrCountArray(str, sub)
		count:+i
	Next
	
	Return count
EndFunction