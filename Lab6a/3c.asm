
@i
@j
@min_i
@t
@t1
@t2

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

@i
D = M
@8
D = D - A

@ENDFOR1
D;JGE


// min_i = i
// j = i+1
// for(j<8)
//      if(arr[j] < arr[min_i])
//          min_i = j
//      j = j + 1
//  swap(arr[i], arr[min_i])


@i
D = M
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

@min_i
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
D = M

@t1
M = D

@min_i
D = M
@arr
A = A + D
D = M

@t2
M = D

// t1 -> arr[i]
// t2 -> arr[min_i]


// arr[i] = t2
@i
D = M
@arr
D = A + D

@t2
A = M

D = D + A
A = D - A
D = D - A

M = D

// arr[min_i] = t1

@min_i
D = M
@arr
D = A + D

@t1
A = M

D = D + A
A = D - A
D = D - A

M = D


// ------
@i
M = M + 1

@FOR1
0;JMP


(ENDFOR1)



(END)
@END
0;JMP