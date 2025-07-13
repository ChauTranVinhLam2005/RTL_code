module rising_edge_ff (
    data,
    clk,
    q
);
  input data, clk;
  output q;
  reg q;
  always @(posedge clk) q = data;
endmodule
