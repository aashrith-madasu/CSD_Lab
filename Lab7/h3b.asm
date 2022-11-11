//initialize the size of the array
@10
D = A
@size
M = D

@even
M = 0
@odd
M = 0

//initialize the array
@0
D = A		//initially the index is
@index
M = D

@array
M = 0

(LOOP)
	@index
	D = M
	@array
	A = D+A
	M = D
	@index
	M = M +1
	
	@size
	D = M
	@index
	D = D - M
	@LOOP
	D;JGT

@index
M = 0

(COUNT)
	@index
	D = M
	@array
	A = D+A
	D = M
	@1
	D = D&A
	@EVEN
	D;JEQ
	@odd
	M = M + 1
	@CONTINUE
	0;JMP

	(EVEN)
	@even
	M = M + 1

	(CONTINUE)
	@index
	M = M +1
	
	@size
	D = M
	@index
	D = D - M
	@COUNT
	D;JGT

(end)
	@end
	0;JMP

