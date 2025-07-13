module ff_rst_prst (
    data,
    clk,
    rst,
    prst,
    q
);
  input data, clk, rst, prst;
  output q;
  reg q;
  always @(posedge clk or negedge rst or posedge prst)
    if (~rst) q = 1'b0;
    else if (~prst) q = 1'b1;
    else q = data;
endmodule
