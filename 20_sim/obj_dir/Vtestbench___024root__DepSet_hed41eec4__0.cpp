// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtestbench.h for the primary calling header

#include "Vtestbench__pch.h"
#include "Vtestbench___024root.h"

VL_ATTR_COLD void Vtestbench___024root___eval_initial__TOP(Vtestbench___024root* vlSelf);
VlCoroutine Vtestbench___024root___eval_initial__TOP__Vtiming__0(Vtestbench___024root* vlSelf);
VlCoroutine Vtestbench___024root___eval_initial__TOP__Vtiming__1(Vtestbench___024root* vlSelf);
VlCoroutine Vtestbench___024root___eval_initial__TOP__Vtiming__2(Vtestbench___024root* vlSelf);

void Vtestbench___024root___eval_initial(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_initial\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    Vtestbench___024root___eval_initial__TOP(vlSelf);
    Vtestbench___024root___eval_initial__TOP__Vtiming__0(vlSelf);
    Vtestbench___024root___eval_initial__TOP__Vtiming__1(vlSelf);
    Vtestbench___024root___eval_initial__TOP__Vtiming__2(vlSelf);
    vlSelfRef.__Vtrigprevexpr___TOP__testbench__DOT__clk__0 
        = vlSelfRef.testbench__DOT__clk;
    vlSelfRef.__Vtrigprevexpr___TOP__testbench__DOT__rstn__0 
        = vlSelfRef.testbench__DOT__rstn;
}

VL_INLINE_OPT VlCoroutine Vtestbench___024root___eval_initial__TOP__Vtiming__0(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_initial__TOP__Vtiming__0\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    co_await vlSelfRef.__VdlySched.delay(0ULL, nullptr, 
                                         "../01_tb/testbench.v", 
                                         30);
    vlSelfRef.testbench__DOT__clk = 1U;
    while (1U) {
        co_await vlSelfRef.__VdlySched.delay(0x1388ULL, 
                                             nullptr, 
                                             "../01_tb/testbench.v", 
                                             31);
        vlSelfRef.testbench__DOT__clk = (1U & (~ (IData)(vlSelfRef.testbench__DOT__clk)));
    }
}

VL_INLINE_OPT VlCoroutine Vtestbench___024root___eval_initial__TOP__Vtiming__1(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_initial__TOP__Vtiming__1\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    co_await vlSelfRef.__VdlySched.delay(0ULL, nullptr, 
                                         "../01_tb/testbench.v", 
                                         35);
    vlSelfRef.testbench__DOT__rstn = 0U;
    co_await vlSelfRef.__VdlySched.delay(0x2710ULL, 
                                         nullptr, "../01_tb/testbench.v", 
                                         36);
    vlSelfRef.testbench__DOT__rstn = 1U;
}

