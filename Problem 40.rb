@s = "."
@v = 1

def GenNthDigit( n )

	if ( n < 1 ) then return 0 end

	if ( n < @s.length )
		return @s[ n ].to_i
	end

	while ( @v <= n )
		@s += @v.to_s
		@v += 1
	end
end

GenNthDigit( 100 )
print (0..6).reduce(1){ |p, e| p*@s[10**e-1].to_i }
#print GetNthDigit(1) * GetNthDigit(10) * GetNthDigit(100) * GetNthDigit(1000) * GetNthDigit(10000) * GetNthDigit(100000) * GetNthDigit(1000000) 