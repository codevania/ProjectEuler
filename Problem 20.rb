
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


def fact( n )
	
	res = BigInt.new(1)

	for i in ( 1 .. n )
		res.mul( i )
	end

	return res
end


bigFactorial = fact(100)
k = []
bigFactorial.toString.each_char{ |c| k += [c.to_i] }
print bigFactorial.toString, "\n"
print k.reduce(:+)
