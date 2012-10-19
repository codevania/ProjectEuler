sum = 0
for i in (1 .. 1000)
	sum += i**i
end

s = sum.to_s
i = s.length - 10
print s[i, 10]
