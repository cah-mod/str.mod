Rem
bbdoc: Returns the string between two occurances of @sub
EndRem
Function StrBetween:String(str:String, sub:String, pos:Int=1)
	Local starts:Int = InstrEnd(str, sub, pos)
	
	If Not starts
		Return Null
	EndIf
	
	Local ends:Int = str.Find(sub, starts-1)
	
	If ends = -1
		Return Null
	EndIf
	
	Return str[starts-1..ends]
EndFunction

Rem
bbdoc: Returns the string between two occurances of @sub
EndRem
Function StrBetween:String(str:String, sub:String[], pos:Int=1)
	Local starts:Int = InstrEnd(str, sub, pos)
	
	If Not starts
		Return Null
	EndIf
	
	Local ends:Int = Instr(str, sub, starts)
	
	If Not ends
		Return Null
	EndIf
	
	Return str[starts-1..ends-1]
EndFunction

Rem
bbdoc: Returns all strings between two occurances of @sub
EndRem
Function StrBetweenArray:String[](str:String, sub:String, pos:Int=1, limit:Int=0)
	Local find:Int[] = InstrArray(str, sub, pos, limit*2)
	Local out:String[] = New String[find.length/2]
	
	For Local i:Int = 0 Until out.length
		out[i] = str[find[i*2]+sub.length-1..find[i*2+1]-1]
	Next
	
	Return out
EndFunction

Rem
bbdoc: Returns all strings between two occurances of @sub
EndRem
Function StrBetweenArray:String[](str:String, sub:String[], pos:Int=1, limit:Int=0)
	Local starts:Int[] = InstrEndArray(str, sub, pos, limit*2)
	Local ends:Int[] = InstrArray(str, sub, pos, limit*2)
	Local out:String[] = New String[starts.length/2]
	
	For Local i:Int = 0 Until out.length
		out[i] = str[starts[i*2]-1..ends[i*2+1]-1]
	Next
	
	Return out
EndFunction

Rem
bbdoc: Returns the string between two positions
EndRem
Function StrBetween:String(str:String, starts:Int, ends:Int)
	If starts = ends
		Return Null
	ElseIf starts < ends
		Return str[Max(starts-1, 0)..Min(ends-1, str.length)]
	Else
		Return str[Max(ends-1, 0)..Min(starts-1, str.length)]
	EndIf
EndFunction