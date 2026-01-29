module top (input a, input b, output reg out);
      always @(*) begin
        out = a;
        out = out & b;
      end
    endmodule