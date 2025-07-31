module mux_32to1_tb;

  // Inputs
  reg  [31:0] d [0:31];     // 32 inputs, mỗi input 32-bit
  reg  [4:0]  s;            // select
  wire [31:0] y;            // output

  // Tạo kết nối từ mảng d đến module
  mux_32to1 uut (
    .d0(d[0]),  .d1(d[1]),  .d2(d[2]),  .d3(d[3]),
    .d4(d[4]),  .d5(d[5]),  .d6(d[6]),  .d7(d[7]),
    .d8(d[8]),  .d9(d[9]),  .d10(d[10]),.d11(d[11]),
    .d12(d[12]),.d13(d[13]),.d14(d[14]),.d15(d[15]),
    .d16(d[16]),.d17(d[17]),.d18(d[18]),.d19(d[19]),
    .d20(d[20]),.d21(d[21]),.d22(d[22]),.d23(d[23]),
    .d24(d[24]),.d25(d[25]),.d26(d[26]),.d27(d[27]),
    .d28(d[28]),.d29(d[29]),.d30(d[30]),.d31(d[31]),
    .s(s),
    .y_o(y)
  );

  integer i;

  initial begin
    // Gán mỗi đầu vào một giá trị duy nhất để dễ kiểm tra
    for (i = 0; i < 32; i = i + 1) begin
      d[i] = 32'hA0000000 + i;
    end

    // Test tất cả 32 lựa chọn
    for (i = 0; i < 32; i = i + 1) begin
      s = i;
      #5; // đợi một lúc để ổn định
      $display("Select = %0d, Expected = %h, Got = %h %s", 
                s, d[i], y, (y == d[i]) ? "PASSED" : "FAILED");
    end

    $finish;
  end

endmodule
