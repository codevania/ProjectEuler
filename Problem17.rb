@digit0_ = [ "_zero_", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" ]
@digit1_ = [ "_zero_", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen" ]
@digit_0 = [ "_zero_", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety" ]


def DigitStr( n, s )

	if ( n < 10 )
		s += @digit0_[ n ]
		return 0, s

	elsif ( n == 10 )
		s += @digit_0[ 1 ]
		return 0, s

	elsif ( 10 < n && n < 20 )
		i = n - 10
		s += @digit1_[ i ]
		return 0, s

	elsif( 20 <= n && n < 100 )
		i = n / 10
		s += @digit_0[ i ]
		return n % 10, s

	elsif( 100 <= n && n < 1000 )
		i = n / 100
		s += @digit0_[ i ]
		s += " hundred"

		if ( n % 100 != 0 )
			s += " and"
		end

		return n % 100, s

	elsif( n == 1000 )
		s += "one thousand"
		return 0, s
	end

	print s
end

def Num2Str( n )
	s = ""

	while ( n != 0 )

		n, s = DigitStr( n, s )
		s += " "
	end

	return s.strip
end


sum = 0
for i in ( 1 .. 1000 )
	sum += Num2Str( i ).delete(" ").length
end
print sum


# print "   1: ",  Num2Str( 1 ), "\n"
# print "   9: ",  Num2Str( 9 ), "\n"
# print "  10: ",  Num2Str( 10 ), "\n"
# print "  11: ",  Num2Str( 11 ), "\n"
# print "  19: ",  Num2Str( 19 ), "\n"
# print "  20: ",  Num2Str( 20 ), "\n"
# print "  29: ",  Num2Str( 29 ), "\n"
# print "  99: ",  Num2Str( 99 ), "\n"
# print " 100: ",  Num2Str( 100 ), "\n"
# print " 423: ",  Num2Str( 423 ), "\n"
# print " 778: ",  Num2Str( 778 ), "\n"
# print " 999: ",  Num2Str( 999 ), "\n"
# print "1000: ",  Num2Str(1000 ), "\n"