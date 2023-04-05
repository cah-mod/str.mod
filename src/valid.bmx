Rem
bbdoc: Returns true if the character is a digit
EndRem
Function CharIsDigit:Int(char:Int)
	Return char >= 48 And char <= 57
EndFunction

Rem
bbdoc: Returns true if all of the characters in a string is a digit
EndRem
Function StrIsDigits:Int(str:String)
	If str.length = 0
		Return False
	EndIf
	
	For Local i:Int = EachIn str
		If CharIsDigit(i)
			Continue
		EndIf
		
		Return False
	Next
	
	Return True
EndFunction

Rem
bbdoc: Returns true if the character is between the ranges of "a-z" and "A-Z"
EndRem
Function CharIsAlpha:Int(char:Int)
	Return (char >= 65 And char <= 90) Or (char >= 97 And char <= 122)
EndFunction

Rem
bbdoc: Returns true if all of the characters in a string is between the ranges of "a-z" and "A-Z"
EndRem
Function StrIsAlpha:Int(str:String)
	If str.length = 0
		Return False
	EndIf
	
	For Local i:Int = EachIn str
		If CharIsAlpha(i)
			Continue
		EndIf
		
		Return False
	Next
	
	Return True
EndFunction

Rem
bbdoc: Returns true if the char is alphanumeric
EndRem
Function CharIsAlphaNum:Int(char:Int)
	Return CharIsDigit(char) Or CharIsAlpha(Char)
EndFunction

Rem
bbdoc: Returns true if the string is alphanumeric
EndRem
Function StrIsAlphaNumeric:Int(str:String)
	If str.length = 0
		Return False
	EndIf
	
	For Local i:Int = EachIn str
		If CharIsAlphaNum(i)
			Continue
		EndIf
		
		Return False
	Next
	
	Return True
EndFunction