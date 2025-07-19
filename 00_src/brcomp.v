module brcomp (
    input     [31:0] rs1_i, 
    input     [31:0] rs2_i, 
    input            br_unsign,// 1 if unsign, 0 if sign 
    output reg       br_less, 
    output reg       br_equal
);
  wire [31:0] sub_o;
  wire        cout;
  full_adder_32bit S1 (
    .a_i      (rs1_i),
    .b_i      (rs2_i),
    .cin_i    (1'b1),
    .result_o (sub_o),
    .cout_o   (cout)
  );
  
 
endmodule   
    
