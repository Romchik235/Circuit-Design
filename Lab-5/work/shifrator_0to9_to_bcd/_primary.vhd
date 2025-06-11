library verilog;
use verilog.vl_types.all;
entity shifrator_0to9_to_bcd is
    port(
        X               : in     vl_logic_vector(9 downto 0);
        Y               : out    vl_logic_vector(3 downto 0)
    );
end shifrator_0to9_to_bcd;
