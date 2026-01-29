`define IMPURE_ONE |($random | $random)
module top;
  wire [1:0] a;
  reg [1:0] b;
  initial begin
    if (`IMPURE_ONE == 1) force a = 1;
    if (`IMPURE_ONE == 0) force a = b;
    b = 0;
    #1 $display(a);
    release a;
  end
endmodule
