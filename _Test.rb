num = 600851475143
factor = 2
maxFactor = 1

while ( num > 1 )
factor
	if ( num % factor == 0 )
		maxFactor = factor
		num = num / factor

		while ( num % factor == 0 )
			num = num / factor
		end
	end

	# print num.to_s + " " + factor.to_s + " " + maxFactor.to_s + "\n"
	
	factor = factor + 1
end

print maxFactor