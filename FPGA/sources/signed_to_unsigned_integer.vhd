----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.04.2025 10:47:22
-- Design Name: 
-- Module Name: signed_to_absolute_integer - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity signed_to_absolute_integer is
    generic( n_bits : positive := 4 -- Bus width
    );
    Port ( clk, en : in STD_LOGIC;
           val : in STD_LOGIC_VECTOR (n_bits-1 downto 0);
           a_val : out STD_LOGIC_VECTOR (n_bits-2 downto 0);
           o_sign: out STD_LOGIC;
           rst : in STD_LOGIC);
end signed_to_absolute_integer;

architecture Behavioral of signed_to_absolute_integer is
    signal a_val_sig : std_logic_vector (n_bits-2 downto 0) := (others => '0') ;
    signal o_sign_sig : std_logic := '0';

begin
    process(clk, rst)
    begin
        if (rst = '1') then
            a_val_sig <= (others => '0');
            o_sign_sig <= '0';
        else
            if (rising_edge(clk)) then
                if (en = '1') then 
                    if (val(n_bits-1) = '1') then -- Checks sign and update val
                        a_val_sig <= STD_LOGIC_VECTOR(unsigned(not val(n_bits-2 downto 0)) + 1);
                    else
                        a_val_sig <= val(n_bits-2 downto 0);
                    end if;
                    o_sign_sig <= val(n_bits-1); -- updates sign
                end if;
            end if;
        end if;
    end process;
    o_sign <= o_sign_sig;
    a_val <= a_val_sig;
end Behavioral;
