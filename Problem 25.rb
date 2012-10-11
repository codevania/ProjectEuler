 @t = [ 0, 1, 1 ]


def fibo( n )
	if ( n == 1 || n == 2 ) 
		return 1
	end

	if ( @t[n] == nil )
		@t[n] = @t[n-1] + @t[n-2]
	end

	return @t[n]
end


i = 1
while ( true )
	f = fibo( i )
	l = f.to_s.length

	if ( 1000 == l )
		print "\n[ ", i, ", ", f, " ]\n"
		break
	end 

	i += 1
end
