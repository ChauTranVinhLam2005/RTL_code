// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vtestbench.h for the primary calling header

#ifndef VERILATED_VTESTBENCH___024ROOT_H_
#define VERILATED_VTESTBENCH___024ROOT_H_  // guard

#include "verilated.h"
#include "verilated_timing.h"


class Vtestbench__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vtestbench___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    CData/*0:0*/ testbench__DOT__clk;
    CData/*0:0*/ testbench__DOT__rstn;
    CData/*3:0*/ testbench__DOT__out;
    CData/*0:0*/ testbench__DOT__Co;
    CData/*0:0*/ testbench__DOT__Cin;
    CData/*3:0*/ testbench__DOT__ina;
    CData/*3:0*/ testbench__DOT__inb;
    CData/*3:0*/ testbench__DOT__full_adder__DOT__X_reg;
    CData/*3:0*/ testbench__DOT__full_adder__DOT__Y_reg;
    CData/*0:0*/ testbench__DOT__full_adder__DOT__Cin_reg;
    CData/*0:0*/ testbench__DOT__full_adder__DOT__u1__DOT__w1;
    CData/*0:0*/ testbench__DOT__full_adder__DOT__u1__DOT__w2;
    CData/*0:0*/ testbench__DOT__full_adder__DOT__u1__DOT__w3;
    CData/*0:0*/ testbench__DOT__full_adder__DOT__u1__DOT__u1__DOT____VdfgRegularize_h0dfa8fde_0_0;
    CData/*0:0*/ testbench__DOT__full_adder__DOT__u1__DOT__u2__DOT____VdfgRegularize_h0dfa8fde_0_0;
    CData/*0:0*/ testbench__DOT__full_adder__DOT__u1__DOT__u3__DOT____VdfgRegularize_h0dfa8fde_0_0;
    CData/*0:0*/ testbench__DOT__full_adder__DOT__u1__DOT__u4__DOT____VdfgRegularize_h0dfa8fde_0_0;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP__testbench__DOT__clk__0;
    CData/*0:0*/ __Vtrigprevexpr___TOP__testbench__DOT__rstn__0;
    CData/*0:0*/ __VactContinue;
    IData/*31:0*/ __VactIterCount;
    VlUnpacked<CData/*0:0*/, 2> __Vm_traceActivity;
    VlDelayScheduler __VdlySched;
    VlTriggerScheduler __VtrigSched_hb621bb95__0;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<3> __VactTriggered;
    VlTriggerVec<3> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vtestbench__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vtestbench___024root(Vtestbench__Syms* symsp, const char* v__name);
    ~Vtestbench___024root();
    VL_UNCOPYABLE(Vtestbench___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
