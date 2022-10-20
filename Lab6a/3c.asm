
@i
@j
@min_i
@t

@arr
M = 0
A = A + 1
M = 1
A = A + 1
M = 0
A = A + 1
M = 1
A = A + 1
M = 0
A = A + 1
M = 1
A = A + 1
M = 0
A = A + 1
M = 1


@i
M = 0

(FOR1)


// min_i = arr + i
// j = i+1
// for(j<8)
//      if(arr[j] < arr[min_i])
//          min_i = j
//  swap(arr[i], arr[min_i])


@i
D = M
@arr
A = A + D
D = A // arr+i
@min_i
M = D

@i
D = M
@j
M = D + 1

(FOR2)

@j
D = M
@8
D = D - A

@ENDFOR2
D;JGE

@j
D = M
@arr
A = A + D
D = M  // arr[j]

@t
M = D

@min_i
D = M
@arr
A = A + D
D = M  // D = arr[min_i]

@t // M = arr[j]
D = M - D

@IFEND
D;JGE

// inside if

@j
D = M
@arr
A = A + D
D = M  // arr[j]

@min
M = D


(IFEND)

@j
M = M + 1

@FOR2
0;JMP

(ENDFOR2)

@i
D = M
@arr
A = A + D
D = A

@min_i
A = M

D = D + A
A = D - A
D = D - A

M = D

@i
M = M + 1

@FOR1
0;JMP


(ENDFOR1)
