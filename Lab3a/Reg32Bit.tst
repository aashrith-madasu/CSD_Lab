load Reg32Bit.hdl,
output-file Reg32Bit.out,
compare-to Reg32Bit.cmp,
output-list time%S1.4.1 in1%D1.6.1 in2%D1.6.1 shift%B2.1.2 shiftIn%B4.1.4 load%B2.1.2 out1%D1.6.1 out2%D1.6.1;

set in1 0,
set in2 0,
set load 0,
set shift 0,
tick,
output;

tock,
output;

set in1 333,
set in2 333,
set load 1,
set shift 0,
tick,
output;

tock,
output;

set in1 333,
set in2 333,
set load 0,
set shift 1,
tick,
output;

tock,
output;

set in1 1,
set in2 1,
set load 0,
set shift 0,
tick,
output;

tock,
output;

set in1 333,
set in2 333,
set load 1,
set shift 0,
tick,
output;

tock,
output;

set in1 333,
set in2 333,
set load 1,
set shift 0,
tick,
output;

tock,
output;

set in1 333,
set in2 333,
set load 0,
set shift 0,
tick,
output;

tock,
output;

set in1 15,
set in2 15,
set load 1,
set shift 0,
tick,
output;

tock,
output;