VL_INLINE_OPT VlCoroutine Vtestbench___024root___eval_initial__TOP__Vtiming__2(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_initial__TOP__Vtiming__2\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*3:0*/ __Vtask_testbench__DOT__stimuli__0__a;
    __Vtask_testbench__DOT__stimuli__0__a = 0;
    CData/*3:0*/ __Vtask_testbench__DOT__stimuli__0__b;
    __Vtask_testbench__DOT__stimuli__0__b = 0;
    CData/*0:0*/ __Vtask_testbench__DOT__stimuli__0__cin;
    __Vtask_testbench__DOT__stimuli__0__cin = 0;
    CData/*3:0*/ __Vtask_testbench__DOT__stimuli__1__a;
    __Vtask_testbench__DOT__stimuli__1__a = 0;
    CData/*3:0*/ __Vtask_testbench__DOT__stimuli__1__b;
    __Vtask_testbench__DOT__stimuli__1__b = 0;
    CData/*0:0*/ __Vtask_testbench__DOT__stimuli__1__cin;
    __Vtask_testbench__DOT__stimuli__1__cin = 0;
    CData/*3:0*/ __Vtask_testbench__DOT__stimuli__2__a;
    __Vtask_testbench__DOT__stimuli__2__a = 0;
    CData/*3:0*/ __Vtask_testbench__DOT__stimuli__2__b;
    __Vtask_testbench__DOT__stimuli__2__b = 0;
    CData/*0:0*/ __Vtask_testbench__DOT__stimuli__2__cin;
    __Vtask_testbench__DOT__stimuli__2__cin = 0;
    CData/*3:0*/ __Vtask_testbench__DOT__stimuli__3__a;
    __Vtask_testbench__DOT__stimuli__3__a = 0;
    CData/*3:0*/ __Vtask_testbench__DOT__stimuli__3__b;
    __Vtask_testbench__DOT__stimuli__3__b = 0;
    CData/*0:0*/ __Vtask_testbench__DOT__stimuli__3__cin;
    __Vtask_testbench__DOT__stimuli__3__cin = 0;
    // Body
    co_await vlSelfRef.__VdlySched.delay(0ULL, nullptr, 
                                         "../01_tb/testbench.v", 
                                         40);
    __Vtask_testbench__DOT__stimuli__0__cin = 0U;
    __Vtask_testbench__DOT__stimuli__0__b = 0U;
    __Vtask_testbench__DOT__stimuli__0__a = 0U;
    co_await vlSelfRef.__VtrigSched_hb621bb95__0.trigger(0U, 
                                                         nullptr, 
                                                         "@(posedge testbench.clk)", 
                                                         "../01_tb/testbench.v", 
                                                         50);
    vlSelfRef.testbench__DOT__ina = __Vtask_testbench__DOT__stimuli__0__a;
    vlSelfRef.testbench__DOT__inb = __Vtask_testbench__DOT__stimuli__0__b;
    vlSelfRef.testbench__DOT__Cin = __Vtask_testbench__DOT__stimuli__0__cin;
    co_await vlSelfRef.__VdlySched.delay(0x2710ULL, 
                                         nullptr, "../01_tb/testbench.v", 
                                         51);
    __Vtask_testbench__DOT__stimuli__1__cin = 1U;
    __Vtask_testbench__DOT__stimuli__1__b = 2U;
    __Vtask_testbench__DOT__stimuli__1__a = 3U;
    co_await vlSelfRef.__VtrigSched_hb621bb95__0.trigger(0U, 
                                                         nullptr, 
                                                         "@(posedge testbench.clk)", 
                                                         "../01_tb/testbench.v", 
                                                         50);
    vlSelfRef.testbench__DOT__ina = __Vtask_testbench__DOT__stimuli__1__a;
    vlSelfRef.testbench__DOT__inb = __Vtask_testbench__DOT__stimuli__1__b;
    vlSelfRef.testbench__DOT__Cin = __Vtask_testbench__DOT__stimuli__1__cin;
    co_await vlSelfRef.__VdlySched.delay(0x2710ULL, 
                                         nullptr, "../01_tb/testbench.v", 
                                         51);
    __Vtask_testbench__DOT__stimuli__2__cin = 0U;
    __Vtask_testbench__DOT__stimuli__2__b = 9U;
    __Vtask_testbench__DOT__stimuli__2__a = 2U;
    co_await vlSelfRef.__VtrigSched_hb621bb95__0.trigger(0U, 
                                                         nullptr, 
                                                         "@(posedge testbench.clk)", 
                                                         "../01_tb/testbench.v", 
                                                         50);
    vlSelfRef.testbench__DOT__ina = __Vtask_testbench__DOT__stimuli__2__a;
    vlSelfRef.testbench__DOT__inb = __Vtask_testbench__DOT__stimuli__2__b;
    vlSelfRef.testbench__DOT__Cin = __Vtask_testbench__DOT__stimuli__2__cin;
    co_await vlSelfRef.__VdlySched.delay(0x2710ULL, 
                                         nullptr, "../01_tb/testbench.v", 
                                         51);
    __Vtask_testbench__DOT__stimuli__3__cin = 1U;
    __Vtask_testbench__DOT__stimuli__3__b = 3U;
    __Vtask_testbench__DOT__stimuli__3__a = 2U;
    co_await vlSelfRef.__VtrigSched_hb621bb95__0.trigger(0U, 
                                                         nullptr, 
                                                         "@(posedge testbench.clk)", 
                                                         "../01_tb/testbench.v", 
                                                         50);
    vlSelfRef.testbench__DOT__ina = __Vtask_testbench__DOT__stimuli__3__a;
    vlSelfRef.testbench__DOT__inb = __Vtask_testbench__DOT__stimuli__3__b;
    vlSelfRef.testbench__DOT__Cin = __Vtask_testbench__DOT__stimuli__3__cin;
    co_await vlSelfRef.__VdlySched.delay(0x2710ULL, 
                                         nullptr, "../01_tb/testbench.v", 
                                         51);
    co_await vlSelfRef.__VdlySched.delay(0x30d40ULL, 
                                         nullptr, "../01_tb/testbench.v", 
                                         45);
    VL_FINISH_MT("../01_tb/testbench.v", 46, "");
}

