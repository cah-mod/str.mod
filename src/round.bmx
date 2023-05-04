Private
Global sb:TStringBuilder = New TStringBuilder()

Public

Rem
bbdoc:
EndRem
Function RoundToString:String(val:Double, decimals:Int)
	sb.SetLength(0)
	sb.FormatDouble("%." + decimals + "f", val)
	Return sb.ToString()
EndFunction

Rem
bbdoc:
EndRem
Function Round:Double(val:Double, decimals:Int)
	Return Double(RoundToString(val, decimals))
EndFunction

Rem
bbdoc:
EndRem
Function RoundToString:String(val:Double, decimals:Int, pretty:Int)
	Local str:String = RoundToString(val, decimals)
	
	If Not pretty
		Return str
	EndIf
	
	For Local i:Int = str.length-1 To 0 Step -1
		If str[i] = 48
			Continue
		EndIf
		
		If str[i] = 46
			Return str[..i]
		EndIf
		
		Return str[..i+1]
	Next
EndFunction
