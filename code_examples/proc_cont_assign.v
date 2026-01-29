module top (input a, input b, output reg out);
    initial begin
        out = 0;
        assign out = a & b;
        out = 1; // nie ma efektu
        $display("out = %b", out);
    end
endmodule

module tb();
    reg a;
    reg b;
    wire out;

    top uut (
        .a(a),
        .b(b),
        .out(out)
    );

    initial begin
        $monitor("At time %t: a=%b, b=%b => out=%b", $time, a, b, out);
        a = 0; b = 0;
        #10 a = 0; b = 1;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
        #10 $finish;
    end
endmodule