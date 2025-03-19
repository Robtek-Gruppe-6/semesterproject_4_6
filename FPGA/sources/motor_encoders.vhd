----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.03.2025 10:52:38
-- Design Name: 
-- Module Name: motor_encoders - Behavioral
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

entity motor_encoders is
    generic (
           cpu_freq : integer := 100_000_000 -- 125 MHz CPU frequency
    );
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           clk : in STD_LOGIC;
           vel : out STD_LOGIC_VECTOR(15 downto 0) -- 16 bits wide. Degress per second in pulses.
           );
end motor_encoders;

architecture Behavioral of motor_encoders is

    signal count_clk : unsigned(31 downto 0) := (others => '0'); -- Max count is 35 seconds
    signal last_count: unsigned(31 downto 0) := (others => '0'); -- Last count holder
    signal velocity  : unsigned(14 downto 0) := (others => '0'); -- Fixed point velocity (Q11.4 direction 11 bit integer and 4 bit fraction)
    signal dir : STD_LOGIC := '0';
-- Encoder processing
begin
    process(a, b)
    begin
        if(a = '1') then -- Checks if a is set and on the rising_edge on b it flips the direction
            if(rising_edge(b)) then
                dir <= '1';
                last_count <= count_clk;
                count_clk <= (others => '0'); -- Resets clock counter
            end if;
        end if;
        if(b = '1') then -- Checks if b is set and on the rising_edge on a it flips the direction.
            if(rising_edge(a)) then
                dir <= '0';
                last_count <= count_clk;
                count_clk <= (others => '0'); -- Resets clock counter
            end if;
        end if;
    end process;
    
-- Counter clock
    process(clk)
    begin
        if(rising_edge(clk)) then
            count_clk <= count_clk +1;
            
        end if;
    end process;
    
-- Velocity calculation
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(last_count /= 0) then
                velocity <= resize((to_unsigned(cpu_freq, 32) * 32) / last_count, 16); -- Resize to remove unwanted and save value in 16 bits
            elsif(count_clk >= (cpu_freq*5)) then 
                velocity <= (others => '1'); -- If no signal within 5 seconds set velocity to more than possible to show there is an error. IT IS AN ERROR CODE
            else
                velocity <= (others => '0'); -- Handles edgecase
            end if;
        end if;
    end process;
    
-- Outputs
    vel <= dir & std_logic_vector(velocity);
    
end Behavioral;
