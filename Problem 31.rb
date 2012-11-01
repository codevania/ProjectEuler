target = 200
coinSizes = [ 1, 2, 5, 10, 20, 50, 100, 200 ]
ways = Array.new(target+1, 0)
ways[0] = 1

for i in ( 0 .. coinSizes.length-1 )
	
    j = coinSizes[i]
    while j <= target    	
    	    	
    	ways[j] += ways[ j - coinSizes[i]] ;
    	
    	j += 1
    end
end

print ways.last
