module top;
    wire [1:0] out /* verilator forceable */;
    initial begin
        force out = 0;
        $display(out);
    end
endmodule