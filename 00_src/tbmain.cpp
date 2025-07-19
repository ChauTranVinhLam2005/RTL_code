#include "Vfull_adder_tb.h"
#include "verilated.h"

vluint64_t main_time = 0;
double sc_time_stamp() { return main_time; }

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);

    Vfull_adder_tb* tb = new Vfull_adder_tb;

    while (!Verilated::gotFinish() && main_time < 1000) {
        tb->eval();
        main_time++;
    }

    tb->final();
    delete tb;

    return 0;
}
