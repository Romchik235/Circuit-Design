`timescale 1 ns/1 ps

module main (x3, x2, x1, y1, y2);
    input x3, x2, x1;
    output y1, y2;
    wire y1, y2;
    
    assign y1 = ~(~(~x2 & x1) & ~(~x3 & x1));
    assign y2 = ~(x3 & x2) & ~(~x1);

endmodule
