module t;
    logic [1:0] r;
    initial begin
        force r = 1'b1;
        force r = 1'b0;
        release r;
        $display(r);
    end
endmodule