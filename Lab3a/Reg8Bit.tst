load Reg8Bit.hdl,
output-file Reg8Bit.out,
compare-to Reg8Bit.cmp,
output-list time%S1.4.1 in%D1.6.1 load%B2.1.2 shift%B2.1.2 out%D1.6.1;

set in 0,
set load 0,
set shift 0,
tick,
output;

tock,
output;

set in 33,
set load 1,
set shift 0,
tick,
output;

tock,
output;

set in 33,
set load 0,
set shift 1,
tick,
output;

tock,
output;

set in 1,
set load 0,
set shift 0,
tick,
output;

tock,
output;

set in 33,
set load 1,
set shift 0,
tick,
output;

tock,
output;

set in 33,
set load 1,
set shift 0,
tick,
output;

tock,
output;

set in 33,
set load 0,
set shift 0,
tick,
output;

tock,
output;

set in 15,
set load 1,
set shift 0,
tick,
output;

tock,
output;

set in 16,
set load 1,
set shift 1,
tick,
output;

tock,
output;