# nand2tetris
This repository contains my code for [Nand to Tetris Parts I & II](https://www.coursera.org/learn/build-a-computer). I'm auditing this course through Coursera at the recommendation of the [core systems curriculum](https://github.com/ossu/computer-science#core-systems) of OSSU's Computer Science program.

All initial boilerplate code is taken directly from [Shimon Schocken and Noam Nisan](https://www.nand2tetris.org/software) as intended for the course, but the actual implementations of the gates and chips specified by the course are all my own work.

### Project 1: Boolean Functions and Gate Logic
For this project, I implemented 15 different low-level logic gates in a Hardware Description Language (HDL) given a Nand gate as a starting point. These included: Nand, Not, And, Or, Xor, Multiplexor, Demultiplexor, 16-bit versions of Not, And, Or, Multiplexor, and then an 8-way Or, a 4-way 16-bit Multiplexor, an 8-way 16-bit Multiplexor, a 4-way Demultiplexor, and an 8-way Demultiplexor. The relevant files are located in `projects/01/*.hdl`. 

They can be tested by running `tools/HardwareSimulator` (use the `.bat` file for Windows, `.sh` for Unix) and then loading the desired `.hdl` file along with its corresponding `.tst` file.

### Project 2: Boolean Arithmetic
I implemented 5 more chips in this project: a Half Adder, a Full Adder, a 16-bit Adder, a 16-bit incrementer, and a fully-functioning Arithmetic Logic Unit. The relevant files are located in `projects/02/*.hdl`. 

As before, they can be tested by running `tools/HardwareSimulator` (use the `.bat` file for Windows, `.sh` for Unix) and then loading the desired `.hdl` file along with its corresponding `.tst` file.

### Project 3: Sequential Logic
A primite Data Flip-Flop (DFF) unit was provided for me in this project. Using that DFF, I implemented 8 additional chips: a 1-bit register, a 16-bit register, a 16-bit program counter, and 8-, 64-, 512-, 4k-, and 16k-register running access memory (RAM) units. The relevant files are located in `projects/03/*.hdl`. 

### Project 4: Machine Language Programming
