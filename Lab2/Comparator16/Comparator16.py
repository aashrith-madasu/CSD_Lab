import random
from sys import maxsize
import sys


def gen_test_case():
    a = random.choice([0]*10 + list(range(-30, 0)) + list(range(20)))

    zero = int(a == 0)
    neg = int(a < 0)

    if a < 0:
        a = maxsize + a + 1

    bin_a = bin(a)[2:]
    bin_zero = bin(zero)[2:]
    bin_neg = bin(neg)[2:]

    if len(bin_a) >= 16:
        bin_a = bin_a[-16:]
    
    bin_a = bin_a.zfill(16)
    bin_zero = bin_zero.zfill(16)
    bin_neg = bin_neg.zfill(16)

    return bin_a, bin_zero, bin_neg



def gen_test_bench(n_tests):

    test = "load Comparator16.hdl,\noutput-file Comparator16.out,\ncompare-to Comparator16.cmp,\noutput-list in%B1.16.1 negative%B1.16.1 zero%B1.16.1;\n\n"
    cmp = "|        in        |     negative     |       zero       |\n"


    for _ in range(n_tests):
        a, zero, neg = gen_test_case()
        test += f"set in %B{a},\neval,\noutput;\n\n"
        cmp += f"| {a} | {neg} | {zero} |\n"
    
    with open("./Comparator16.tst", "w+") as f:
        f.write(test)

    with open("./Comparator16.cmp", "w+") as f:
        f.write(cmp)


gen_test_bench(int(sys.argv[1]))

    







