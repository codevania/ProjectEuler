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


def IsCircularPrime( n )

	if ( !IsPrime( n ) )
		return false
	end

	c = 1  # not 0, because n is prime

	s = n.to_s.split(//)
	for i in ( 1 .. s.length-1 )
		
		val = s.rotate( i ).reduce( :+ ).to_i

		if ( IsPrime( val ) )
			c += 1
		else
			return false
		end
	end

	if ( c == s.length )
		print n, " : true \n"
		return true
	else
		print n, " : false \n"
		return false
	end
end
#print IsCircularPrime( 197 )


count = 0

for i in ( 2 .. 1000000 )
	if ( IsCircularPrime( i ) )
		count += 1
	end
end

print count

