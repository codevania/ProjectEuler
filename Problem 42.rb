# Get nth Triangle number 
#  >> ( n * (n + 1) ) / 2 = nthTriangleNumber
#
# How to check that x is triangle number?
#  >> ( n * (n + 1) ) / 2 = nthTriangleNumber = x
#     n^2 + n = 2x
#     4n^2 + 4n = 8x
#     4n^2 + 4n + 1 = 8x + 1
#     (2n + 1)^2 = 8x + 1
#     2n + 1 = sqrt(8x + 1)
#     n = ( sqrt(8x + 1) - 1 ) / 2

def NameScore( s )
	alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' ]

	sum = 0

	for i in ( 0 .. s.length-1 )
	 	sum += alphabet.index( s[i] )+1
	end

	return sum
end

def GetTriangleNumberIdx( num )
	t = Math.sqrt( ( 8 * num ) + 1 )
	
	if ( Rational(t).denominator != 1 )
		return 0
	end

	if ( t.to_i % 2 == 0 )
		return 0
	end

	return (t.to_i - 1) / 2
end

def ExtractData()
	t = []

	file = File.open("words.txt")
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
count = 0

for i in t
	scr = NameScore( i )
	idx = GetTriangleNumberIdx( scr )
	if ( idx != 0 )
		print i, ": ", scr, "\n"
		count += 1
	end
end

print count