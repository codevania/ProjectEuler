
def IsPythagoreanTriplet( a, b, c )
	return c*c == a*a + b*b
end

s = 1000

for a in ( 1 .. (s-3)/3 )

	@RangeB = ( s - (1+a) ) / 2

	for b in ( a+1 .. @RangeB )
		c = s - (a + b)

		if ( IsPythagoreanTriplet( a, b, c ) )
			print a, " * ", b, " * ", c, " = ", a*b*c
			break;
		end
	end
end