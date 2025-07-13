module d_latch_en(data, en, y);
    input data, en;
    output y;
    reg y;
always @(data or en)
    if(en)
        y = data;
endmodule