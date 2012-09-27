class FiboHolder
	def initialize()
		@n1 = 0
		@n2 = 1
	end
	def NextTerm
		@Next = @n1 + @n2
		@n1 = @n2
		@n2 = @Next
		return @Next
	end
end

sum = 0

f = FiboHolder.new
num = f.NextTerm()

while ( num < 4000000 )		
	if ( num % 2 == 0 )
		sum += num
	end

	num = f.NextTerm()
end

print sum