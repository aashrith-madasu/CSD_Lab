import random
from sys import maxsize
import sys


def gen_test_case():
    a = random.randint(1000, 10000)
    b = random.randint(1000, 10000)
    s = random.choice([0, 1])

    out = None

    if s == 0:
        out = a+b
    else:
        out = a-b
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

    return bin_a, bin_b, s, bin_out



def gen_test_bench(n_tests):

    test = "load AddSub16.hdl,\noutput-file AddSub16.out,\ncompare-to AddSub16.cmp,\noutput-list a%B1.16.1 b%B1.16.1 s%B1.1.1 out%B1.16.1;\n\n"
    cmp = "|        a         |        b         | s |       out        |\n"


    for _ in range(n_tests):
        a, b, s, out = gen_test_case()
        test += f"set a %B{a},\nset b %B{b},\nset s {s},\neval,\noutput;\n\n"
        cmp += f"| {a} | {b} | {s} | {out} |\n"
    
    with open("./AddSub16.tst", "w+") as f:
        f.write(test)

    cmp = cmp[:-1]
    with open("./AddSub16.cmp", "w+") as f:
        f.write(cmp)


gen_test_bench(int(sys.argv[1]))

    