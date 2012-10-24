
@u = []

def UniqueInsert( n )
	if ( @u.index( n ) == nil )
		@u += [n]
	end
end

def ShowPandigitalProduct( s )
	if ( s.length < 3 ) then return end

	for i in ( 1 .. s.length-2 )
		for j in ( i+1 .. s.length-1 )
			l = s[ 0 .. i-1 ].to_i
			r = s[ i .. j-1 ].to_i
			p = s[ j .. s.length-1 ].to_i

			#print l, " * ", r, " = ", p, "  => ", l*r == p, "         ", i, ", ", j, "\n"

			if ( l*r == p )
				print l, " * ", r, " = ", p, "   ", i, ", ", j, "\n"
				UniqueInsert( p )
			end
		end	
	end
end
#ShowPandigitalProduct("391867254")

a = [ 1, 2, 3, 4, 5, 6, 7, 8, 9 ]
#a = [ 1, 2, 3, 4, 5 ]
p = a.permutation

p.each_with_object( [] ){ | i |
	val = i.join.to_i

	ShowPandigitalProduct( val.to_s )
}


print "Sum of product : ", @u.reduce(:+)
