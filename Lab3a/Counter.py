from calendar import c
import random
import sys


def gen_test_bench(s1, n1, s2, n2):

    test = "load Counter.hdl,\noutput-file Counter.out,\ncompare-to Counter.cmp,\noutput-list time%S1.4.1 up%B2.1.2 load%B2.1.2 in%D2.3.2 out%D1.3.1;\n\n"
    cmp = "| time | up  |load |  in   | out |\n"


    test += f"\nset load 1;\nset in {s1};\n"
    test += "\ntick,\noutput;\n\ntock,\noutput;\n"

    prev = 0
    clock = 0
    
    cmp += f"| {clock}+   |  0  |  1  |  {' '*int(s1 < 100)}{' '*int(s1<10)}{s1}  | {' '*int(prev < 100)}{' '*int(prev<10)}{prev} |\n"
    clock += 1
    prev = s1%256
    cmp += f"| {clock}    |  0  |  1  |  {' '*int(s1 < 100)}{' '*int(s1<10)}{s1}  | {' '*int(prev < 100)}{' '*int(prev<10)}{prev} |\n"

    test += "\nset up 1;\nset load 0;\n"


    for _ in range(n1):
        test += "\ntick,\noutput;\n\ntock,\noutput;\n"
        cmp += f"| {clock}+{' '*(int(clock < 10))}{' '*(int(clock < 100))} |  1  |  0  |  {' '*int(s1 < 100)}{' '*int(s1<10)}{s1}  | {' '*(int(prev < 100))}{' '*(int(prev < 10))}{prev} |\n"
        clock += 1
        prev = (prev+1)%256
        cmp += f"| {clock} {' '*(int(clock < 10))}{' '*(int(clock < 100))} |  1  |  0  |  {' '*int(s1 < 100)}{' '*int(s1<10)}{s1}  | {' '*(int(prev < 100))}{' '*(int(prev < 10))}{prev} |\n"
        #cmp += f"| {clock}{' '*(int(clock < 10))}{' '*(int(clock < 100))}  |  1  |  0  | {' '*(int((prev+1)%256 < 100))}{' '*(int((prev+1)%256 < 10))}{(prev+1)%256} |\n"


    test += f"\nset load 1;\nset in {s2};\n"
    test += "\ntick,\noutput;\n\ntock,\noutput;\n"

    cmp += f"| {clock}+{' '*(int(clock < 10))}{' '*(int(clock < 100))} |  1  |  1  |  {' '*int(s2 < 100)}{' '*int(s2<10)}{s2}  | {' '*(int(prev < 100))}{' '*(int(prev < 10))}{prev} |\n"
    clock += 1
    prev = s2%256
    cmp += f"| {clock} {' '*(int(clock < 10))}{' '*(int(clock < 100))} |  1  |  1  |  {' '*int(s2 < 100)}{' '*int(s2<10)}{s2}  | {' '*(int(prev < 100))}{' '*(int(prev < 10))}{prev} |\n"

    test += "\nset up 0;\nset load 0;\n"

    for _ in range(n2):
        test += "\ntick,\noutput;\n\ntock,\noutput;\n"
        cmp += f"| {clock}+{' '*(int(clock < 10))}{' '*(int(clock < 100))} |  0  |  0  |  {' '*int(s2 < 100)}{' '*int(s2<10)}{s2}  | {' '*(int(prev < 100))}{' '*(int(prev < 10))}{prev} |\n"
        clock += 1
        prev = (prev-1)%256
        cmp += f"| {clock} {' '*(int(clock < 10))}{' '*(int(clock < 100))} |  0  |  0  |  {' '*int(s2 < 100)}{' '*int(s2<10)}{s2}  | {' '*(int(prev < 100))}{' '*(int(prev < 10))}{prev} |\n"

    
    with open("./Counter.tst", "w+") as f:
        f.write(test)

    with open("./Counter.cmp", "w+") as f:
        f.write(cmp)




gen_test_bench(int(sys.argv[1]), int(sys.argv[2]), int(sys.argv[3]), int(sys.argv[4]))

    