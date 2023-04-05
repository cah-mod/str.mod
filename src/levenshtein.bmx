Rem
bbdoc: Returns the number of characters that needs to change in order for the two strings to be equal.
EndRem
Function StrLevenDist:Int(s:String, t:String)
	Local n:Int = Len(s)
	Local m:Int = Len(t)
	Local d:Int[,] = New Int[n+1, m+1]
	
	For Local i:Int = 0 To n
		d[i, 0] = i
	Next
	
	For Local j:Int = 1 To m
		d[0, j] = j
	Next
	
	For Local i:Int = 1 To n
		For Local j:Int = 1 To m
			Local cost:Int = (t[j - 1] <> s[i - 1])
			Local min1:Int = d[i - 1, j] + 1
			Local min2:Int = d[i, j - 1] + 1
			Local min3:Int = d[i - 1, j - 1] + cost
			d[i, j] = Min(Min(min1, min2), min3)
		Next
	Next
	
	Return d[n, m]
EndFunction

Rem
bbdoc: Returns how close one string resembels another using Levenshtein distance and returning it as a double (1=same, 0=nothing matches)
EndRem
Function StrLevenDistRate:Double(s:String, t:String)
	Local diff:Double = StrLevenDist(s, t)
	
	Local sl:Int = s.length
	Local tl:Int = t.length
	
	If sl > tl
		Return (sl-diff) / sl
	Else
		Return (tl-diff) / tl
	EndIf
EndFunction