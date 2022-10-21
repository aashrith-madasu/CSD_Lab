@20
D = A
@index
M = D


(start)
	@24576
	D = M
	@start
	D;JEQ

	@index
	M = D
	@start
	0;JMP

(end)
	@end
	0;JMP

