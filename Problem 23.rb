def getDivisors( num )

	if ( num == 1 ) then return [1] end

	a1 = []
	a2 = []
	
	i = 1
	bound = num
	while ( i < bound )
		if ( num % i == 0 )
			bound = num / i

			if ( i != bound )
				a1 += [i]
				a2 += [bound]
			else
				a1 += [i]
			end
		end

		i += 1
	end

	return a1 + a2.reverse
end
# print "----- 1  --------\n"
# print getDivisors( 1 ), "\n\n"
# print "----- 3  --------\n"
# print getDivisors( 3 ), "\n\n"
# print "----- 6  --------\n"
# print getDivisors( 6 ), "\n\n"
# print "----- 10 --------\n"
# print getDivisors( 10 ), "\n\n"
# print "----- 15 --------\n"
# print getDivisors( 15 ), "\n\n"
# print "----- 21 --------\n"
# print getDivisors( 21 ), "\n\n"
# print "----- 28 --------\n"
# print getDivisors( 28 ), "\n\n"
# print "----- 36 --------\n"
# print getDivisors( 36 ), "\n\n"

def isAbandantNum( num )
	divs = getDivisors( num )

	sum = divs.reduce(:+)

	return num < sum - num
end
# for i in ( 1 .. 30 )
# 	if ( isAbandantNum( i ) )
# 		print i, " = > ", getDivisors( i ), "\n"
# 	end
# end

def getAbandantNums()
	a = []

	for i in ( 1 .. 28123 )
		if ( isAbandantNum( i ) )
			a += [i]
		end
	end

	return a
end

abandants = getAbandantNums()

a = Array.new( 28123 * 2 )

for i in ( 0 .. abandants.length-1 )
	for j in ( i .. abandants.length-1 )
		val = abandants[i] + abandants[j]

		if ( a[val] == nil )
			a[val] = 1
		else
			a[val] += 1
		end
	end
end

s = 0
for i in ( 0 .. 28123 )
	if ( a[i] == nil )
		s += i
	end
end

print s