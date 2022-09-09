load PC8.hdl,
output-file PC8.out,
compare-to PC8.cmp,
output-list time%S1.4.1 in%D1.6.1 reset%B2.1.2 load%B2.1.2 inc1%B2.1.2 inc0%B2.1.2 out%D1.6.1;

set in 0,
set reset 0,
set load 0,
set inc0 0,
set inc1 0,
tick,
output;

tock,
output;

set inc0 1,
set inc1 0,
tick,
output;

tock,
output;

set inc0 0,
set inc1 1,
tick,
output;

tock,
output;

set inc0 1,
set inc1 1,
tick,
output;

tock,
output;

set in 33,
set reset 0,
set load 1,
set inc0 0,
set inc1 0,
tick,
output;

tock,
output;

set inc0 1,
set inc1 0,
set load 0,
tick,
output;

tock,
output;

set inc0 0,
set inc1 1,
set reset 1,
tick,
output;

tock,
output;

set inc0 1,
set inc1 1,
set reset 0,
tick,
output;

tock,
output;
