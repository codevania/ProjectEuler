def isLeapYear( y )
	if ( y % 100 == 0 )
		if ( y % 400 == 0 )
			return true
		end
	else
		if ( y % 4 == 0 )
			return true
		end
	end

	return false
end

def getDaysInMonth( y, m )
	if ( m == 2 )
		if ( isLeapYear( y ) )
			return 29
		else
			return 28
		end
	else
		oddDays = [ 1, 3, 5, 7, 8, 10, 12 ]
		if ( oddDays.index( m ) != nil )
			return 31
		else
			return 30
		end
	end
end
# for i in ( 1 .. 12 )
# 	print i, " : ", getDaysInMonth( 1900, i ), "\n"
# end

count = 0
i = 0

for y in ( 1900 .. 2000 )
	for m in ( 1 .. 12 )
		daysInMonth = getDaysInMonth( y, m )
		
		for d in ( 1 .. daysInMonth )
			i += 1
			if ( i % 7 == 0 )
				if ( d == 1 && y >= 1901 )
					count += 1
				end
				i = 0
			end
		end
	end
end

print count