//This program will display black and white strips on the screen

	@8192
	D = A
	@0
	M = D
	@0
	D=M
	@INFINITE_LOOP
	D;JLE 
	@counter
	M=D
	@SCREEN
	D=A
	@address
	M=D
(LOOP)
	@21846
	D = A
	@0
	D = A - D
	@address
	A=M
	M=D
	@address
	D=M
	@1
	D=D+A
	@address
	M=D
	@counter
	MD=M-1
	@LOOP
	D;JGT
(INFINITE_LOOP)
	@INFINITE_LOOP
	0;JMP

(end)
	@end
	0;JMP
