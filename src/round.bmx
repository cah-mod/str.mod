Rem
bbdoc:
EndRem
Function Round:Double(val:Double, decimals:Int)
	Return Double(bmx_double_to_string(val, decimals))
EndFunction

Rem
bbdoc:
EndRem
Function RoundToString:String(val:Double, decimals:Int)
	Return bmx_double_to_string(val, decimals)
EndFunction

Rem
bbdoc:
EndRem
Function RoundToString:String(val:Double, decimals:Int, pretty:Int)
	Local str:String = RoundToString(val, decimals)
	
	If Not pretty
		Return str
	EndIf
	
	Local find:Int = str.find(".")
	
	Local major:String = str[..find]
	Local minor:String = str[find+1..]
	
	minor = TrimRight(minor, "0")
	
	If Not minor
		Return major
	EndIf
	
	Return major + "." + minor
EndFunction
