
// Generated by Cadence Genus(TM) Synthesis Solution GENUS15.20 - 15.20-p004_1
// Generated on: May 24 2025 12:42:00

// Verification Directory fv/synth_wrapper 

module synth_wrapper(X, Y, rst_n, clk, S, Cin, Co);
  input [3:0] X, Y;
  input rst_n, clk, Cin;
  output [3:0] S;
  output Co;
  wire [3:0] X, Y;
  wire rst_n, clk, Cin;
  wire [3:0] S;
  wire Co;
  wire [3:0] X_reg;
  wire [3:0] Y_reg;
  wire Cin_reg, n_0, n_1, n_2, n_3, n_4, n_5, n_6;
  wire n_7, n_8, n_9, n_10, n_11, n_12, n_13, n_14;
  wire n_15, n_16, n_17, n_18, n_19, n_20, n_21, n_22;
  wire n_23, n_24, n_25, n_27, n_28, n_29, n_30, n_31;
  wire n_32, n_33;
  sky130_fd_sc_hd__dfrtp_1 \S_reg[3] (.RESET_B (rst_n), .CLK (clk), .D
       (n_31), .Q (S[3]));
  sky130_fd_sc_hd__dfrtp_1 Co_reg(.RESET_B (rst_n), .CLK (clk), .D
       (n_33), .Q (Co));
  sky130_fd_sc_hd__dfrtp_1 \S_reg[2] (.RESET_B (rst_n), .CLK (clk), .D
       (n_32), .Q (S[2]));
  sky130_fd_sc_hd__o21ai_1 g2388(.A1 (n_15), .A2 (n_30), .B1 (n_9), .Y
       (n_33));
  sky130_fd_sc_hd__xnor2_1 g2389(.A (n_16), .B (n_0), .Y (n_32));
  sky130_fd_sc_hd__o2bb2ai_1 g2390(.A1_N (n_22), .A2_N (n_29), .B1
       (n_22), .B2 (n_29), .Y (n_31));
  sky130_fd_sc_hd__dfrtp_1 \S_reg[1] (.RESET_B (rst_n), .CLK (clk), .D
       (n_28), .Q (S[1]));
  sky130_fd_sc_hd__inv_1 g2393(.A (n_29), .Y (n_30));
  sky130_fd_sc_hd__xor2_1 g2394(.A (n_18), .B (n_21), .X (n_28));
  sky130_fd_sc_hd__nand2_2 g2395(.A (n_27), .B (n_25), .Y (n_29));
  sky130_fd_sc_hd__dfrtp_1 \S_reg[0] (.RESET_B (rst_n), .CLK (clk), .D
       (n_23), .Q (S[0]));
  sky130_fd_sc_hd__nand2_1 g2397(.A (n_21), .B (n_24), .Y (n_27));
  sky130_fd_sc_hd__o21a_1 g2398(.A1 (n_11), .A2 (n_12), .B1 (n_10), .X
       (n_25));
  sky130_fd_sc_hd__a2bb2oi_1 g2399(.A1_N (X_reg[1]), .A2_N (Y_reg[1]),
       .B1 (n_5), .B2 (n_7), .Y (n_24));
  sky130_fd_sc_hd__xor2_1 g2400(.A (n_1), .B (n_19), .X (n_23));
  sky130_fd_sc_hd__inv_2 g2402(.A (n_17), .Y (n_22));
  sky130_fd_sc_hd__nand2_4 g2403(.A (n_20), .B (n_14), .Y (n_21));
  sky130_fd_sc_hd__nand2_2 g2404(.A (n_8), .B (Y_reg[0]), .Y (n_20));
  sky130_fd_sc_hd__xor2_1 g2405(.A (Y_reg[0]), .B (n_3), .X (n_19));
  sky130_fd_sc_hd__xor2_1 g2406(.A (Y_reg[1]), .B (X_reg[1]), .X
       (n_18));
  sky130_fd_sc_hd__xor2_1 g2407(.A (Y_reg[3]), .B (X_reg[3]), .X
       (n_17));
  sky130_fd_sc_hd__xor2_1 g2408(.A (n_5), .B (n_7), .X (n_16));
  sky130_fd_sc_hd__nor2_1 g2409(.A (X_reg[3]), .B (Y_reg[3]), .Y
       (n_15));
  sky130_fd_sc_hd__nand2_1 g2410(.A (Cin_reg), .B (X_reg[0]), .Y
       (n_14));
  sky130_fd_sc_hd__nand2b_1 g2411(.A_N (Y_reg[1]), .B (n_6), .Y (n_13));
  sky130_fd_sc_hd__nor2_1 g2412(.A (X_reg[2]), .B (Y_reg[2]), .Y
       (n_12));
  sky130_fd_sc_hd__nand2_1 g2413(.A (X_reg[2]), .B (Y_reg[2]), .Y
       (n_10));
  sky130_fd_sc_hd__nand2_1 g2414(.A (X_reg[3]), .B (Y_reg[3]), .Y
       (n_9));
  sky130_fd_sc_hd__nand2_2 g2415(.A (n_2), .B (n_4), .Y (n_8));
  sky130_fd_sc_hd__nand2_1 g2416(.A (X_reg[1]), .B (Y_reg[1]), .Y
       (n_11));
  sky130_fd_sc_hd__inv_2 g2417(.A (X_reg[2]), .Y (n_7));
  sky130_fd_sc_hd__clkinv_1 g2419(.A (X_reg[1]), .Y (n_6));
  sky130_fd_sc_hd__dfrtp_1 \Y_reg_reg[1] (.RESET_B (rst_n), .CLK (clk),
       .D (Y[1]), .Q (Y_reg[1]));
  sky130_fd_sc_hd__dfrtp_1 \X_reg_reg[2] (.RESET_B (rst_n), .CLK (clk),
       .D (X[2]), .Q (X_reg[2]));
  sky130_fd_sc_hd__dfrtp_1 \Y_reg_reg[3] (.RESET_B (rst_n), .CLK (clk),
       .D (Y[3]), .Q (Y_reg[3]));
  sky130_fd_sc_hd__dfrtp_1 \X_reg_reg[1] (.RESET_B (rst_n), .CLK (clk),
       .D (X[1]), .Q (X_reg[1]));
  sky130_fd_sc_hd__inv_2 g2424(.A (Y_reg[2]), .Y (n_5));
  sky130_fd_sc_hd__clkinv_2 g2425(.A (X_reg[0]), .Y (n_4));
  sky130_fd_sc_hd__buf_2 g2426(.A (X_reg[0]), .X (n_3));
  sky130_fd_sc_hd__clkinv_2 g2427(.A (Cin_reg), .Y (n_2));
  sky130_fd_sc_hd__buf_2 g2428(.A (Cin_reg), .X (n_1));
  sky130_fd_sc_hd__dfrtp_1 \Y_reg_reg[0] (.RESET_B (rst_n), .CLK (clk),
       .D (Y[0]), .Q (Y_reg[0]));
  sky130_fd_sc_hd__dfrtp_1 \X_reg_reg[3] (.RESET_B (rst_n), .CLK (clk),
       .D (X[3]), .Q (X_reg[3]));
  sky130_fd_sc_hd__dfrtp_1 \Y_reg_reg[2] (.RESET_B (rst_n), .CLK (clk),
       .D (Y[2]), .Q (Y_reg[2]));
  sky130_fd_sc_hd__dfrtp_2 \X_reg_reg[0] (.RESET_B (rst_n), .CLK (clk),
       .D (X[0]), .Q (X_reg[0]));
  sky130_fd_sc_hd__dfrtp_1 Cin_reg_reg(.RESET_B (rst_n), .CLK (clk), .D
       (Cin), .Q (Cin_reg));
  sky130_fd_sc_hd__a21boi_2 g2(.A1 (n_21), .A2 (n_13), .B1_N (n_11), .Y
       (n_0));
endmodule

