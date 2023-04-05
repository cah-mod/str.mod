Rem
bbdoc: Splits a string into a string array using a delimiter
EndRem
Function SplitString:String[](str:String, delimiter:String)
	Return str.Split(delimiter)
EndFunction

Rem
bbdoc: Splits a string into a string array using a delimiter but keeping the last part for each iteration. (Ascending)
EndRem
Function StairSplitDesc:String[](str:String, delimiter:String)
	Local parts:String[] = str.Split(delimiter)
	Local out:String[] = New String[parts.length]
	
	For Local i:Int = 0 Until parts.length
		out[i] = JoinStrings(parts[0..parts.length-i], delimiter)
	Next
	
	Return out
EndFunction

Rem
bbdoc: Splits a string into a string array using a delimiter but keeping the last part for each iteration. (Descending)
EndRem
Function StairSplitAsc:String[](str:String, delimiter:String)
	Local parts:String[] = str.Split(delimiter)
	Local out:String[] = New String[parts.length]
	
	For Local i:Int = 0 Until parts.length
		out[i] = JoinStrings(parts[0..i+1], delimiter)
	Next
	
	Return out
EndFunction