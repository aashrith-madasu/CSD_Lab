//This program will display black and white strips on the screen

	@4096
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
	@address
	A=M
	M=-1
	@address
	D=M
	@2
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

