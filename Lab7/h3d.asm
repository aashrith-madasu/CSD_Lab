//initialize the size of the array
@3
D = A
@size
M = D

@index
M = 0

@temp
M = 0

@20
M = 0
@30 
M = 0
@40
M = 0

//initialize arr and brr
(LOOP)
	@index
	D = M
	@20
	A = D+A
	M = D

	@25
	A = D+A
	M = D

	@index
	M = M+1

	@size
	D = M
	@index
	D = D - M
	@LOOP
	D;JGT

@index
M = 0

(Addition)
	@index
	D = M
	@20
	A = D+A
	D = M
	@temp
	M = D

	@index
	D = M
	@25
	A = D+A
	D = M
	@temp
	M = M + D

	
	@index
	D = M
	@30
	D = D + A
	@temp
	A = M

	A = A + D
	D = A - D
	A = A - D

	M = D

	@index
	M = M+1

	@size
	D = M
	@index
	D = D - M
	@Addition
	D;JGT

(end)
	@end
	0;JMP

