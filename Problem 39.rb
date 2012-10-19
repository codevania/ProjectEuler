

def perimeterSolutionCount( n )

	count = 0

	for a in ( 1 .. n )

		@RangeB = ( n - (1+a) ) / 2

		for b in ( a+1 .. @RangeB )
			c = Math.sqrt(a**2 + b**2)

			if ( Rational(c).denominator != 1 )
				next
			end
			
			if ( a + b + c.to_i == n )
				print "         ( ", n, " )  ", a, ", ", b, ", ", c.to_i, "\n"
				count += 1
			end
		end
	end

	return count
end


maxcount = 0
maxsolutionIdx = -1

for i in ( 1 .. 1000 )
	count = perimeterSolutionCount( i )

	if ( maxcount < count )
		maxcount = count
		maxsolutionIdx = i
		print "\n                 >> ", i, " -> ", count, "\n"
	end
end

print maxsolutionIdx, "( ", maxcount, " )"
