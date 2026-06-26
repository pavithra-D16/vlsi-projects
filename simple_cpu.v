module simple_cpu(input [3:0] a, b,input [2:0] opcode,input clk, reset,output reg[3:0] result);
  reg [3:0] reg_a,reg_b;
  //Register stage - store inputs on clock edge
  always @(posedge clk)begin
    if(reset) begin
      reg_a <= 4'b0000;
      reg_b <= 4'b0000;
    end
    else begin
      reg_a <= a;
      reg_b <= b;
    end
  end
  //ALU stage - process stored values
  always@(*) begin
    case(opcode)
      3'b000: result = reg_a + reg_b;
      3'b001: result = reg_a - reg_b;
      3'b010: result = reg_a & reg_b;
      3'b011: result = reg_a | reg_b;
      3'b100: result = ~reg_a;
      3'b101: result = reg_a ^ reg_b;
      default: result = 4'b0000;
    endcase
  end
endmodule
      