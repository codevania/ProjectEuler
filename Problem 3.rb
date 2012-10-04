
Num = 600851475143
Factor = 2
MaxFactor = 1

while ( Num > 1 )

	if ( Num % Factor == 0 )
		MaxFactor = Factor
		Num = Num / Factor

		while ( Num % Factor == 0 )
			Num = Num / Factor
		end
	end

	# print Num.to_s + " " + Factor.to_s + " " + MaxFactor.to_s + "\n"
	
	Factor = Factor + 1
end

print "\n"
print MaxFactor
print "\n"