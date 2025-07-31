module full_adder_32bit_tb;

reg  [31:0] a , b;
reg         cin;
wire [31:0] sum;
wire c_o;

reg [31:0] a_tc [1:10];
reg [31:0] b_tc [1:10];
reg        c_tc [1:10];
reg [31:0] sum_tc [1:10];
reg        cout_tc [1:10];

// Instantiate DUT
full_adder_32bit uut (.A_i(a), .Y_i(b), .C_i(cin), .Sum_o(sum), .c_o(cout));

integer i;

initial begin
    a_tc[1] = 32'b0;          b_tc[1] = 32'b0;          c_tc[1] = 1'b0; sum_tc[1] = 32'b0;          cout_tc[1] = 1'b0;
    a_tc[2] = 32'h00000001;   b_tc[2] = 32'h00000001;   c_tc[2] = 1'b0; sum_tc[2] = 32'h00000002;   cout_tc[2] = 1'b0;
    a_tc[3] = 32'h0000000F;   b_tc[3] = 32'h00000001;   c_tc[3] = 1'b0; sum_tc[3] = 32'h00000010;   cout_tc[3] = 1'b0;
    a_tc[4] = 32'hFFFFFFF0;   b_tc[4] = 32'h00000010;   c_tc[4] = 1'b0; sum_tc[4] = 32'h00000000;   cout_tc[4] = 1'b1;
    a_tc[5] = 32'h7FFFFFFF;   b_tc[5] = 32'h00000001;   c_tc[5] = 1'b0; sum_tc[5] = 32'h80000000;   cout_tc[5] = 1'b1;
    a_tc[6] = 32'h80000000;   b_tc[6] = 32'hFFFFFFFF;   c_tc[6] = 1'b0; sum_tc[6] = 32'h7FFFFFFF;   cout_tc[6] = 1'b1;
    a_tc[7] = 32'hAAAAAAAA;   b_tc[7] = 32'h55555555;   c_tc[7] = 1'b0; sum_tc[7] = 32'hFFFFFFFF;   cout_tc[7] = 1'b0;
    a_tc[8] = 32'h12345678;   b_tc[8] = 32'h12345678;   c_tc[8] = 1'b0; sum_tc[8] = 32'h2468ACF0;   cout_tc[8] = 1'b0;
    a_tc[9] = 32'hFFFFFFFE;   b_tc[9] = 32'h00000002;   c_tc[9] = 1'b1; sum_tc[9] = 32'h00000001;   cout_tc[9] = 1'b1;
    a_tc[10] = 32'hFFFFFFFF;  b_tc[10] = 32'h00000001;  c_tc[10] = 1'b0; sum_tc[10] = 32'h00000000; cout_tc[10] = 1'b0; // ⚠️ cố ý sai

    for (i = 1; i <= 10; i = i + 1) begin
        a = a_tc[i]; b = b_tc[i]; cin = c_tc[i];
        #10;
        if (sum !== sum_tc[i] || cout !== cout_tc[i]) begin
            $display("Testcase #%2d FAILED: | a = %h | b = %h | c_in = %b | sum_expected = %h | sum_got = %h | cout_expected = %b | cout_got = %b",
                      i, a, b, cin, sum_tc[i], sum, cout_tc[i], cout);
        end else begin
            $display("Testcase #%2d PASSED: | a = %h | b = %h | c_in = %b | sum_expected = %h | sum_got = %h | cout_expected = %b | cout_got = %b",
                      i, a, b, cin, sum_tc[i], sum, cout_tc[i], cout);
        end
    end

    $finish;
end

endmodule
