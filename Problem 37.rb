# require 'Prime'
# print Prime.first 50
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

# 3797  3797
#  797  379
#   97  37
#    7  3

# a = "abc"
# print a[1, a.length-1]

def isTrunkablePrime( n )	
	# if ( !IsPrime( n ) )
	# 	return false
	# end

	t = n

	while ( 10 <= n ) 

		ls = n.to_s
 		l = ls[1 .. ls.length].to_i

 		n /= 10 		
 		r = n

 		if ( !IsPrime( l ) ) then return false end
 		if ( !IsPrime( r ) ) then return false end

 		# if ( !IsPrime( l ) || !IsPrime( r ) )
 		# 	#print "         N : ", t, "   =>       L : ", l, "(", IsPrime(l), ")   R: ", r, "(", IsPrime(r), ")", "\n"
 		# 	return false
 		# end
 	end

 	return true
end
# print isTrunkablePrime( 3797 ), "\n"
# print isTrunkablePrime( 719713 ), "\n"


require 'Prime'
ta = []
#while ( ta.length != 11 )
Prime.each{ |p|
	if ( p < 10 )
		next
	end

	if ( isTrunkablePrime( p ) )
		print p, "\n"
		ta += [p]
	end

	#if ( p > 1000000 ) then break end

	if ( ta.length == 11 )
		break
	end
}

print ta, "\n"
print ta.reduce(:+)
