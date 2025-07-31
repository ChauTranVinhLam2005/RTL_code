module register_tb;

  reg   clk;
  reg   rst;
  reg   en;
  reg   d_i;
  wire  q_o;

  reg d_i_tc [0:4];
  reg q_o_tc [0:4];
  reg en_tc  [0:4];
  reg rst_tc [0:4];

  integer i;

  // DUT instantiation
  register uut (
    .clk(clk),
    .rst_n(rst),
    .en(en),
    .D(d_i),
    .Q(q_o)
  );

  // Clock generation
  always #5 clk = ~clk;

  initial begin
    // Initialize
    clk = 0;
    d_i = 1'b1;
    en  = 0;
    rst = 1;

   // Định nghĩa test case cho thanh ghi 4-bit
    // Format: {rst_tc, en_tc, d_i_tc, q_o_tc_expected}
    rst_tc[0] = 0; en_tc[0] = 1; d_i_tc[0] = 1'b0; q_o_tc[0] = 1'b0;
    rst_tc[1] = 1; en_tc[1] = 1; d_i_tc[1] = 1'b1; q_o_tc[1] = 1'b1;
    rst_tc[2] = 1; en_tc[2] = 0; d_i_tc[2] = 1'b0; q_o_tc[2] = 1'b1;
    rst_tc[3] = 1; en_tc[3] = 1; d_i_tc[3] = 1'b0; q_o_tc[3] = 1'b0;


    // Run all testcases
    for (i = 0; i < 4; i = i + 1) begin
      rst = rst_tc[i];
      en  = en_tc[i];
      d_i = d_i_tc[i];
      @(posedge clk); // wait for rising edge

      #1; // allow time for q_o to settle

      if (q_o !== q_o_tc[i]) begin
        $display("-------------------------------------------------------------------------------------");
        $display("Testcase #%0d FAILED: rst = %b | en = %b | d_i = %h | q_expected = %h | q_got = %h",
                 i, rst, en, d_i, q_o_tc[i], q_o);
      end else begin
        $display("-------------------------------------------------------------------------------------");
        $display("Testcase #%0d PASSED: rst = %b | en = %b | d_i = %h | q_expected = %h | q_got = %h",
                 i, rst, en, d_i, q_o_tc[i], q_o);
      end
    end
    $finish;
  end

endmodule
