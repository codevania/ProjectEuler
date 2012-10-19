
h = Hash.new()

for i in ( 2 .. 100 )
	for j in ( 2 .. 100 )
		v = i**j
		h[v] = v
	end
end

print h.length