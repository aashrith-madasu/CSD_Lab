//load x
@5
D = A
@x
M = D

//load a with 0
@0
D = A
@a
M = D

//load b with 1
@1
D = A
@b
M = D

//load current with 0
@current
M = 0

(LOOP)
	@current
	D = M
	@x
	D = D -M
	@end
	D;JEQ

	@a
	D = M
	@b
	MD = M + D
	@a
	M = D-M

	@current
	M = M+1
	@LOOP
	0;JMP

(end)
	@b
	D = M
	@end
	0;JMP

(end)
	@end
	0;JMP

