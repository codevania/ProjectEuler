def ToBinary( n )
	rb = ""

	while ( true )
		quotient = n / 2
		remainder = n % 2
		n = quotient

		rb += remainder.to_s

		if ( quotient == 0 )
			break
		end
	end

	return rb.reverse
end
#print ToBinary( 585 )

def IsPalindrome( n )
	return n.to_s == n.to_s.reverse
end

def IsLeadingZero( n )
	return n % 10 == 0
end


sum = 0
for i in ( 1 .. 1000000 )
	if ( IsLeadingZero( i ) )
		next
	end

	b = ToBinary( i )

	if ( IsPalindrome( i ) && IsPalindrome( b ) )
		print i, ", ", b, "\n"
		sum += i
	end
end


print "sum : ", sum
