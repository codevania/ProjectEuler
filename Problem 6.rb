
def SumOfSquares( toNum )
	@sum = 0
	1.upto( toNum ) do |i|
		@sum += i**2
	end	

	return @sum
end

def SquareOfSum( toNum )
	@sum = 0

	1.upto( toNum ) do |i|
		@sum += i
	end	

	return @sum**2
end

# print SumOfSquares( 10 ), "\n"
# print SquareOfSum( 10 ), "\n"
print SquareOfSum( 100 ) - SumOfSquares( 100 )