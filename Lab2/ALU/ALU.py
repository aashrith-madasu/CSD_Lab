import random
from sys import maxsize
import sys

operations = [
    '101010',
    '111111',
    '111010',
    '001100',
    '110000',
    '001101',
    '110001',
    '001111',
    '110011',
    '011111',
    '110111',
    '001110',
    '110010',
    '000010',
    '010011',
    '000111',
    '000000',
    '010101',
    '000001',
    '010100',
]


def gen_test_case():
    a = random.randint(1000, 10000)
    b = random.randint(1000, 10000)
    op = random.randint(0, 19)

    out = 0
    if op == 0:
        out = 0
    elif op == 1:
        out = 1
    elif op == 2:
        out = -1
    elif op == 3:
        out = a
    elif op == 4:
        out = b
    elif op == 5:
        out = ~a
    elif op == 6:
        out = ~b
    elif op == 7:
        out = -a
    elif op == 8:
        out = -b
    elif op == 9:
        out = a+1
    elif op == 10:
        out = b+1
    elif op == 11:
        out = a-1
    elif op == 12:
        out = b-1
    elif op == 13:
        out = a+b
    elif op == 14:
        out = a-b
    elif op == 15:
        out = b-a
    elif op == 16:
        out = a&b
    elif op == 17:
        out = a|b
    elif op == 18:
        out = ~(a&b)
    elif op == 19:
        out = ~(a|b)

    zr = '1' if out == 0 else '0'
    ng = '1' if out < 0 else '0'

    if out < 0:
        out = maxsize + out + 1
    
    bin_a = bin(a)[2:]
    bin_b = bin(b)[2:]
    bin_out = bin(out)[2:]

    if len(bin_a) >= 16:
        bin_a = bin_a[-16:]
    
    if len(bin_b) >= 16:
        bin_b = bin_b[-16:]
    
    if len(bin_out) >= 16:
        bin_out = bin_out[-16:]
    
    bin_a = bin_a.zfill(16)
    bin_b = bin_b.zfill(16)
    bin_out = bin_out.zfill(16)

    zx, nx, zy, ny, f, no = list(operations[op])

    return bin_a, bin_b, zx, nx, zy, ny, f, no, bin_out, zr, ng



def gen_test_bench(n_tests):

    test = "load ALU.hdl,\noutput-file ALU.out,\ncompare-to ALU.cmp,\noutput-list x%B1.16.1 y%B1.16.1 zx%B1.1.1 nx%B1.1.1 zy%B1.1.1 ny%B1.1.1 f%B1.1.1  no%B1.1.1 out%B1.16.1 zr%B1.1.1 ng%B1.1.1;\n\n"
    cmp = "|        x         |        y         |zx |nx |zy |ny | f |no |       out        |zr |ng |\n"


    for _ in range(n_tests):
        a, b, zx, nx, zy, ny, f, no, out, zr, ng = gen_test_case()
        test += f"set x %B{a},\nset y %B{b},\nset zx {zx},\nset nx {nx},\nset zy {zy},\nset ny {ny},\nset f {f},\nset no {no},\neval,\noutput;\n\n"
        cmp += f"| {a} | {b} | {zx} | {nx} | {zy} | {ny} | {f} | {no} | {out} | {zr} | {ng} |\n"
    
    with open("./ALU.tst", "w+") as f:
        f.write(test)

    cmp = cmp[:-1]
    with open("./ALU.cmp", "w+") as f:
        f.write(cmp)


gen_test_bench(int(sys.argv[1]))

    













