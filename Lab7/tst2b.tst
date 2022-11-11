load Computer.hdl,
output-file out2b.out,
output-list time%S1.4.1 ARegister[]%D1.7.1 DRegister[]%D1.7.1 RAM16K[0]%D1.10.1 RAM16K[1]%D1.10.1 RAM16K[2]%D1.10.1 RAM16K[3]%D1.10.1 RAM16K[4]%D1.10.1 RAM16K[5]%D1.10.1 RAM16K[16]%D1.10.1 RAM16K[17]%D1.10.1 RAM16K[18]%D1.10.1 RAM16K[19]%D1.10.1 RAM16K[20]%D1.10.1 RAM16K[21]%D1.10.1 RAM16K[22]%D1.10.1;

ROM32K load h2b.asm,
output;

repeat 100
{
	tick, tock, output;
}
