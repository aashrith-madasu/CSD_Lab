

@i
M = 0
@count
M = 0
@arr

(LOOP)

@i
D = M
@5
D = D - A
@STOP
D;JGE


@i
D = M
@arr
A = A + D

M = D


@i
M = M + 1

@LOOP
0;JMP

(STOP)

@i
D = M
@arr
A = A + D

M = -1

// -- count --

@i
M = 0

(LOOP2)

@i
D = M

@arr
A = A + D
D = M

@STOP2
D;JLT   


@count
M = M + 1

@i
M = M + 1

@LOOP2
0;JMP


(STOP2)



