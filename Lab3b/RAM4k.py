import random
import sys

def gen_test_case(ram):

    addr = random.randint(0, 2**12-1)
    load = random.choice([0, 1])

    inp, out1, out2 = [None]*3
    out1 = ram[addr]

    if load == 0:
        # read operation
        out2 = ram[addr]
    else:
        # write operation
        inp = random.randint(0, 2**15-1)
        ram[addr] = inp
        out2 = ram[addr]
    
    return addr, load, inp, out1, out2



def gen_test_bench(num_op):

    test = "load RAM4K.hdl,\noutput-file RAM4K.out,\ncompare-to RAM4K.cmp,\noutput-list time%S1.4.1 address%D4.4.1 load%B4.1.1 in%D1.5.1 out%D1.5.1;\n\n"
    cmp = "| time | address | load |  in   |  out  |\n"

    ram = [0]*(2**12)
    clock = 0
    inp = 0

    for _ in range(num_op):
        addr, load, inp1, out1, out2 = gen_test_case(ram)

        test += f"\nset address {addr},\n"
        test += f"set load {load},\n"

        if load == 1:
            inp = inp1
            test += f"set in {inp},\n"
        
        test += f"tick,\noutput;\n\ntock,\noutput;\n"

        cmp += f"| {clock}+{' '*int(clock<10)}{' '*int(clock<100)} |    {' '*int(addr<1000)}{' '*int(addr<100)}{' '*int(addr<10)}{addr} |    {load} | {' '*int(inp<10000)}{' '*int(inp<1000)}{' '*int(inp<100)}{' '*int(inp<10)}{inp} | {' '*int(out1<10000)}{' '*int(out1<1000)}{' '*int(out1<100)}{' '*int(out1<10)}{out1} |\n"
        clock += 1
        cmp += f"| {clock} {' '*int(clock<10)}{' '*int(clock<100)} |    {' '*int(addr<1000)}{' '*int(addr<100)}{' '*int(addr<10)}{addr} |    {load} | {' '*int(inp<10000)}{' '*int(inp<1000)}{' '*int(inp<100)}{' '*int(inp<10)}{inp} | {' '*int(out2<10000)}{' '*int(out2<1000)}{' '*int(out2<100)}{' '*int(out2<10)}{out2} |\n"


    with open("./RAM4K.tst", "w+") as f:
        f.write(test)

    with open("./RAM4K.cmp", "w+") as f:
        f.write(cmp)





gen_test_bench(int(sys.argv[1]))