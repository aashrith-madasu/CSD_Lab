// mod(a, m) = mod(a-m, m) if a >= m
// mod(a, m) = a if a < m


@a
@m
@b
@tsp

@35
D = A
@a
M = D

@6
D = A
@m
M = D

@b


// stack starts from 100
@100
D = A
@tsp
M = D

// call mod(a, m)
//  - stack a
//  - stack m
//  - jump to mod

@tsp
M = M + 1
@ret1
D = A
@tsp
A = M
M = D

@tsp
M = M +1
@a
D = M
@tsp
A = M
M = D

@tsp
M = M +1
@m
D = M
@tsp
A = M
M = D


@mod
0;JMP

(ret1)

// store the ret val in 'b'

@tsp
A = M
D = M
@b
M = D

@end
0;JMP



// ------------------------------

(mod)

    // local variables - a, m 

    @local_a
    @local_m

    @tsp
    A = M
    D = M
    @local_m
    M = D

    @tsp
    A = M - 1
    D = M
    @local_a
    M = D

    // mod(a, m) = mod(a-m, m) if a >= m
    @local_a
    D = M
    @local_m
    D = D - M

    @else
    D;JLT

        // call mod(a-m ,m)

        @tsp
        M = M + 1
        @ret2
        D = A
        @tsp
        A = M
        M = D

        @tsp
        M = M +1
        @local_a
        D = M
        @local_m
        D = D - M
        @tsp
        A = M
        M = D

        @tsp
        M = M +1
        @local_m
        D = M
        @tsp
        A = M
        M = D

        @mod
        0;JMP

        (ret2)

        @tsp
        A = M
        D = M
        @ret_val
        M = D

        // pop -> ret, a, m
        @3
        D = A
        @tsp
        M = M - D

        @ret_val
        D = M
        @tsp
        A = M

        //swap D, M

        D = D + M
        M = D - M
        D = D - M

        A = D

        0;JMP

    (else)

        // return a

        @local_a
        D = M
        @ret_val
        M = D

        // pop -> a, m
        @2
        D = A
        @tsp
        M = M - D

        @ret_val
        D = M
        @tsp
        A = M

        //swap D, M

        D = D + M
        M = D - M
        D = D - M

        A = D

        0;JMP



(endmod)


// ---------------

(end)
@end
0;JMP