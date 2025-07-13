module five_state_mealy (
    data_in,
    data_out,
    rst,
    clk
);
  input [1:0] data_in;  //2 bit data
  input rst, clk;
  output data_out;
  reg data_out;
  reg [2:0] current_state, next_state;  // có 5 state nên cần 3 bit để biểu diễn

  parameter st0 = 3'd0, st1 = 3'd1, st2 = 3'd2, st3 = 3'd3, st4 = 3'd4;
  // st0 = 000, st1 = 001, st2 = 010, st3 = 011, st4 = 100
  //state ban dau
  always @(posedge clk or negedge rst) begin
    if (~rst) current_state = st0;
    else current_state = next_state;
  end
  //Combinational block
  always @(current_state or data_in) begin  // depenend on current state or input 
    case (current_state)
      st0:
      case (data_in)
        2'b00: next_state = st0;
        2'b01: next_state = st4;
        2'b10: next_state = st1;
        2'b11: next_state = st2;
      endcase
      st1:
      case (data_in)
        2'b00:   next_state = st0;
        2'b10:   next_state = st2;
        default: next_state = st1;
      endcase
      st2:
      case (data_in)
        2'b0x: next_state = st1;
        2'b1x: next_state = st3;
      endcase
      st3:
      case (data_in)
        2'bx1:   next_state = st4;
        default: next_state = st3;
      endcase
      st3:
      case (data_in)
        2'b11:   next_state = st4;
        default: next_state = st0;
      endcase
      default: next_state = st0;
    endcase
  end
  //output logic
  always @(data_in or current_state) begin  //output depends on current state and input
    case (current_state)
      st0:
      case (data_in)
        2'b00:   data_out = 1'b0;
        default: data_out = 1'b1;
      endcase
      st1: data_out = 1'b0;
      st2:
      case (data_in)
        2'b0x:   data_out = 1'b0;
        default: data_out = 1'b1;
      endcase
      st3: data_out = 1'b1;
      st4:
      case (data_in)
        2'b1x:   data_out = 1'b1;
        default: data_out = 1'b0;
      endcase
      default: data_out = 1'b0;
    endcase
  end

endmodule
