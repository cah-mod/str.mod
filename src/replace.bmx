Rem
bbdoc: Replaces all occurances of all substrings with a certain value
EndRem
Function Replace:String(str:String, sub:String[], replaceWith:String)
	For Local tmp:String = EachIn sub
		str = str.Replace(tmp, replaceWith)
	Next
	
	Return str
EndFunction

Rem
bbdoc: Replaces all occurances of all substrings with a corresponding value for each substring
EndRem
Function Replace:String(str:String, sub:String[], replaceWith:String[])
	If sub.length <> replaceWith.length
		Throw "Replace using arrays must use arrays of same length"
	EndIf
	
	For Local i:Int = 0 Until sub.length
		str = str.Replace(sub[i], replaceWith[i])
	Next
	
	Return str
EndFunction