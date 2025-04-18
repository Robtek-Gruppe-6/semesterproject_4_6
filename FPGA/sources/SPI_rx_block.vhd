library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SPI_rx_block is
    Port ( clk : in STD_LOGIC;
           data_to_read : in STD_LOGIC;
           en, rst : in STD_LOGIC;
           received_data : out STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
           intr : out std_logic
         );
end SPI_rx_block;

architecture Behavioral of SPI_rx_block is
    signal shift_reg : STD_LOGIC_VECTOR (11 downto 0) := (others => '0'); -- 12-bit shift register
    signal bit_count : INTEGER range 0 to 12 := 0; -- Counter for 12 bits
begin
    process(clk, rst)
    begin
        if (rst = '1') then
            received_data <= (others => '0');
        else
            if rising_edge(clk) then
                if en = '1' then
                    intr <= '0';
                    
                    -- Shift left, insert new bit at LSB
                    shift_reg(11 downto 0) <= shift_reg(10 downto 0) & data_to_read;
    
                    -- Increment bit counter
                    if bit_count <= 11 then
                        bit_count <= bit_count + 1;
                    else
                        -- Once 12 bits have been received, update output and reset counter
                        received_data <= shift_reg;
                        intr <= '1';
                        bit_count <= 1;
                    end if;
                end if;
            end if;
        end if;
    end process;
end Behavioral;
