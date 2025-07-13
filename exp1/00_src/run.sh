#!/bin/bash
verilator -Wall --cc rising_edge_ff_tb.v falling_edge_ff.v --exe tbmain.cpp
make -C obj_dir -f Vrising_edge_ff_tb.mk Vrising_edge_ff_tb
./obj_dir/Vrising_edge_ff_tb
