# triangle  = 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, 66, 78, 91, 105, 120, 136, 153, 171, 190, 210, 
# hexagonal = 1, 6, 15, 28, 45, 66, 91, 120, 153, 190, 231, 276, 325, 378, 435, 496, 561, 630, 703, 780, 
#   => hexagonal numbers are subset of triangle numbers

def nthTriangleNumber( nth )
	return nth * (nth + 1) / 2
end

def isTriangleNumber( n )
	t = ( Math.sqrt( 8*n + 1 ) - 1 ) / 2
	return t == t.to_i
end
# for i in ( 1 .. 20 )
# 	print nthTriangleNumber( i ), ", "
# end
# print "\n"
# t = [ 1, 3, 6, 10, 15, 21, 28, 36, 45, 55 ]
# for i in t
# 	print isTriangleNumber(i), ", "
# end

def nthPentagonalNumber( nth )
	return nth * ( 3*nth - 1 ) / 2
end

def isPentagonalNumber( n )
	p = ( Math.sqrt( 24*n + 1 ) + 1 ) / 6
	return p == p.to_i
end
# for i in ( 1 .. 20 )
# 	print nthPentagonalNumber( i ), ", "
# end
# print "\n"
# p = [ 1, 5, 12, 22, 35, 51, 70, 92, 117, 145 ]
# for i in p
# 	print isPentagonalNumber(i), ", "
# end

def nthHexagonalNumber( nth )
	return nth * ( 2*nth - 1 )
end

def isHexagonalNumber( n )
	h = ( Math.sqrt( 8*n + 1 ) + 1 ) / 4
	return h == h.to_i
end
# for i in ( 1 .. 20 )
# 	print nthHexagonalNumber( i ), ", "
# end
# print "\n"
# p = [ 1, 6, 15, 28, 45, 66, 91, 120, 153, 190 ]
# for i in p
# 	print isHexagonalNumber(i), ", "
# end


i = 144
while true
	h = nthHexagonalNumber( i )
	if ( isPentagonalNumber( h ) )
		print h
		break
	end

	i += 1
end
