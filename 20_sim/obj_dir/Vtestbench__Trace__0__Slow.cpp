// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_fst_c.h"
#include "Vtestbench__Syms.h"


VL_ATTR_COLD void Vtestbench___024root__trace_init_sub__TOP__0(Vtestbench___024root* vlSelf, VerilatedFst* tracep) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root__trace_init_sub__TOP__0\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->pushPrefix("testbench", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+1,0,"out",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBit(c+2,0,"Co",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+23,0,"clk",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+24,0,"rstn",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+25,0,"Cin",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+26,0,"ina",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+27,0,"inb",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->pushPrefix("full_adder", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+26,0,"X",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+27,0,"Y",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBit(c+24,0,"rst_n",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+23,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+1,0,"S",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBit(c+25,0,"Cin",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+2,0,"Co",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+3,0,"X_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+4,0,"Y_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+5,0,"S_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBit(c+6,0,"Co_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+7,0,"Cin_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("u1", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+3,0,"X",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+4,0,"Y",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+5,0,"S",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBit(c+7,0,"Cin",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+6,0,"Co",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+8,0,"w1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+9,0,"w2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+10,0,"w3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("u1", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+11,0,"X",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+12,0,"Y",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+7,0,"Ci",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+13,0,"S",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+8,0,"Co",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("u2", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+14,0,"X",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+15,0,"Y",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+8,0,"Ci",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+16,0,"S",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+9,0,"Co",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("u3", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+17,0,"X",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+18,0,"Y",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+9,0,"Ci",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+19,0,"S",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+10,0,"Co",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("u4", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+20,0,"X",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+21,0,"Y",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+10,0,"Ci",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+22,0,"S",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+6,0,"Co",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->popPrefix();
}

VL_ATTR_COLD void Vtestbench___024root__trace_init_top(Vtestbench___024root* vlSelf, VerilatedFst* tracep) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root__trace_init_top\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    Vtestbench___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void Vtestbench___024root__trace_const_0(void* voidSelf, VerilatedFst::Buffer* bufp);
VL_ATTR_COLD void Vtestbench___024root__trace_full_0(void* voidSelf, VerilatedFst::Buffer* bufp);
void Vtestbench___024root__trace_chg_0(void* voidSelf, VerilatedFst::Buffer* bufp);
void Vtestbench___024root__trace_cleanup(void* voidSelf, VerilatedFst* /*unused*/);

VL_ATTR_COLD void Vtestbench___024root__trace_register(Vtestbench___024root* vlSelf, VerilatedFst* tracep) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root__trace_register\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    tracep->addConstCb(&Vtestbench___024root__trace_const_0, 0U, vlSelf);
    tracep->addFullCb(&Vtestbench___024root__trace_full_0, 0U, vlSelf);
    tracep->addChgCb(&Vtestbench___024root__trace_chg_0, 0U, vlSelf);
    tracep->addCleanupCb(&Vtestbench___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void Vtestbench___024root__trace_const_0(void* voidSelf, VerilatedFst::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root__trace_const_0\n"); );
    // Init
    Vtestbench___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtestbench___024root*>(voidSelf);
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
}

VL_ATTR_COLD void Vtestbench___024root__trace_full_0_sub_0(Vtestbench___024root* vlSelf, VerilatedFst::Buffer* bufp);

VL_ATTR_COLD void Vtestbench___024root__trace_full_0(void* voidSelf, VerilatedFst::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root__trace_full_0\n"); );
    // Init
    Vtestbench___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtestbench___024root*>(voidSelf);
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vtestbench___024root__trace_full_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vtestbench___024root__trace_full_0_sub_0(Vtestbench___024root* vlSelf, VerilatedFst::Buffer* bufp) {
    (void)vlSelf;  // Prevent unused variable warning
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root__trace_full_0_sub_0\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    // Body
    bufp->fullCData(oldp+1,(vlSelfRef.testbench__DOT__out),4);
    bufp->fullBit(oldp+2,(vlSelfRef.testbench__DOT__Co));
    bufp->fullCData(oldp+3,(vlSelfRef.testbench__DOT__full_adder__DOT__X_reg),4);
    bufp->fullCData(oldp+4,(vlSelfRef.testbench__DOT__full_adder__DOT__Y_reg),4);
    bufp->fullCData(oldp+5,((((((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u4__DOT____VdfgRegularize_h0dfa8fde_0_0) 
                                ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w3)) 
                               << 3U) | (((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u3__DOT____VdfgRegularize_h0dfa8fde_0_0) 
                                          ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w2)) 
                                         << 2U)) | 
                             ((((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u2__DOT____VdfgRegularize_h0dfa8fde_0_0) 
                                ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w1)) 
                               << 1U) | ((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u1__DOT____VdfgRegularize_h0dfa8fde_0_0) 
                                         ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Cin_reg))))),4);
    bufp->fullBit(oldp+6,((1U & ((((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__X_reg) 
                                   & (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Y_reg)) 
                                  >> 3U) | ((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w3) 
                                            & (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u4__DOT____VdfgRegularize_h0dfa8fde_0_0))))));
    bufp->fullBit(oldp+7,(vlSelfRef.testbench__DOT__full_adder__DOT__Cin_reg));
    bufp->fullBit(oldp+8,(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w1));
    bufp->fullBit(oldp+9,(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w2));
    bufp->fullBit(oldp+10,(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w3));
    bufp->fullBit(oldp+11,((1U & (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__X_reg))));
    bufp->fullBit(oldp+12,((1U & (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Y_reg))));
    bufp->fullBit(oldp+13,(((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u1__DOT____VdfgRegularize_h0dfa8fde_0_0) 
                            ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Cin_reg))));
    bufp->fullBit(oldp+14,((1U & ((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__X_reg) 
                                  >> 1U))));
    bufp->fullBit(oldp+15,((1U & ((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Y_reg) 
                                  >> 1U))));
    bufp->fullBit(oldp+16,(((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u2__DOT____VdfgRegularize_h0dfa8fde_0_0) 
                            ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w1))));
    bufp->fullBit(oldp+17,((1U & ((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__X_reg) 
                                  >> 2U))));
    bufp->fullBit(oldp+18,((1U & ((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Y_reg) 
                                  >> 2U))));
    bufp->fullBit(oldp+19,(((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u3__DOT____VdfgRegularize_h0dfa8fde_0_0) 
                            ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w2))));
    bufp->fullBit(oldp+20,((1U & ((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__X_reg) 
                                  >> 3U))));
    bufp->fullBit(oldp+21,((1U & ((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__Y_reg) 
                                  >> 3U))));
    bufp->fullBit(oldp+22,(((IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__u4__DOT____VdfgRegularize_h0dfa8fde_0_0) 
                            ^ (IData)(vlSelfRef.testbench__DOT__full_adder__DOT__u1__DOT__w3))));
    bufp->fullBit(oldp+23,(vlSelfRef.testbench__DOT__clk));
    bufp->fullBit(oldp+24,(vlSelfRef.testbench__DOT__rstn));
    bufp->fullBit(oldp+25,(vlSelfRef.testbench__DOT__Cin));
    bufp->fullCData(oldp+26,(vlSelfRef.testbench__DOT__ina),4);
    bufp->fullCData(oldp+27,(vlSelfRef.testbench__DOT__inb),4);
}
