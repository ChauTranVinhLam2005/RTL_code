module mux_2to1_tb;
  // Testbench signals
  reg  [31:0] d0, d1;
  reg         S;
  wire [31:0] Y;
  // Instantiate DUT
  mux_2to1 DUT (
    .d0(d0),
    .d1(d1),
    .S(S),
    .Y(Y)
  );
  initial begin
    $display("Starting mux_2to1 32-bit test...");
    // Test case 1: S = 0 → output = d0
    d0 = 32'hAAAAAAAA;
    d1 = 32'h55555555;
    S  = 0;
    #10;
    $display("S=0: Y = %h (Expected: %h)", Y, d0);
    if (Y !== d0) $display("FAILED");

    // Test case 2: S = 1 → output = d1
    S = 1;
    #10;
    $display("S=1: Y = %h (Expected: %h)", Y, d1);
    if (Y !== d1) $display("FAILED");

    // Test case 3: Random inputs
    d0 = 32'h12345678;
    d1 = 32'h87654321;
    S  = 0;
    #10;
    $display("S=0: Y = %h (Expected: %h)", Y, d0);
    if (Y !== d0) $display("FAILED");

    S = 1;
    #10;
    $display("S=1: Y = %h (Expected: %h)", Y, d1);
    if (Y !== d1) $display("FAILED");

    $display("Test completed.");
    $finish;
  end

endmodule
