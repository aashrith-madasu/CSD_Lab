load Reg16Bit.hdl,
output-file Reg16Bit.out,
compare-to Reg16Bit.cmp,
output-list time%S1.4.1 in%D1.6.1 load%B2.1.2 shift%B2.1.2 out%D1.6.1;

set in 0,
set load 0,
set shift 0,
tick,
output;

tock,
output;

set in 0,
set load 1,
set shift 0,
tick,
output;

tock,
output;

set in -32123,
set load 0,
set shift 0,
tick,
output;

tock,
output;

set in 11111,
set load 0,
set shift 0,
tick,
output;

tock,
output;

set in -32123,
set load 1,
set shift 0,
tick,
output;

tock,
output;

set in -32123,
set load 1,
set shift 0,
tick,
output;

tock,
output;

set in -32123,
set load 0,
set shift 0,
tick,
output;

tock,
output;

set in 12345,
set load 1,
set shift 0,
tick,
output;

tock,
output;

set in 0,
set load 0,
set shift 0,
tick,
output;

tock,
output;

set in 0,
set load 1,
set shift 0,
tick,
output;

tock,
output;

set in %B0000000000000001,
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
