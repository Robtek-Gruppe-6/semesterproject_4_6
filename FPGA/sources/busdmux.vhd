library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity busdmux is
    generic (
        BUS_WIDTH : integer := 8
    );
    port (
        data_in   : in  std_logic_vector(BUS_WIDTH - 1 downto 0);
        sel       : in  std_logic_vector(0 downto 0);
        data_out_1, data_out_2 : out STD_LOGIC_VECTOR(BUS_WIDTH - 1 downto 0) := (others => '0')
    );
end entity;

architecture Behavioral of busdmux is
begin
    process(data_in, sel)
        begin
            if(sel = "1") then
                data_out_2 <= data_in;
            else
                data_out_1 <= data_in;
            end if;
    end process;
end architecture;
