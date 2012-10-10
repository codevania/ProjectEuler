
def GetDivisorsSum( num )
		
	sum = 0
	for i in (1 .. num-1)
		if ( num % i == 0 )
			sum += i
		end
	end

	return sum
end


# print GetDivisorsSum(220), "\n"
# print GetDivisorsSum(284), "\n"

c = []

for i in (2..10000)
	divSum = GetDivisorsSum(i)
	if ( divSum == i )
		next
	end

	if ( i == GetDivisorsSum(divSum) )  # Is Amicable Pair?
		c += [i]
	end
end

print c.reduce(:+)