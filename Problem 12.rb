

def GetNthTriangleNumber( nth )
	return nth * (nth + 1) / 2
end

def IsPerfactSquare( num )
	return 1 == Rational( Math.sqrt( num ) ).denominator
end

def GetDivisorsCount( num )

	if ( num == 1 ) then return 1 end
	
	count = 0

	i = 1
	bound = num
	while ( i < bound )
		if ( num % i == 0 )
			#print "i : ", i, "     bound : ", bound, "  =>  "
			bound = num / i
			count += 1
			#print bound, "\n"			
		end

		i += 1
	end

	count *= 2

	if ( IsPerfactSquare( num ) )
		#print "                         perfect : ", num, "\n"
		count -= 1
	end

	return count
end
# print "----- 1  --------\n"
# print GetDivisorsCount( 1 ), "\n\n"
# print "----- 3  --------\n"
# print GetDivisorsCount( 3 ), "\n\n"
# print "----- 6  --------\n"
# print GetDivisorsCount( 6 ), "\n\n"
# print "----- 10 --------\n"
# print GetDivisorsCount( 10 ), "\n\n"
# print "----- 15 --------\n"
# print GetDivisorsCount( 15 ), "\n\n"
# print "----- 21 --------\n"
# print GetDivisorsCount( 21 ), "\n\n"
# print "----- 28 --------\n"
# print GetDivisorsCount( 28 ), "\n\n"
# print "----- 36 --------\n"
# print GetDivisorsCount( 36 ), "\n\n"


def TriangleNumbersExeedOn( n )
	i = 1
	while ( true )
		@TriNumber = GetNthTriangleNumber( i )
		divCount = GetDivisorsCount( @TriNumber ) 
		if ( n < divCount )
			print i, "th : ", @TriNumber, " has (", divCount, ")\n"
			break
		end

		i += 1
	end
end

# print TriangleNumbersExeedOn( 0 ), "\n"
# print TriangleNumbersExeedOn( 1 ), "\n"
# print TriangleNumbersExeedOn( 3 ), "\n"
# print TriangleNumbersExeedOn( 5 ), "\n"
print TriangleNumbersExeedOn( 500 ), "\n"