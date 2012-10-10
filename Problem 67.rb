t = [[]]
l = 0

file = File.open("triangle.txt")
file.each_line{ |line| 	
	
	t[l] = line.split().collect{ |s| s.to_i }
	l += 1
}

m = Array.new(t)

for i in (1 .. t.length-1)

	prvLine = m[i-1]
	curLine = t[i]

	curAcc = []
	for j in (0 .. curLine.length-1)
		
		from = [0, j-1].max
		to = [j, i-1].min
		prvRange = prvLine[from .. to]
		prvMax = prvRange.max

		curAcc += [ curLine[j] + prvMax ]
	end

	m[ i ] = curAcc
end

print m, "\n"
print m[t.length-1].max, "\n"

maxAcc = 0

for i in (0 .. m.length-1)
	maxAcc = [ maxAcc, m[i].max ].max
end

print maxAcc

