module ff_rst_en (
    data,
    clk,
    rst,
    en,
    q
);
  input data, clk, rst, en;
  output q;
  reg q;
  always @(posedge clk or negedge rst)
    if (~rst) q = 1'b0;
    else if (en) q = data;
endmodule
