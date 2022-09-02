## Organisation of the code
* One can find all the files related to a component in a sub folder with the component name. For example, ```/Add16``` contains files ```Add16.hdl, Add16.cmp, Add16.tst, Add16.py, Add16.out```.
* The ```.py``` file is used to generate **random** testcases for a component. For example, ```Add16.py``` is used to generate ```Add16.tst``` and ```Add16.cmp``` which are used to test ```Add16.hdl``` in **Nand2Tetris** simulator.
* Currently there are **1000** testcases in the testbench, but the user can generate **as many as** they want using python script by following the steps in the next section.

## Instructions to run the code

* Open the component directory, run the python script with **number of testcases** as argument to the script, to generate the testcases.
    ```
    python <component>.py <num_testcases>
    ```
    Example:
    ```
    python Add16.py 1000
    ```
* Open the Nand2Tetris Simulator and load the chip file (.hdl) and open the test file (.tst)

* Increase the speed of the simulation and click on run button.


## Report
Here is the link to the report :  https://docs.google.com/document/d/1hBYTU5VaMvdt58smAtI891O0P1pA1AHugNoFQTLdzNY/edit?usp=sharing