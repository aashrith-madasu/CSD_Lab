import random
import sys


def gen_test_bench(num):

    test = "load Counter.hdl,\noutput-file Counter.out,\ncompare-to Counter.cmp,\noutput-list time%S1.4.1 up%B2.1.2 out%D1.3.1;\n\n"
    cmp = "| time | up  | out |\n"

    test += "set up 1;\n"

    prev = 0
    clock = 0

    for _ in range(num):
        test += "\ntick,\noutput;\n\ntock,\noutput;\n"
        cmp += f"| {clock}+{' '*(int(clock < 10))}{' '*(int(clock < 100))} |  1  | {' '*(int(prev%256 < 100))}{' '*(int(prev%256 < 10))}{prev%256} |\n"
        cmp += f"| {clock+1}{' '*(int(clock+1 < 10))}{' '*(int(clock+1 < 100))}  |  1  | {' '*(int((prev+1)%256 < 100))}{' '*(int((prev+1)%256 < 10))}{(prev+1)%256} |\n"
        clock += 1
        prev = (prev+1)%256

    test += "set up 0;\n"

    for _ in range(num):
        test += "\ntick,\noutput;\n\ntock,\noutput;\n"
        cmp += f"| {clock}+{' '*(int(clock < 10))}{' '*(int(clock < 100))} |  0  | {' '*(int(prev%256 < 100))}{' '*(int(prev%256 < 10))}{prev%256} |\n"
        cmp += f"| {clock+1}{' '*(int(clock+1 < 10))}{' '*(int(clock+1 < 100))}  |  0  | {' '*(int((prev-1)%256 < 100))}{' '*(int((prev-1)%256 < 10))}{(prev-1)%256} |\n"
        clock += 1
        prev = (prev-1)%256

    
    with open("./Counter.tst", "w+") as f:
        f.write(test)

    with open("./Counter.cmp", "w+") as f:
        f.write(cmp)




gen_test_bench(int(sys.argv[1]))

    