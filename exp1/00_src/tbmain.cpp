#include "Vrising_edge_ff_tb.h"
#include "verilated.h"

vluint64_t main_time = 0;
double sc_time_stamp() { return main_time; }

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);

    Vrising_edge_ff_tb* tb = new Vrising_edge_ff_tb;

    while (!Verilated::gotFinish() && main_time < 1000) {
        tb->eval();
        main_time++;
    }

    tb->final();
    delete tb;

    return 0;
}
