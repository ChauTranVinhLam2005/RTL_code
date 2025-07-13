module ff_prst_en (
    data,
    clk,
    prst,
    en,
    q
);
  input data, clk, prst, en;
  output q;
  reg q;
  always @(posedge clk or negedge prst)
    if (~prst) q = 1'b1;
    else if (en) q = data;
endmodule
