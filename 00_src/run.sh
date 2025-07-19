#!/bin/bash
verilator -Wall --cc ../01_tb/full_adder_tb.v \
                     full_adder.v \
                     --exe tbmain.cpp \
                     -I. -I../01_tb
make -C obj_dir -f Vfull_adder_tb.mk Vfull_adder_tb
..00_src/obj_dir/full_adder_tb
 