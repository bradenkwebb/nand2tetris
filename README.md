# nand2tetris
This repository contains my code for [Nand to Tetris Parts I & II](https://www.coursera.org/learn/build-a-computer). I'm auditing this course through Coursera at the recommendation of the [core systems curriculum](https://github.com/ossu/computer-science#core-systems) of the Open Source Society University's Computer Science program.

All initial boilerplate code is taken directly from [Shimon Schocken and Noam Nisan](https://www.nand2tetris.org/software) as intended for the course, but the actual implementations of the gates and chips specified by the course are all my own work.

### Project 1: Boolean Logic
For this project, I implemented 15 different low-level logic gates in a Hardware Description Language (HDL) given a Nand gate as a starting point. These included: Nand, Not, And, Or, Xor, Multiplexor, Demultiplexor, 16-bit versions of Not, And, Or, Multiplexor, and then an 8-way Or, a 4-way 16-bit Multiplexor, an 8-way 16-bit Multiplexor, a 4-way Demultiplexor, and an 8-way Demultiplexor. The relevant files are located in `projects/01/*.hdl`. 

They can be tested by running `tools/HardwareSimulator` (use the `.bat` file for Windows, `.sh` for Unix) and then loading the desired `.hdl` file along with its corresponding `.tst` file.


### Project 2: Boolean Arithmetic
