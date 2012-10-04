
@lcmMul = 1

2.upto(20) do |i|
	@lcmMul = @lcmMul.lcm(i)
	#print "[ ", i, ", ", @lcmMul, " ] /"
end

print @lcmMul
