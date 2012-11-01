
def get3DigitFrom( arr, idx )
	return arr[ idx, 3 ].join.to_i
end

sum = 0

a = [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 ]
p = a.permutation

p.each_with_object( [] ){ | i |

	d2 = get3DigitFrom( i, 1 )
	if ( d2 % 2 != 0 ) then next end

	d3 = get3DigitFrom( i, 2 )
	if ( d3 % 3 != 0 ) then next end

	d5 = get3DigitFrom( i, 3 )
	if ( d5 % 5 != 0 ) then next end

	d7 = get3DigitFrom( i, 4 )
	if ( d7 % 7 != 0 ) then next end

	d11 = get3DigitFrom( i, 5 )
	if ( d11 % 11 != 0 ) then next end

	d13 = get3DigitFrom( i, 6 )
	if ( d13 % 13 != 0 ) then next end

	d17 = get3DigitFrom( i, 7 )	
	if ( d17 % 17 != 0 ) then next end

	sum += i.join.to_i
}

print sum
