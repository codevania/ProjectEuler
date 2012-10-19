
#	21 22 23 24 25
#	20  7  8  9 10
#	19  6  1  2 11
#	18  5  4  3 12
#	17 16 15 14 13

# (1) + (3 5 7 9) + (13 17 21 25)
#     > 2         > 4         
# 5 spiral => n == 2 : (5-1)/2


#    43 44 45 46 47 48 49
#	 42 21 22 23 24 25 26
#	 41 20  7  8  9 10 27
#	 40 19  6  1  2 11 28
#	 39 18  5  4  3 12 29
#	 38 17 16 15 14 13 30
#    37 36 35 34 33 32 31

# (1) + (3 5 7 9) + (13 17 21 25) + (31 37 43 49)	
#     > 2         > 4             > 6
# 7 sprial => n = 3 : (7-1)/2


# Therefore, 1001 sprial => 500 : (1001-1)/2

cur = 1
sum = 1

500.times do | i |

	4.times do

		cur += (i+1) * 2		
		sum += cur
		#print cur, ", "
	end

	#print "\n"
end

print sum