mulOfDenominator = 1
mulOfNumerator = 1

for i in ( 1 .. 9 )
	for j in ( i+1 .. 9 )
		for x in ( 1 .. 9 )
			if ( 9*i*j + x*j - 10*i*x == 0 )	

				d = 10*i + x
				n = 10*x + j

				mulOfDenominator *= d
				mulOfNumerator *= n

				print "10*",i, " + ", x, " / ", "10*",x, " + ", j, "\n"
				print "   = ", 10*i, " + ", x, " / ", 10*x, " + ", j, "\n"
				print "   = ", d, " / ", n, "\n"
				print "   = ",  i, " / ", j, "      => ", mulOfDenominator, ", ", mulOfNumerator, "\n"
			end
		end
	end
end

print mulOfDenominator.to_f, " / ", mulOfNumerator.to_f, " = ", mulOfDenominator.to_f / mulOfNumerator.to_f, "\n"
print Rational( mulOfDenominator, mulOfNumerator ).to_s