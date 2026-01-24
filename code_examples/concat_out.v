module top (
        input a,
        input b
    );
    wire [1:0] out = {a, b};
    initial $monitor("%b", out);
endmodule