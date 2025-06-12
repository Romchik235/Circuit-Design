
module test_7r_sum;
    wire C1, C2;
    wire [6:0] Ain, Bin;
    reg  [6:0] Ain_r, Bin_r;
    reg        Ci_r;
    wire [6:0] res_my, res_ref;

    sum_7r     my_block  (Ain, Bin, Ci_r, res_my, C1);
    ref_7r_sum ref_block (Ain, Bin, Ci_r, res_ref, C2);

    initial begin
        $display("\tTime\tAin\tBin\tCi\tres_my\tC1\tres_ref\tC2");
        $monitor("%t\t%b\t%b\t%b\t%b\t%b\t%b\t%b",
                 $time, Ain, Bin, Ci_r, res_my, C1, res_ref, C2);
        #500 $finish;
    end

    initial begin
        Ain_r = 7'd5;
        #50 Ain_r = 7'd10;
        #50 Ain_r = 7'd20;
        #50 Ain_r = 7'd33;
        #50 Ain_r = 7'd15;
    end

    initial begin
        Bin_r = 7'd3;
        #100 Bin_r = 7'd12;
        #100 Bin_r = 7'd20;
    end

    initial begin
        Ci_r = 1'b0;
        #200 Ci_r = 1'b1;
    end

    assign Ain = Ain_r;
    assign Bin = Bin_r;

endmodule
