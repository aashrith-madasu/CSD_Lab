load JKFF.hdl,
output-file JKFF.out,
compare-to JKFF.cmp,
output-list time%S1.4.1 j%B2.1.2 k%B2.1.2 q%B2.1.2;

set j 0;
set k 0;

tick;
output;

tock;
output;

set j 0;
set k 1;

tick;
output;

tock;
output;

set j 1;
set k 0;

tick;
output;

tock;
output;

set j 1;
set k 1;

tick;
output;

tock;
output;