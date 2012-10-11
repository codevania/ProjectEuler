

@alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' ]


def NameScore( s )
	sum = 0

	for i in ( 0 .. s.length-1 )
	 	sum += @alphabet.index( s[i] )+1
	end

	return sum
end

def ExtractData()
	t = []

	file = File.open("names.txt")
	file.each_line{ |line| 	
		
		l = line.split(",")
		l = l.collect{ |s|
			#print s, "\n"
			s = s.delete("\"").strip
		}

		t += l
	}

	return t
end

t = ExtractData()
t = t.sort

@SumOfScore = 0
for i in ( 0 .. t.length-1)
	#print "[ ", i, " ] ", t[i], "\n"

	@SumOfScore += NameScore( t[i] ) * (i+1)
end

print @SumOfScore