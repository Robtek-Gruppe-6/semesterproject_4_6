library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity busdmux is
    generic (
        BUS_WIDTH : integer := 8
    );
    port (
        clk, en     : in std_logic;
        data_in     : in  std_logic_vector(BUS_WIDTH - 1 downto 0);
        sel         : in  std_logic_vector(0 downto 0);
        rst         : in std_logic;
        data_out_1, data_out_2 : out STD_LOGIC_VECTOR(BUS_WIDTH - 1 downto 0) := (others => '0')
    );
end entity;

architecture Behavioral of busdmux is
    signal data_sig_1, data_sig_2 : STD_LOGIC_VECTOR(BUS_WIDTH - 1 downto 0) := (others => '0');
begin
    process(data_in, sel)
    begin
        if rst = '1' then
            data_sig_1 <= (others => '0');
            data_sig_2 <= (others => '0');
        elsif rising_edge(clk) and en = '1' then
            data_sig_1 <= data_sig_1;
            data_sig_2 <= data_sig_2;
            if(sel = "1") then
                data_sig_2 <= data_in;
            elsif (sel = "0") then
                data_sig_1 <= data_in;
            end if;
        end if;
    end process;
    
    data_out_1 <= data_sig_1;
    data_out_2 <= data_sig_2;
end architecture;