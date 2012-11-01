def nthPentagonal( nth )
	return nth * ( 3*nth - 1 ) / 2
end

def isPentagonal( n )
	p = ( Math.sqrt( 24*n + 1 ) + 1 ) / 6
	return p == p.to_i
end

# for i in ( 1 .. 10 )
# 	print nthPentagonal( i ), ", "
# end
# print "\n"
# p = [ 1, 5, 12, 22, 35, 51, 70, 92, 117, 145 ]
# for i in p
# 	print isPentagonal(i), ", "
# end


pentagonals = [0]
i = 1

done = false
while ( !done )
#while ( i < 100 )
	pentagonals += [ nthPentagonal(i) ]
	#print pentagonals, "\n"

	for j in ( 1 .. pentagonals.length-1 )
		if ( isPentagonal( pentagonals[i]-pentagonals[j] ) and isPentagonal( pentagonals[i]+pentagonals[j] ) )
			print pentagonals[i]-pentagonals[j]
			
			done = true
			break
		end
	end

	i += 1
end