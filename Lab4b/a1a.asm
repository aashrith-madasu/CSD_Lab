//initialize the size of the array
@1
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

(end)
	@end
	0;JMP

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


@11111
D = A

@16
D = M
@17
D = M
@18
D = M
@19
D = M
@20
D = M
@21
D = M


(end)
	@end
	0;JMP

