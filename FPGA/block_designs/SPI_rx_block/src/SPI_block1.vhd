library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SPI_block1 is
    Port ( clk : in STD_LOGIC;
           data_to_read : in STD_LOGIC;
           en : in STD_LOGIC;
           received_data : out STD_LOGIC_VECTOR (7 downto 0) := (others => '0')
         );
end SPI_block1;

architecture Behavioral of SPI_block1 is
    signal shift_reg : STD_LOGIC_VECTOR (7 downto 0) := (others => '0'); -- 8-bit shift register
    signal bit_count : INTEGER range 0 to 8 := 0; -- Counter for 8 bits
    signal temp_data : STD_LOGIC_VECTOR (7 downto 0) := (others => '0'); -- Temporary storage
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if en = '1' then
                -- Shift left and insert new bit at LSB
                shift_reg(7 downto 1) <= shift_reg(6 downto 0);
                shift_reg(0) <= data_to_read;
                
                -- Increment bit counter
                bit_count <= bit_count + 1;

                -- When 8 bits are received, store output and reset counter
                if bit_count = 7 then  -- 7 because counting starts at 0
                    -- Only update received_data every 8 cycles
                    received_data <= shift_reg;
                    bit_count <= 0;  -- Reset counter
                end if;
            end if;
        end if;
    end process;
    end Behavioral;
