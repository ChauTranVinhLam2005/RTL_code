// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtestbench.h for the primary calling header

#include "Vtestbench__pch.h"
#include "Vtestbench___024root.h"

VL_ATTR_COLD void Vtestbench___024root___eval_static(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_static\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

VL_ATTR_COLD void Vtestbench___024root___eval_final(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_final\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtestbench___024root___dump_triggers__stl(Vtestbench___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vtestbench___024root___eval_phase__stl(Vtestbench___024root* vlSelf);

VL_ATTR_COLD void Vtestbench___024root___eval_settle(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_settle\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __VstlIterCount;
    CData/*0:0*/ __VstlContinue;
    // Body
    __VstlIterCount = 0U;
    vlSelfRef.__VstlFirstIteration = 1U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        if (VL_UNLIKELY((0x64U < __VstlIterCount))) {
#ifdef VL_DEBUG
            Vtestbench___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("../01_tb/testbench.v", 3, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vtestbench___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelfRef.__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtestbench___024root___dump_triggers__stl(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___dump_triggers__stl\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VstlTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtestbench___024root___stl_sequent__TOP__0(Vtestbench___024root* vlSelf);
VL_ATTR_COLD void Vtestbench___024root____Vm_traceActivitySetAll(Vtestbench___024root* vlSelf);

VL_ATTR_COLD void Vtestbench___024root___eval_stl(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_stl\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VstlTriggered.word(0U))) {
        Vtestbench___024root___stl_sequent__TOP__0(vlSelf);
        Vtestbench___024root____Vm_traceActivitySetAll(vlSelf);
    }
}

VL_ATTR_COLD void Vtestbench___024root___stl_sequent__TOP__0(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___stl_sequent__TOP__0\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u4__DOT____VdfgRegularize_h0dfa8fde_0_0 
        = (1U & (((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__X_reg) 
                  ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Y_reg)) 
                 >> 3U));
    vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u3__DOT____VdfgRegularize_h0dfa8fde_0_0 
        = (1U & (((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__X_reg) 
                  ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Y_reg)) 
                 >> 2U));
    vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u2__DOT____VdfgRegularize_h0dfa8fde_0_0 
        = (1U & (((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__X_reg) 
                  ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Y_reg)) 
                 >> 1U));
    vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u1__DOT____VdfgRegularize_h0dfa8fde_0_0 
        = (1U & ((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__X_reg) 
                 ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Y_reg)));
    vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w1 
        = (1U & (((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__X_reg) 
                  & (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Y_reg)) 
                 | ((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Cin_reg) 
                    & (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u1__DOT____VdfgRegularize_h0dfa8fde_0_0))));
    vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w2 
        = (1U & ((((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__X_reg) 
                   & (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Y_reg)) 
                  >> 1U) | ((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w1) 
                            & (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u2__DOT____VdfgRegularize_h0dfa8fde_0_0))));
    vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w3 
        = (1U & ((((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__X_reg) 
                   & (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Y_reg)) 
                  >> 2U) | ((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w2) 
                            & (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u3__DOT____VdfgRegularize_h0dfa8fde_0_0))));
}

VL_ATTR_COLD void Vtestbench___024root___eval_triggers__stl(Vtestbench___024root* vlSelf);

VL_ATTR_COLD bool Vtestbench___024root___eval_phase__stl(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_phase__stl\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vtestbench___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelfRef.__VstlTriggered.any();
    if (__VstlExecute) {
        Vtestbench___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtestbench___024root___dump_triggers__act(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___dump_triggers__act\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VactTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge testbench.clk)\n");
    }
    if ((2ULL & vlSelfRef.__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 1 is active: @(negedge testbench.rstn)\n");
    }
    if ((4ULL & vlSelfRef.__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 2 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtestbench___024root___dump_triggers__nba(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___dump_triggers__nba\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VnbaTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge testbench.clk)\n");
    }
    if ((2ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 1 is active: @(negedge testbench.rstn)\n");
    }
    if ((4ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 2 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtestbench___024root____Vm_traceActivitySetAll(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root____Vm_traceActivitySetAll\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__Vm_traceActivity[0U] = 1U;
    vlSelfRef.__Vm_traceActivity[1U] = 1U;
}

VL_ATTR_COLD void Vtestbench___024root___ctor_var_reset(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___ctor_var_reset\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelf->testbench__DOT__out = VL_RAND_RESET_I(4);
    vlSelf->testbench__DOT__Co = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__clk = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__rstn = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__Cin = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__ina = VL_RAND_RESET_I(4);
    vlSelf->testbench__DOT__inb = VL_RAND_RESET_I(4);
    vlSelf->testbench__DOT__full_adder__DOT__X_reg = VL_RAND_RESET_I(4);
    vlSelf->testbench__DOT__full_adder__DOT__Y_reg = VL_RAND_RESET_I(4);
    vlSelf->testbench__DOT__full_adder__DOT__Cin_reg = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__full_adder__DOT__u1__DOT__w1 = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__full_adder__DOT__u1__DOT__w2 = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__full_adder__DOT__u1__DOT__w3 = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__full_adder__DOT__u1__DOT__u1__DOT____VdfgRegularize_h0dfa8fde_0_0 = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__full_adder__DOT__u1__DOT__u2__DOT____VdfgRegularize_h0dfa8fde_0_0 = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__full_adder__DOT__u1__DOT__u3__DOT____VdfgRegularize_h0dfa8fde_0_0 = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__full_adder__DOT__u1__DOT__u4__DOT____VdfgRegularize_h0dfa8fde_0_0 = VL_RAND_RESET_I(1);
    vlSelf->__Vtrigprevexpr___TOP__testbench__DOT__clk__0 = VL_RAND_RESET_I(1);
    vlSelf->__Vtrigprevexpr___TOP__testbench__DOT__rstn__0 = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 2; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}
