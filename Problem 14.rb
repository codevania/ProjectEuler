
def NextSequence( n )

	if ( n % 2 == 0 )
		return n / 2
	else
		return 3*n + 1
	end
end

@SeqChainCount = Hash.new
@SeqChainCount[1] = 1


def RecursiveChainSequence( n )
	# special case
	if ( n == 1 ) 
		return 1 
	end

	# dynamic programming
	if ( @SeqChainCount[n] != nil)
		return @SeqChainCount[n]
	end

	# general case
	nxtSeq = NextSequence( n )
	@SeqChainCount[n] = 1 + RecursiveChainSequence( nxtSeq )
	return @SeqChainCount[n]
end

# print "[ ", RecursiveChainSequence( 1 ), "]", @SeqChainCount, "\n"
# print "[ ", RecursiveChainSequence( 2 ), "]", @SeqChainCount, "\n"
# print "[ ", RecursiveChainSequence( 3 ), "]", @SeqChainCount, "\n"
#print "[ ", RecursiveChainSequence( 13 ), "]", @SeqChainCount, "\n"
# print "[ ", RecursiveChainSequence( 100 ), "]", @SeqChainCount, "\n"


@MaxChain = 0
for i in (1 .. 1000000)
	@Chain = RecursiveChainSequence(i)
	if ( @MaxChain < @Chain )
		@MaxChain = @Chain
	end
end

print "Starting Number[", @SeqChainCount.key(@MaxChain), "] produces longest chain :", @MaxChain, "\n"
