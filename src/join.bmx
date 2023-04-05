Rem
bbdoc: Converts an array of strings into a string using a delimiter and enclosure
EndRem
Function JoinStrings:String(lines:String[], delimiter:String, enclosure:String)
	Return enclosure + (enclosure + delimiter + enclosure).Join(lines) + enclosure
EndFunction

Rem
bbdoc: Converts an array of strings into a string using a delimiter
EndRem
Function JoinStrings:String(lines:String[], delimiter:String)
	Return delimiter.Join(lines)
EndFunction

Rem
bbdoc: Converts an array of strings into a string
EndRem
Function JoinStrings:String(lines:String[])
	Return "".Join(lines)
EndFunction