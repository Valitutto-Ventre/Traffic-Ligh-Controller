----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:30:46 02/06/2018 
-- Design Name: 
-- Module Name:    Controller - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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


entity Controller is
    Port ( clk, reset, sensor : in  STD_LOGIC;
           sm1 : out  STD_LOGIC_VECTOR (1 downto 0);
           sm2 : out  STD_LOGIC);
end Controller;

architecture Behavioral of Controller is

  type stato is (s0,s1,s2);  
  signal current_state, next_state : stato;
 
  signal event_up : std_logic;
  constant UNIT_TIME: integer := 5;  
  signal count , next_count : integer range 1 to 10*UNIT_TIME;


  begin

    synchronous : process(clk,reset)
    begin
	 
        if(reset = '1') then
          current_state <= s0;
			 count <= 1;
        elsif(rising_edge(clk)) then
          count <= next_count;
          current_state <= next_state;
        end if;
		  
    end process;


    state_transiton : process (current_state, sensor, event_up)
    begin
	 
      case (current_state) is
		
        when s0 => 
				if (sensor = '1') then
              next_state <= s1;    
            else
              next_state <= current_state; 
            end if;

        when s1 => 
				if (event_up = '1') then
              next_state <= s2;
            else
              next_state <= current_state;
            end if;
        
        when s2 => 
				if (event_up = '1' and sensor = '0') then 
              next_state <= s0;
            else                          
              next_state <= current_state;
            end if;
            
       end case;
     end process;

     output : process(current_state) -- Processo di Output, 
     begin									 -- si attiva soltantanto se varia lo stato corrente
	  
       case (current_state) is
		 
         when s0 => 	   	-- Green State
            sm1 <= "00";
            sm2 <= '1';
				
         when s1 =>			-- Yellow State
            sm1  <= "01";
            sm2 <= '1';
				
         when s2 =>			-- Red State
            sm1  <= "11";
            sm2 <= '0';
				
       end case;
		 
     end process;
    
    timer : process(current_state , count)
    begin
	 
	 case current_state is 
		
		when s1 => 
				if (count = 3*UNIT_TIME) then
					next_count <= 1;
					event_up <= '1';
				else
					next_count<= count+1;
					event_up <= '0';		
				end if;
		
			when s2 => 
				if (count = 10*UNIT_TIME) then
					next_count <= 1;
					event_up <= '1';
				else
					next_count <= count+1;
					event_up <= '0';		
				end if;

			when others => 
				next_count <= 1;
				event_up <= '0';
				
		end case;
		
    end process;

end Behavioral;