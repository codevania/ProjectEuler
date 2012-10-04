def IsPalindrome( num )
	return num.to_s == num.to_s.reverse
end

def NDigitMaxNum( digit )
	@s = ""
	
	digit.times do 
		@s += "9"
	end

	return @s.to_i	
end

def NDigitLargestPalindrome( digit )

	@LargestPalindrome = 0
	@a = NDigitMaxNum( digit )

	while ( 100 <= @a )
		@b = NDigitMaxNum( digit )

		while ( @a <= @b )

			# Special case
			if ( @a * @b <= @LargestPalindrome )
				break
			end

			if ( IsPalindrome( @a * @b ) )
				@LargestPalindrome = @a * @b
			end

			@b -= 1	
		end

		@a -= 1
	end

	return @LargestPalindrome
end


print NDigitLargestPalindrome(3)
