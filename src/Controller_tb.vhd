--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:48:54 02/06/2018
-- Design Name:   
-- Module Name:   C:/Users/martu/Workspace/ISE/EsameOK/Controller_tb.vhd
-- Project Name:  EsameOK
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Controller
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Controller_tb IS
END Controller_tb;
 
ARCHITECTURE behavior OF Controller_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Controller
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         sensor : IN  std_logic;
         sm1 : OUT  std_logic_vector(1 downto 0);
         sm2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal sensor : std_logic := '0';

 	--Outputs
   signal sm1 : std_logic_vector(1 downto 0);
   signal sm2 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Controller PORT MAP (
          clk => clk,
          reset => reset,
          sensor => sensor,
          sm1 => sm1,
          sm2 => sm2
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      -- insert stimulus here 
		
		reset <= '1';
      wait for clk_period*3;

		reset <= '0';
      wait for clk_period*3;
		
		sensor <= '1';
      wait for clk_period*3;
		
		sensor <= '0';
		
      wait;
   end process;

END;
