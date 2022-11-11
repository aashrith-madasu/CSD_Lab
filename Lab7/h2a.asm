//load 1 into location EVEN
@1
D = A
@EVEN
M = D

//load 0 into location ODD
@0
D = A
@ODD
M = D

//load number into location num
@11
D = A
@num
M = D

//store 1 in D if num is odd
@1
D = A
@num
D = D&M

@even
D;JEQ


//set ODD = 1
(odd)
	@ODD
	M = 1
	@end
	0;JMP


//set EVEN = 0
(even)
	@EVEN
	M = 0

(end)
	@end
	0;JMP

