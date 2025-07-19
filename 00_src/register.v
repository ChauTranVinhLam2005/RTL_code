module register #(
    parameter WIDTH = 4
) (
    input clk,
    input rst_n,
    input en,
    input [WIDTH - 1 : 0] D,
    output reg [WIDTH - 1 : 0] Q
);

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      Q <= 0;
    end else if (en) begin
      Q <= D;
    end else begin
      Q <= Q;
    end
  end
endmodule

