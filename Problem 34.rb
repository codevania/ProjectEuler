@f = []
@f[0] = 1
@f[1] = 1

def GenerateFactorial()
		
	for i in ( 2 .. 9 )
		@f[i] = i * @f[i-1]
	end
end
#print @f

def sumOfFactorial( n )
	sum = 0
	while ( n != 0 )		
		val = n % 10
		#print n, ", ", val, ", ", @f[ val ], "\n"
		sum += @f[ val ]
		n = n / 10
	end

	return sum
end

GenerateFactorial()
# print sumOfFactorial( 145 ), "\n"
# print sumOfFactorial( 10 ), "\n"
# print sumOfFactorial( 99999 ), "\n"

# print "       9: ", @f[9] * 1, "\n"
# print "      99: ", @f[9] * 2, "\n"
# print "     999: ", @f[9] * 3, "\n"
# print "    9999: ", @f[9] * 4, "\n"
# print "   99999: ", @f[9] * 5, "\n"
# print "  999999: ", @f[9] * 6, "\n"
# print " 9999999: ", @f[9] * 7, "\n"
# print "99999999: ", @f[9] * 8, "\n"

def repeatNum( v, n )
	return (1..n).inject( "" ){ |s| s.to_s + v.to_s }
end

def sumofFactorialCheckBound()
	v = @f[9]

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
#print sumofFactorialCheckBound()

sum = 0
bound = sumofFactorialCheckBound()
for i in ( 3..bound )
	if ( i == sumOfFactorial( i ) )
		print i, ","
		sum += i
	end
end
print " => ", sum