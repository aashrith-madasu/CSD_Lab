//currently stack points to 100
@100
D = A
@stack
M = D

@temp
M = 0

//initialize x
@8
D = A
@x
M = D

//jump to main
@MAIN
0;JMP


(FIBO)
	//stack - 2 will have the parameter, get it	and put it in D
	@stack
	D = M
	@2
	D = D - A
	A = D
	D = M

	//x is equal to 0
	@VAL0
	D;JEQ

	//x is equal to 1
	D = D - 1
	@VAL1
	D;JEQ

	(RECURSIVE)
		//get the param
		@stack
		D = M
		@2
		D = D - A
		A = D
		D = M

		//subtract it by one
		D = D-1

		//place the value in stack
		@stack
		A = M
		A = A + 1
		M = D

		//place the return address
		@stack
		D = M
		D = D+1
		D = D+1

		@call1

		A = A + D
		D = A - D
		A = A - D

		M = D

		//increment stack
		@stack
		M = M +1
		M = M +1
		M = M +1

		//call to fibo
		@FIBO
		0;JMP

		(call1)
			//get the returned value
			@stack
			A = M
			D = M

			@stack
			M = M -1
			M = M-1
			M = M-1

			//place it in temp
			@stack
			A = M
			A = A-1
			A = A-1
			A = A-1
			M = D

		//get the param
		@stack
		D = M
		@2
		D = D - A
		A = D
		D = M

		//subtract it by 2
		D = D-1
		D = D-1

		//place the value in stack
		@stack
		A = M
		A = A + 1
		M = D

		//place the return address
		@stack
		D = M
		D = D+1
		D = D+1

		@call2

		A = A + D
		D = A - D
		A = A - D

		M = D

		//increment stack
		@stack
		M = M +1
		M = M +1
		M = M +1

		//call to fibo
		@FIBO
		0;JMP

		(call2)
			//get the returned value
			@stack
			A = M
			D = M

			@stack
			M = M-1
			M = M-1
			M = M-1

			//place it in temp
			@stack
			A = M
			A = A-1
			A = A-1
			A = A-1
			D = M + D

			
		//store the temp value in the stack
		@stack
		A = M
		M = D
		
		//return address is in stack-1
		@stack
		D = M
		D = D - 1
			
		//return
		A = D 
		A = M
		0;JMP

	(VAL0)
		//store 1 in stack
		@stack
		A = M
		M = 1

		//return address is in stack-1
		@stack
		D = M
		D = D - 1

		//return
		A = D
		A = M
		0;JMP

	(VAL1)
		//same as for VAL0
		//store 1 in stack-2
		@stack
		A = M
		M = 1

		//return address is in stack-1
		@stack
		D = M
		D = D - 1

		//return
		A = D
		A = M
		0;JMP

	(RECURSIVE)

(MAIN)
	//push x onto stack
	@x
	D = M
	@stack
	A = M
	M = D

	//increment stack
	@stack
	M = M + 1

	//push MAIN RETURN address to stack
	@MAINRETURN
	D = A
	@stack
	A = M
	M = D

	//increment stack
	@stack
	M = M + 1

	//call the FIBO
	@FIBO
	0;JMP
	
	(MAINRETURN)
		//return value will be stored in memory pointed by stack
		@stack
		A = M
		D = M
		@END
		0;JMP
		
(END)
	@END
	0;JMP
