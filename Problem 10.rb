# require 'Prime'
# print Prime.take_while{ |i| i < 2000000 }.reduce(:+)



def IsPrime( n )
	if ( n == 1 ) 
		return false
	elsif ( n < 4 ) 
		# 2 and 3 are prime
		return true 
	elsif ( n % 2 == 0 )
		return false
	elsif ( n < 9 )
		# we have already exclude 4, 6, 8
		return true
	elsif ( n % 3 == 0 )
		return false
	else
		# sqrt(n) rounded to the greatest integer r so that r*r <= n
		@r = Math.sqrt(n).floor
		@f = 5

		while ( @f <= @r )

			#6k - 1
			if ( n % @f == 0 )
				return false
			end

			# 6k + 1
			if ( n % (@f+2) == 0 )
				return false
			end

			@f += 6
		end

		return true
	end 
end

def GetPrimesUnder( at )
	arr = []

	for i in ( 2 .. at)
		if ( IsPrime( i ) )
			arr += [i]
		end
	end	

	return arr
end

SumOfPrimes = GetPrimesUnder( 2000000 ).reduce(:+)
print SumOfPrimes