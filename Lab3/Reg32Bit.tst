load Reg32Bit.hdl,
output-file Reg32Bit.out,
compare-to Reg32Bit.cmp,
output-list time%S1.4.1 in1%D1.6.1 in2%D1.6.1 shift%B2.1.2 load%B2.1.2 out1%D1.6.1 out2%D1.6.1;

set in1 0,
set in2 0,
set load 0,
set shift 0,
tick,
output;

tock,
output;

set in1 0,
set in2 0,
set load 1,
set shift 0,
tick,
output;

tock,
output;

set in1 -32123,
set in2 -32123,
set load 0,
set shift 0,
tick,
output;

tock,
output;

set in1 11111,
set in2 11111,
set load 0,
set shift 0,
tick,
output;

tock,
output;

set in1 -32123,
set in2 -32123,
set load 1,
set shift 0,
tick,
output;

tock,
output;

set in1 -32123,
set in2 -32123,
set load 1,
set shift 0,
tick,
output;

tock,
output;

set in1 -32123,
set in2 -32123,
set load 0,
set shift 0,
tick,
output;

tock,
output;

set in1 12345,
set in2 12345,
set load 1,
set shift 0,
tick,
output;

tock,
output;

set in1 0,
set in2 0,
set load 0,
set shift 0,
tick,
output;

tock,
output;

set in1 0,
set in2 0,
set load 1,
set shift 0,
tick,
output;

tock,
output;

set in1 %B0000000000000001,
set in2 %B0000000000000001,
set load 0,
set shift 0,
tick,
output;

tock,
output;

set load 1,
set shift 0,
tick,
output;

tock,
output;
