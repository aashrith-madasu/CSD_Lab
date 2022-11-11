load Computer.hdl,
output-file ComputerAdd.out,
output-list time%S1.4.1 DRegister[0]%D1.7.1;

ROM32K load a1a.asm,
output;

// First run (at the beginning PC=0)
repeat 500 {
    tick, tock, output;
}

