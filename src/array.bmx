Rem
bbdoc: Converts an array of #Byte values to a string
EndRem
Function ArrayToString:String(data:Byte[], delimiter:String, enclosure:String)
	If Not data.length
		Return Null
	EndIf
	
	Local arr:String[] = New String[data.length]
	
	For Local i:Int = 0 Until data.length
		arr[i] = data[i]
	Next
	
	Return JoinStrings(arr, delimiter, enclosure)
EndFunction

Rem
bbdoc: Converts an array of #Byte values to a string
EndRem
Function ArrayToString:String(data:Byte[], delimiter:String)
	If Not data.length
		Return Null
	EndIf
	
	Local arr:String[] = New String[data.length]
	
	For Local i:Int = 0 Until data.length
		arr[i] = data[i]
	Next
	
	Return JoinStrings(arr, delimiter)
EndFunction

Rem
bbdoc: Converts an array of #Short values to a string
EndRem
Function ArrayToString:String(data:Short[], delimiter:String, enclosure:String)
	If Not data.length
		Return Null
	EndIf
	
	Local arr:String[] = New String[data.length]
	
	For Local i:Int = 0 Until data.length
		arr[i] = data[i]
	Next
	
	Return JoinStrings(arr, delimiter, enclosure)
EndFunction

Rem
bbdoc: Converts an array of #Short values to a string
EndRem
Function ArrayToString:String(data:Short[], delimiter:String)
	If Not data.length
		Return Null
	EndIf
	
	Local arr:String[] = New String[data.length]
	
	For Local i:Int = 0 Until data.length
		arr[i] = data[i]
	Next
	
	Return JoinStrings(arr, delimiter)
EndFunction

Rem
bbdoc: Converts an array of #Int values to a string
EndRem
Function ArrayToString:String(data:Int[], delimiter:String, enclosure:String)
	If Not data.length
		Return Null
	EndIf
	
	Local arr:String[] = New String[data.length]
	
	For Local i:Int = 0 Until data.length
		arr[i] = data[i]
	Next
	
	Return JoinStrings(arr, delimiter, enclosure)
EndFunction

Rem
bbdoc: Converts an array of #Int values to a string
EndRem
Function ArrayToString:String(data:Int[], delimiter:String)
	If Not data.length
		Return Null
	EndIf
	
	Local arr:String[] = New String[data.length]
	
	For Local i:Int = 0 Until data.length
		arr[i] = data[i]
	Next
	
	Return JoinStrings(arr, delimiter)
EndFunction

Rem
bbdoc: Converts an array of #UInt values to a string
EndRem
Function ArrayToString:String(data:UInt[], delimiter:String, enclosure:String)
	If Not data.length
		Return Null
	EndIf
	
	Local arr:String[] = New String[data.length]
	
	For Local i:Int = 0 Until data.length
		arr[i] = data[i]
	Next
	
	Return JoinStrings(arr, delimiter, enclosure)
EndFunction

Rem
bbdoc: Converts an array of #UInt values to a string
EndRem
Function ArrayToString:String(data:UInt[], delimiter:String)
	If Not data.length
		Return Null
	EndIf
	
	Local arr:String[] = New String[data.length]
	
	For Local i:Int = 0 Until data.length
		arr[i] = data[i]
	Next
	
	Return JoinStrings(arr, delimiter)
EndFunction

Rem
bbdoc: Converts an array of #Long values to a string
EndRem
Function ArrayToString:String(data:Long[], delimiter:String, enclosure:String)
	If Not data.length
		Return Null
	EndIf
	
	Local arr:String[] = New String[data.length]
	
	For Local i:Int = 0 Until data.length
		arr[i] = data[i]
	Next
	
	Return JoinStrings(arr, delimiter, enclosure)
EndFunction

Rem
bbdoc: Converts an array of #Long values to a string
EndRem
Function ArrayToString:String(data:Long[], delimiter:String)
	If Not data.length
		Return Null
	EndIf
	
	Local arr:String[] = New String[data.length]
	
	For Local i:Int = 0 Until data.length
		arr[i] = data[i]
	Next
	
	Return JoinStrings(arr, delimiter)
EndFunction

Rem
bbdoc: Converts an array of #ULong values to a string
EndRem
Function ArrayToString:String(data:ULong[], delimiter:String, enclosure:String)
	If Not data.length
		Return Null
	EndIf
	
	Local arr:String[] = New String[data.length]
	
	For Local i:Int = 0 Until data.length
		arr[i] = data[i]
	Next
	
	Return JoinStrings(arr, delimiter, enclosure)
EndFunction

Rem
bbdoc: Converts an array of #ULong values to a string
EndRem
Function ArrayToString:String(data:ULong[], delimiter:String)
	If Not data.length
		Return Null
	EndIf
	
	Local arr:String[] = New String[data.length]
	
	For Local i:Int = 0 Until data.length
		arr[i] = data[i]
	Next
	
	Return JoinStrings(arr, delimiter)
EndFunction