//load a into memory
@10
D = A
@a
M = D

//load m into memory
@4
D = A
@m
M = D

//load b with m+1
@m
D = M
@1
D = D + A
@b
M = D


(start)
	@a
	D = M
	@m
	D = D - M
	@return
	D;JLT

	@a
	M = D
	@start
	0;JMP

(return)
	@a
	D = M
	@b
	M = D

(end)
	@end
	0;JMP
