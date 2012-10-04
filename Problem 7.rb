# require 'Prime'
# print (Prime.first 10001)[10000]

#####################################################################
####           Sucking way             ##############################
def IsPrimeSuck( n )
	for i in ( 2.. n-1 )
		if ( n % i == 0 )
			return false
		end
	end

	return true
end

def NthPrimeSuck( nth )

	@count = 1  # 2 is prime. start with 2. so count is 1 not 0.
	@num = 2
	@lastPrime = 0

	while ( @count <= nth )
		if ( IsPrimeSuck( @num ) )
			@count += 1
			@lastPrime = @num
		end

		@num += 1
	end

	return @lastPrime
end

#print NthPrimeSuck( 10001 )

#####################################################################
####           Elegant way             ##############################
#
# - 1 is not a prime
# - All primes except 2 are odd
# - All primes greater than 3 can be written in the form 6k +/- 1
# - Any number n can have only one primefactor greater than sqrt(n)
# - The consequence for primality testing of a number n is: if we cannot find a number f less than
#   or equal sqrt(n) that divides n then n is prime: the only primefactor of n is n itself
#
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

def NthPrime( nth )
	
	@count = 1  # we know that 2 is prime
	@candidate = 1
	
	while ( @count < nth )
		@candidate += 2

		if ( IsPrime( @candidate ) )			
			@count += 1
			#print "( ", @count, ", ", @candidate, " )\n"
		end
	end	

	return @candidate
end

print NthPrime( 10001 )