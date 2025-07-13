module d_latch_en_rst(data, en, rst, q);
    input data, en, rst;
    output q;
    reg q;
always @(data or en or rst)
    if(~rst)
        q = 1'b0;
    else if(en)
        q = data;
endmodule