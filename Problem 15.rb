
def CreateGrid( n )
	t = Array.new( n+1 )
	
	for i in (0 .. n)
		t[i] = []
		t[i] += Array.new( n+1, 0 )
	end

	return t
end

def GetLeftValue(t, i, j)
	if ( j == 0 )
		return 0
	else
		return t[i][j-1]
	end
end

def GetUpValue(t, i, j)
	if ( i == 0 )
		return 0
	else
		return t[i-1][j]
	end
end

def CalcRoutes( n )
	t = CreateGrid( n )
	t[0][0] = 1

	for i in (0 .. n)
		for j in (0 .. n)
			if ( i == 0 && j == 0 )
				next
			end

			l = GetLeftValue(t, i, j)
			u = GetUpValue(t, i, j)

			t[i][j] = l + u
		end
	end

	print t, "\n"
	print t[n][n]
end


CalcRoutes( 20 )

