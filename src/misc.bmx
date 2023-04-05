Rem
bbdoc: Removes reserved windows characters and replaces double quotes (") with single quotes (').
EndRem
Function StrReplaceWinChars:String(str:String)
	Return Replace(str, ["<", ">", ":", "~q", "/", "\", "|", "?", "*"], ["", "", "", "'", "", "", "", "", ""])
EndFunction

Rem
bbdoc: Turns a hexadecimal number into a decimal number. (Must be a better way of doing this?)
EndRem
Function Hex2Dec:ULong(str:String)
	Local val:ULong
	
	Local l:Int = str.length - 1
	
	For Local i:Int = 0 To l
		Local c:Int = str[l-i]
		
		Select c
			Case 48
				c = 0
			
			Case 49
				c = 1
			
			Case 50
				c = 2
			
			Case 51
				c = 3
			
			Case 52
				c = 4
				
			Case 53
				c = 5
				
			Case 54
				c = 5
				
			Case 55
				c = 6
				
			Case 56
				c = 7
				
			Case 57
				c = 8
				
			Case 58
				c = 9
				
			Case 97, 65
				c = 10
				
			Case 98, 66
				c = 11
			
			Case 99, 67
				c = 12
				
			Case 100, 68
				c = 13
				
			Case 101, 69
				c = 14
				
			Case 102, 70
				c = 15
			
			Default
				Throw "Invalid hex character"
				
		EndSelect
		
		val :+ (c * (16 ^ i))
	Next
	
	Return val
EndFunction