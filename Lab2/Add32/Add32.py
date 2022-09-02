import random
import sys


def gen_test_case():
    a = random.randint(1000, 10000)
    b = random.randint(1000, 10000)

    out = a+b

    bin_a = bin(a)[2:]
    bin_b = bin(b)[2:]
    bin_out = bin(out)[2:]

    if len(bin_a) >= 32:
        bin_a = bin_a[-32:]
    
    if len(bin_b) >= 32:
        bin_b = bin_b[-32:]
    
    if len(bin_out) >= 32:
        bin_out = bin_out[-32:]
    
    bin_a = bin_a.zfill(32)
    bin_b = bin_b.zfill(32)
    bin_out = bin_out.zfill(32)

    return bin_a[:16], bin_a[16:], bin_b[:16], bin_b[16:], bin_out[:16], bin_out[16:]



def gen_test_bench(n_tests):

    test = "load Add32.hdl,\noutput-file Add32.out,\ncompare-to Add32.cmp,\noutput-list a1%B1.16.1 a2%B1.16.1 b1%B1.16.1 b2%B1.16.1 out1%B1.16.1 out2%B1.16.1;\n\n"
    cmp = "|        a1        |        a2        |        b1        |        b2        |       out1       |       out2       |\n"


    for _ in range(n_tests):
        a1, a2, b1, b2, out1, out2 = gen_test_case()
        test += f"set a1 %B{a1},\nset a2 %B{a2},\nset b1 %B{b1},\nset b2 %B{b2},\neval,\noutput;\n\n"
        cmp += f"| {a1} | {a2} | {b1} | {b2} | {out1} | {out2} |\n"
    
    with open("./Add32.tst", "w+") as f:
        f.write(test)

    cmp = cmp[:-1]
    with open("./Add32.cmp", "w+") as f:
        f.write(cmp)



gen_test_bench(int(sys.argv[1]))

    







