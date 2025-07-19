// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_fst_c.h"
#include "Vtestbench__Syms.h"


void Vtestbench___024root__trace_chg_0_sub_0(Vtestbench___024root* vlSelf, VerilatedFst::Buffer* bufp);

void Vtestbench___024root__trace_chg_0(void* voidSelf, VerilatedFst::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root__trace_chg_0\n"); );
    // Init
    Vtestbench___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtestbench___024root*>(voidSelf);
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vtestbench___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vtestbench___024root__trace_chg_0_sub_0(Vtestbench___024root* vlSelf, VerilatedFst::Buffer* bufp) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root__trace_chg_0_sub_0\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY(vlSelfRef.__Vm_traceActivity[1U])) {
        bufp->chgCData(oldp+0,(vlSelfRef.testbench__DOT__out),4);
        bufp->chgBit(oldp+1,(vlSelfRef.testbench__DOT__Co));
        bufp->chgCData(oldp+2,(vlSelfRef.testbench__DOT__full_adder__DOT__X_reg),4);
        bufp->chgCData(oldp+3,(vlSelfRef.testbench__DOT__full_adder__DOT__Y_reg),4);
        bufp->chgCData(oldp+4,((((((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u4__DOT____VdfgRegularize_h0dfa8fde_0_0) 
                                   ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w3)) 
                                  << 3U) | (((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u3__DOT____VdfgRegularize_h0dfa8fde_0_0) 
                                             ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w2)) 
                                            << 2U)) 
                                | ((((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u2__DOT____VdfgRegularize_h0dfa8fde_0_0) 
                                     ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w1)) 
                                    << 1U) | ((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u1__DOT____VdfgRegularize_h0dfa8fde_0_0) 
                                              ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Cin_reg))))),4);
        bufp->chgBit(oldp+5,((1U & ((((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__X_reg) 
                                      & (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Y_reg)) 
                                     >> 3U) | ((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w3) 
                                               & (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u4__DOT____VdfgRegularize_h0dfa8fde_0_0))))));
        bufp->chgBit(oldp+6,(vlSelfRef.testbench__DOT__full_adder__DOT__Cin_reg));
        bufp->chgBit(oldp+7,(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w1));
        bufp->chgBit(oldp+8,(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w2));
        bufp->chgBit(oldp+9,(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w3));
        bufp->chgBit(oldp+10,((1U & (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__X_reg))));
        bufp->chgBit(oldp+11,((1U & (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Y_reg))));
        bufp->chgBit(oldp+12,(((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u1__DOT____VdfgRegularize_h0dfa8fde_0_0) 
                               ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Cin_reg))));
        bufp->chgBit(oldp+13,((1U & ((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__X_reg) 
                                     >> 1U))));
        bufp->chgBit(oldp+14,((1U & ((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Y_reg) 
                                     >> 1U))));
        bufp->chgBit(oldp+15,(((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u2__DOT____VdfgRegularize_h0dfa8fde_0_0) 
                               ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w1))));
        bufp->chgBit(oldp+16,((1U & ((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__X_reg) 
                                     >> 2U))));
        bufp->chgBit(oldp+17,((1U & ((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Y_reg) 
                                     >> 2U))));
        bufp->chgBit(oldp+18,(((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u3__DOT____VdfgRegularize_h0dfa8fde_0_0) 
                               ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w2))));
        bufp->chgBit(oldp+19,((1U & ((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__X_reg) 
                                     >> 3U))));
        bufp->chgBit(oldp+20,((1U & ((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Y_reg) 
                                     >> 3U))));
        bufp->chgBit(oldp+21,(((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u4__DOT____VdfgRegularize_h0dfa8fde_0_0) 
                               ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w3))));
    }
    bufp->chgBit(oldp+22,(vlSelfRef.testbench__DOT__clk));
    bufp->chgBit(oldp+23,(vlSelfRef.testbench__DOT__rstn));
    bufp->chgBit(oldp+24,(vlSelfRef.testbench__DOT__Cin));
    bufp->chgCData(oldp+25,(vlSelfRef.testbench__DOT__ina),4);
    bufp->chgCData(oldp+26,(vlSelfRef.testbench__DOT__inb),4);
}

void Vtestbench___024root__trace_cleanup(void* voidSelf, VerilatedFst* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root__trace_cleanup\n"); );
    // Init
    Vtestbench___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtestbench___024root*>(voidSelf);
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
}
