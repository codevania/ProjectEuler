# def isPandigital( n )	
# 	s = n.to_s
# 	len = s.length

# 	for i in ( 0 .. len-1 )
# 		if ( s.index( (i+1).to_s ) == nil )
# 			return false
# 		end
# 	end

# 	return true
# end

def isConcatenatedProduct( n )

	ns = n.to_s

	for i in ( 0 .. 4 )
		base = ns[ 0 .. i ].to_i
		remainStr = ns[ i+1 .. ns.length-1 ]
		curStr = remainStr
		#print base, ", ", remainStr, "\n"

		multi = 2

		j = 0
		while ( j <= curStr.length )
			
			curVal = base * multi
			s = remainStr[ 0, curVal.to_s.length ]
			#print "           ", s, " : ", curVal, "\n"

			if ( curVal != s.to_i )
				break
			end

			if ( curVal == s.to_i )
				remainStr = remainStr[ curVal.to_s.length .. remainStr.length-1 ]
				multi += 1
				j += s.length
				#print "  ---------", remainStr, " / ", j, " \n"				
			end
		end

		if ( j == curStr.length )
			return true
		end
	end

	return false
end
#print "== 192384576 ==\n"
#print isConcatenatedProduct( 192384576 ), "\n"
# print "== 918273645 ==\n"
# print isConcatenatedProduct( 918273645 ), "\n"

a = [ 9, 8, 7, 6, 5, 4, 3 ,2, 1 ]
p = a.permutation

p.each_with_object( [] ){ | i |
	val = i.join.to_i

	if ( isConcatenatedProduct( val ) )
		print val
		break
	end
}
