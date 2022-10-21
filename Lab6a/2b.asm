//load a
@20
D = A
@a
M = D

//load b
@20
D = A
@b
M = D

//set result to -1 initially
@3
D = A
@result
M = D

//calculate a-b and store in D
@a
D = M
@b
D = D - M

@equal
D;JEQ

@more
D;JGT

@less
D;JLT


(equal)
	@0
	D = A
	@result
	M = D
	@end
	0;JMP

(more)
	@1
	D = A
	@result
	M = D
	@end
	0;JMP

(less)
	@2
	D = A
	@result
	M = D
	@end
	0;JMP

(end)
	@end
	0;JMP

