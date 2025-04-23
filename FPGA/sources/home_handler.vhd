----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.04.2025 10:33:51
-- Design Name: 
-- Module Name: home_handler - Behavioral
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

entity home_handler is
    Port ( clk : in STD_LOGIC;
           en : in STD_LOGIC;
           home : in STD_LOGIC;
           rst : in STD_LOGIC;
           motor1 : out STD_LOGIC_VECTOR (1 downto 0);
           motor2 : out STD_LOGIC_VECTOR (1 downto 0));
end home_handler;

architecture Behavioral of home_handler is
    type STATE_TYPE is (START, MOTOR1_HOME, MOTOR2_HOME);
    signal current_state, next_state    : STATE_TYPE;
    
    signal counter  : INTEGER range 0 to 5_000_000 := 0; --adjust max based on clock speed
    signal motor1_sig, motor2_sig : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
    
begin
    current_state_logic : process (clk, rst)
    begin
        if (rst = '1') then -- asyncs reset to stop the motors where they are
            current_state <= START;
        elsif (rising_edge(clk) and en = '1') then
            current_state <= next_state;
        end if;
    end process;
-------------------------------------------------------------------------------  
    next_state_logic : process(current_state, home)
    begin
        case current_state is
            when START =>
                if (home = '1') then
                    next_state <= MOTOR1_HOME;
                else
                    next_state <= START;
                end if;
                
            when MOTOR1_HOME =>
                if (home = '1') then
                    next_state <= MOTOR2_HOME;
                else
                    next_state <= START;
                end if;
                    
            when MOTOR2_HOME =>
                if (home = '1') then
                    next_state <= START;
                else
                    next_state <= START;
                end if;
                
            when others =>
                next_state <= START;
        end case;
    end process next_state_logic;
 ------------------------------------------------------------------------------------------------   
    output_logic : process(clk, rst)
    begin 
        if (rst = '1') then
            -- logic for reseting
            motor1_sig <= (others => '0');
            motor2_sig <= (others => '0');
        elsif rising_edge(clk) then
            if current_state = MOTOR1_HOME then
                --Logic to home motor 1
                motor1_sig <= "01"; -- Forward
                
                if (counter < 5000000) then
                    counter <= counter + 1;
                else 
                    counter <= 0;
                    motor1_sig <= not(motor1_sig);
                end if;
                
            elsif current_state = MOTOR2_home then
                --Logic to home motor 2
                motor2_sig <= "01"; -- Forward
            else
                -- Logic for start state
            motor1_sig <= (others => '0');
            motor2_sig <= (others => '0');
            end if;
        end if;
    end process;
            
end Behavioral;
