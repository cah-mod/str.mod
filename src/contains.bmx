Rem
bbdoc: Returns true if the string contains character
EndRem
Function StrContains:Int(str:String, char:Int)
	For Local i:Int = EachIn str
		If i <> char
			Continue
		EndIf
		
		Return True
	Next
	
	Return False
EndFunction

Rem
bbdoc: Returns true if the string contains any of the characters
EndRem
Function StrContains:Int(str:String, char:Int[])
	For Local tmp:Int = EachIn char
		If Not StrContains(str, char)
			Continue
		EndIf
		
		Return True
	Next
	
	Return False
EndFunction

Rem
bbdoc: Returns true if the string contains a substring
EndRem
Function StrContains:Int(str:String, sub:String)
	Return str.Contains(sub)
EndFunction

Rem
bbdoc: Returns true if the string contains any of the substrings
EndRem
Function StrContains:Int(str:String, sub:String[])
	For Local tmp:String = EachIn sub
		If Not str.Contains(tmp)
			Continue
		EndIf
		
		Return True
	Next
	
	Return False
EndFunction

Rem
bbdoc: Returns true if the string begins with substring
EndRem
Function StrStartsWith:Int(str:String, sub:String)
	Return str.StartsWith(sub)
EndFunction

Rem
bbdoc: Returns true if the string begins with any of the substrings
EndRem
Function StrStartsWith:Int(str:String, sub:String[])
	For Local tmp:String = EachIn sub
		If Not str.StartsWith(tmp)
			Continue
		EndIf
		
		Return True
	Next
	
	Return False
EndFunction

Rem
bbdoc: Returns true if the string ends with substring
EndRem
Function StrEndsWith:Int(str:String, sub:String)
	Return str.EndsWith(sub)
EndFunction

Rem
bbdoc: Returns true if the string ends with any of the substrings
EndRem
Function StrEndsWith:Int(str:String, sub:String[])
	For Local tmp:String = EachIn sub
		If Not str.EndsWith(tmp)
			Continue
		EndIf
		
		Return True
	Next
	
	Return False
EndFunction