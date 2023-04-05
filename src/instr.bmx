Rem
bbdoc: Returns the position + length of an occurance of substring within a string
EndRem
Function InstrEnd:Int(str:String, sub:String, start:Int=1)
	Local pos:Int = str.Find(sub, start-1)
	
	If pos = -1
		Return False
	EndIf
	
	Return pos + 1 + sub.length
EndFunction

Rem
bbdoc: Returns the position + length of the first occurance of any of the substrings within a string
EndRem
Function InstrEnd:Int(str:String, sub:String[], start:Int=1)
	Local lowest:Int
	
	start:-1
	
	For Local tmp:String = EachIn sub
		Local pos:Int = str.Find(tmp, start)
		
		If pos = -1
			Continue
		EndIf
		
		pos :+ tmp.length + 1
		
		If lowest And pos >= lowest
			Continue
		EndIf
		
		lowest = pos
	Next
	
	Return lowest
EndFunction

Rem
bbdoc: Returns an array of position + length of all occurances of substring within a string
EndRem
Function InstrEndArray:Int[](str:String, sub:String, pos:Int=1, limit:Int=0)
	Local count:Int = StrCount(str, sub)
	
	If limit And limit < count
		count = limit
	EndIf
	
	Local arr:Int[] = New Int[count]
	
	For Local i:Int = 0 Until count
		pos = InstrEnd(str, sub, pos)
		
		If Not pos
			Exit
		EndIf
		
		arr[i] = pos
		
		pos:+1
	Next
	
	Return arr
EndFunction

Rem
bbdoc: Returns an array of all position + length of all occurances of all substrings within a string
EndRem
Function InstrEndArray:Int[](str:String, sub:String[], pos:Int=1, limit:Int=0)
	Local count:Int = StrCount(str, sub)
	
	If limit And limit < count
		count = limit
	EndIf
	
	Local arr:Int[] = New Int[count]
	
	For Local i:Int = 0 Until count
		pos = InstrEnd(str, sub, pos)
		
		If Not pos
			Exit
		EndIf
		
		arr[i] = pos
		
		pos:+1
	Next
	
	Return arr
EndFunction

Rem
bbdoc: Returns the positions of first occurance of any of the substrings within a string
EndRem
Function Instr:Int(str:String, sub:String[], start:Int=1)
	Local lowest:Int
	
	start:-1
	
	For Local tmp:String = EachIn sub
		Local pos:Int = str.Find(tmp, start)
		
		If pos = -1
			Continue
		EndIf
		
		pos :+ 1
		
		If lowest And pos >= lowest
			Continue
		EndIf
		
		lowest = pos
	Next
	
	Return lowest
EndFunction

Rem
bbdoc: Returns an array of the position of each occurance of a substring within a string
EndRem
Function InstrArray:Int[](str:String, sub:String, pos:Int=1, limit:Int=0)
	Local count:Int = StrCount(str, sub)
	
	If limit And limit < count
		count = limit
	EndIf
	
	pos:-1
	
	Local arr:Int[] = New Int[count]
	
	For Local i:Int = 0 Until count
		pos = str.Find(sub, pos)
		
		If pos = -1
			Exit
		EndIf
		
		arr[i] = pos+1
		
		pos:+1
	Next
	
	Return arr
EndFunction

Rem
bbdoc: Returns an array of the position of each occurance of all substrings within a string
EndRem
Function InstrArray:Int[](str:String, sub:String[], pos:Int=1, limit:Int=0)
	Local count:Int = StrCount(str, sub)
	
	If limit And limit < count
		count = limit
	EndIf
	
	Local arr:Int[] = New Int[count]
	
	For Local i:Int = 0 Until count
		pos = Instr(str, sub, pos)
		
		If Not pos
			Exit
		EndIf
		
		arr[i] = pos
		
		pos:+1
	Next
	
	Return arr
EndFunction