//load 10 into memory 0 
@10
D = A
@0
M = D

//load 20 into memory 1
@20
D = A
@1
M = D

//do M[2] = M[0] + M[1]
@0
D = M
@1
D = D + M
@2
M = D

//do M[3] = M[0] - M[1]
@0
D = M
@1
D = D - M
@3
M = D

//do M[4] = M[0] & M[1]
@0
D = M
@1
D = D & M
@4
M = D

//do M[5] = M[0] | M[1]
@0
D = M
@1
D = D | M
@5
M = D

(end)
	@end
	0;JMP

