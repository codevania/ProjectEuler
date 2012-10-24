
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

def GenDigitArray()
	a = [[], [], [], [], [], [], [], [], []]

	for i in ( 0 .. 8 )
		for j in ( 0 .. i )
			a[i] += [j+1]
		end

		a[i] = a[i].reverse
	end

	a = a.reverse

	return a
end
#print GenDigitArray()

@a = GenDigitArray()

for i in ( 0 .. @a.length-1 )
	p = @a[i].permutation

	print "-------------   ", p.first, "\n"

	p.each_with_object( [] ){ | i |
		val = i.join.to_i

		if ( IsPrime(val) )
			print val, " : Prime\n"
		end
	}

end
