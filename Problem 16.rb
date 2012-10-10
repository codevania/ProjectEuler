
# value = (2**1000).to_s
# arrValues = []
# value.each_char{ |c| arrValues += [c.to_i] }
# print arrValues.reduce(:+)



class BigInt
	def initialize( v = 0 )
		@nums = []
		v.to_s.each_char{ |c| @nums += [c.to_i] }
	end

	def toString()
		return @nums.join()
	end

	def add( v )

		a = @nums
		b = []
		v.to_s.each_char{ |c| b += [c.to_i] }

		aLen = a.length
		bLen = b.length

		i = aLen - 1
		j = bLen - 1
		k = [i, j].max

		c = Array.new(k)

		carry = 0
		while 0 <= i && 0 <= j
			
			s = a[i] + b[j] + carry
			carry = s / 10
			c[k] = s % 10

			i -= 1
			j -= 1
			k -= 1
		end

		while 0 <= i

			s = a[i] + carry
			carry = s / 10
			c[k] = s % 10

			i -= 1
			k -= 1
		end

		while 0 <= j

			s = b[j] + carry
			carry = s / 10
			c[k] = s % 10

			j -= 1
			k -= 1
		end

		if ( carry != 0 )			
			c = [carry] + c
		end

		@nums = c
	end

	def mul( v )
		myVal = toString().to_i

		(v-1).times do
			add( myVal )
		end
	end
end

bigNum = BigInt.new(2)

999.times do
 	bigNum.mul(2)	
end

arrValues = []
value = bigNum.toString
value.each_char{ |c| arrValues += [c.to_i] }
print arrValues.reduce(:+)