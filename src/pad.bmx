Rem
bbdoc: Pads the string from the left to a certain length using the provided characters
EndRem
Function StrPadLeft:String(str:String, chars:String, length:Int)
	If length <= str
		Return str
	EndIf
	
	Local count:Int, pad:String
	
	For Local i:Int = str.length Until length
		pad:+chars[count..count+1]
		
		If count < chars.length - 1
			count:+1
		ElseIf count = chars.length - 1
			count = 0
		EndIf
	Next
	
	Return pad + str
EndFunction

Rem
bbdoc: Pads the string from the right to a certain length using the provided characters
EndRem
Function StrPadRight:String(str:String, chars:String, length:Int)
	If length <= str
		Return str
	EndIf
	
	Local count:Int, pad:String
	
	For Local i:Int = str.length To length-1
		pad:+chars[count..count+1]
		
		If count < chars.length - 1
			count:+1 
		ElseIf count = chars.length - 1
			count = 0
		EndIf
	Next
	
	Return str + pad
EndFunction