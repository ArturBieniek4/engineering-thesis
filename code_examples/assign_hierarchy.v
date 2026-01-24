module top;
    reg a=0,b=1;
    reg [1:0] r;

    initial begin
        $monitor("%0t a=%b, b=%b, r=%b", $time, a, b, r);
        r = 1'b0;
        #1 assign r = 1'b1;
        #1 r = 1'b0; // ignorowane
        #1 deassign r;
        #1 r = 1'b0;
        #1 assign r = a;
        #1 a = 1'b1;
        #1 a = 1'b0;
        #1 force r = a+b;
        #1 a = 1'b0; b = 1'b0;
        #1 a = 1'b1; b = 1'b1;
        #1 assign r = b; // przykryte
        #1 r=2'b11; // ignorowane
        #1 release r;
        #1 b=1'b0;
        #1 $finish;
    end
endmodule