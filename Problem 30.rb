# print "      9: ", (9**4)*1, "\n"
# print "     99: ", (9**4)*2, "\n"
# print "    999: ", (9**4)*3, "\n"
# print "   9999: ", (9**4)*4, "\n"
# print "  99999: ", (9**4)*5, "\n"
# print " 999999: ", (9**4)*6, "\n"
# print "9999999: ", (9**4)*7, "\n"

def repeatNum( v, n )
	return (1..n).inject( "" ){ |s| s.to_s + v.to_s }
end
#print repeatNum(9, 3)

def nthPowerCheckBound( nth )
	v = 9**nth

	i = 1
	while ( true )
		l = repeatNum( 9, i ).to_i
		r = v*i

		if ( l > r )
			#print "l: ", l, ", r: ", r, "\n"
			return l
		end		

		i += 1
	end
end
#print nthPowerCheckBound( 4 )
#print nthPowerCheckBound( 5 )


def sumOfNthPowers( n, pow )
	sum = 0
	while ( n != 0 )
		val = n % 10
		sum += val**pow
		n = n / 10
	end

	return sum
end
# print sumOfNthPowers( 1634, 4 ), "\n"
# print sumOfNthPowers( 8208, 4 ), "\n"
# print sumOfNthPowers( 9474, 4 ), "\n"


sum = 0

bound = nthPowerCheckBound( 5 )
for i in ( 2..bound )
	if ( i == sumOfNthPowers( i, 5 ) )
		sum += i
	end
end

print sum
