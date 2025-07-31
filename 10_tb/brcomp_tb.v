module brcomp_tb;
  reg [31:0] rs1, rs2;
  reg        br_unsign;
  wire       br_less, br_equal;

  reg [31:0] rs1_tc   [1:8];
  reg [31:0] rs2_tc   [1:8];
  reg        ubr_tc   [1:8];
  reg        less_tc  [1:8];
  reg        equal_tc [1:8];
  // Instantiate DUT
  brcomp DUT (.rs1_i(rs1), .rs2_i(rs2), .br_unsign(br_unsign),
              .br_less(br_less), .br_equal(br_equal));
  integer i;
  initial begin
    rs1_tc[1] = 32'h00000001; rs2_tc[1] = 32'h00000001; ubr_tc[1] = 1'b1; less_tc[1] = 1'b0; equal_tc[1] = 1'b1;
    rs1_tc[2] = 32'h00000002; rs2_tc[2] = 32'h00000002; ubr_tc[2] = 1'b1; less_tc[2] = 1'b0; equal_tc[2] = 1'b1;
    rs1_tc[3] = 32'hFFFFFFFF; rs2_tc[3] = 32'h00000001; ubr_tc[3] = 1'b1; less_tc[3] = 1'b0; equal_tc[3] = 1'b0;
    rs1_tc[4] = 32'h88888888; rs2_tc[4] = 32'h88888888; ubr_tc[4] = 1'b0; less_tc[4] = 1'b0; equal_tc[4] = 1'b1;
    rs1_tc[5] = 32'h00000000; rs2_tc[5] = 32'h00000000; ubr_tc[5] = 1'b0; less_tc[5] = 1'b0; equal_tc[5] = 1'b1;
    rs1_tc[6] = 32'h12345678; rs2_tc[6] = 32'h12345678; ubr_tc[6] = 1'b1; less_tc[6] = 1'b0; equal_tc[6] = 1'b1;
    rs1_tc[7] = 32'h11111111; rs2_tc[7] = 32'h22222222; ubr_tc[7] = 1'b1; less_tc[7] = 1'b1; equal_tc[7] = 1'b0;
    rs1_tc[8] = 32'hAAAAAAAA; rs2_tc[8] = 32'h55555555; ubr_tc[8] = 1'b1; less_tc[8] = 1'b0; equal_tc[8] = 1'b0;
    for (i = 1; i <= 8; i = i + 1) begin
      rs1 = rs1_tc[i];
      rs2 = rs2_tc[i];  
      br_unsign = ubr_tc[i];

      #10;
      if (br_less != less_tc[i] || br_equal != equal_tc[i] ) begin
          $display("Testcase #%2d FAILED: | rs1_i = %h | rs2_i = %h | br_unsign = %b | br_less_expected = %h | br_less_got = %h | br_equal_expected = %b | br_equal_got = %b",
                    i, rs1, rs2, br_unsign, less_tc[i], br_less, equal_tc[i], br_equal);
      end else begin
          $display("Testcase #%2d PASSED: | rs1_i = %h | rs2_i = %h | br_unsign = %b | br_less_expected = %h | br_less_got = %h | br_equal_expected = %b | br_equal_got = %b",
                    i, rs1, rs2, br_unsign, less_tc[i], br_less, equal_tc[i], br_equal);
      end
    end
    $finish;
  end
endmodule


