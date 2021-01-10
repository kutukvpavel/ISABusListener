library verilog;
use verilog.vl_types.all;
entity DiamantISAListener is
    port(
        nCS             : in     vl_logic_vector(3 downto 0);
        SA              : in     vl_logic_vector(19 downto 0);
        SD              : in     vl_logic_vector(15 downto 0);
        SBHE            : in     vl_logic;
        AEN             : in     vl_logic;
        nIOW            : in     vl_logic;
        nIOR            : in     vl_logic;
        nMEMW           : in     vl_logic;
        nMEMR           : in     vl_logic;
        nMEMCS16        : in     vl_logic;
        nIOCS16         : in     vl_logic;
        BALE            : in     vl_logic;
        ReadClock       : in     vl_logic;
        Reset           : in     vl_logic;
        Clock50MHz      : in     vl_logic;
        DataOut         : out    vl_logic_vector(25 downto 0);
        Ready           : out    vl_logic
    );
end DiamantISAListener;
