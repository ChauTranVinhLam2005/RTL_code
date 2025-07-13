module falling_edge_ff (
    data,
    clk,
    q
);
  input data, clk;
  output q;
  reg q;
  always @(negedge clk) q = data;
endmodule
