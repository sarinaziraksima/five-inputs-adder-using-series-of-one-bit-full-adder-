# Five-inputs-adder-using-series-of-one-bit-full-adder

There are various ways to implement a design. In this project, instead of converting inputs to integer values and adding them, we utilized one-bit full adder components using a generic mapping in VHDL to create a component that adds five inputs: a 1-bit, a 14-bit, a 15-bit, a 16-bit, and a 17-bit input. The component returns a 17-bit sum and a carry bit. To achieve this, the inputs were added together in pairs, and the results were again paired until we obtained the overall sum.

These components were tested using a test bench in Xilinx Vivado.