void Vtestbench___024root___eval_act(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_act\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

void Vtestbench___024root___nba_sequent__TOP__0(Vtestbench___024root* vlSelf);

void Vtestbench___024root___eval_nba(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_nba\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((3ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_sequent__TOP__0(vlSelf);
        vlSelfRef.__Vm_traceActivity[1U] = 1U;
    }
}

VL_INLINE_OPT void Vtestbench___024root___nba_sequent__TOP__0(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___nba_sequent__TOP__0\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.testbench__DOT__Co = ((IData)(vlSelfRef.testbench__DOT__rstn) 
                                    && (1U & ((((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__X_reg) 
                                                & (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Y_reg)) 
                                               >> 3U) 
                                              | ((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w3) 
                                                 & (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u4__DOT____VdfgRegularize_h0dfa8fde_0_0)))));
    if (vlSelfRef.testbench__DOT__rstn) {
        vlSelfRef.testbench__DOT__out = (((((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u4__DOT____VdfgRegularize_h0dfa8fde_0_0) 
                                            ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w3)) 
                                           << 3U) | 
                                          (((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u3__DOT____VdfgRegularize_h0dfa8fde_0_0) 
                                            ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w2)) 
                                           << 2U)) 
                                         | ((((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u2__DOT____VdfgRegularize_h0dfa8fde_0_0) 
                                              ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w1)) 
                                             << 1U) 
                                            | ((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u1__DOT____VdfgRegularize_h0dfa8fde_0_0) 
                                               ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Cin_reg))));
        vlSelfRef.testbench__DOT__full_adder__DOT__X_reg 
            = vlSelfRef.testbench__DOT__ina;
        vlSelfRef.testbench__DOT__full_adder__DOT__Y_reg 
            = vlSelfRef.testbench__DOT__inb;
    } else {
        vlSelfRef.testbench__DOT__out = 0U;
        vlSelfRef.testbench__DOT__full_adder__DOT__X_reg = 0U;
        vlSelfRef.testbench__DOT__full_adder__DOT__Y_reg = 0U;
    }
    vlSelfRef.testbench__DOT__full_adder__DOT__Cin_reg 
        = ((IData)(vlSelfRef.testbench__DOT__rstn) 
           && (IData)(vlSelfRef.testbench__DOT__Cin));
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

void Vtestbench___024root___timing_resume(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___timing_resume\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VactTriggered.word(0U))) {
        vlSelfRef.__VtrigSched_hb621bb95__0.resume(
                                                   "@(posedge testbench.clk)");
    }
    if ((4ULL & vlSelfRef.__VactTriggered.word(0U))) {
        vlSelfRef.__VdlySched.resume();
    }
}

void Vtestbench___024root___timing_commit(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___timing_commit\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((! (1ULL & vlSelfRef.__VactTriggered.word(0U)))) {
        vlSelfRef.__VtrigSched_hb621bb95__0.commit(
                                                   "@(posedge testbench.clk)");
    }
}

void Vtestbench___024root___eval_triggers__act(Vtestbench___024root* vlSelf);

bool Vtestbench___024root___eval_phase__act(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_phase__act\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    VlTriggerVec<3> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vtestbench___024root___eval_triggers__act(vlSelf);
    Vtestbench___024root___timing_commit(vlSelf);
    __VactExecute = vlSelfRef.__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelfRef.__VactTriggered, vlSelfRef.__VnbaTriggered);
        vlSelfRef.__VnbaTriggered.thisOr(vlSelfRef.__VactTriggered);
        Vtestbench___024root___timing_resume(vlSelf);
        Vtestbench___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vtestbench___024root___eval_phase__nba(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_phase__nba\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelfRef.__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vtestbench___024root___eval_nba(vlSelf);
        vlSelfRef.__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtestbench___024root___dump_triggers__nba(Vtestbench___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vtestbench___024root___dump_triggers__act(Vtestbench___024root* vlSelf);
#endif  // VL_DEBUG

void Vtestbench___024root___eval(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            Vtestbench___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("../01_tb/testbench.v", 3, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelfRef.__VactIterCount = 0U;
        vlSelfRef.__VactContinue = 1U;
        while (vlSelfRef.__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelfRef.__VactIterCount))) {
#ifdef VL_DEBUG
                Vtestbench___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("../01_tb/testbench.v", 3, "", "Active region did not converge.");
            }
            vlSelfRef.__VactIterCount = ((IData)(1U) 
                                         + vlSelfRef.__VactIterCount);
            vlSelfRef.__VactContinue = 0U;
            if (Vtestbench___024root___eval_phase__act(vlSelf)) {
                vlSelfRef.__VactContinue = 1U;
            }
        }
        if (Vtestbench___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vtestbench___024root___eval_debug_assertions(Vtestbench___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_debug_assertions\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
}
#endif  // VL_DEBUG
