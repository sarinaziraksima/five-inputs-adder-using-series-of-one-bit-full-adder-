--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:54:01 05/22/2024
-- Design Name:   
-- Module Name:   C:/Users/Apple/Desktop/ise/mod/tb.vhd
-- Project Name:  mod
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mod_m_counter
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
USE ieee.numeric_std.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top

    Port ( a : in STD_LOGIC_VECTOR (0 downto 0);
           b : in STD_LOGIC_VECTOR (13 downto 0);
           c : in STD_LOGIC_VECTOR (14 downto 0);
           d : in STD_LOGIC_VECTOR (15 downto 0);
           e : in STD_LOGIC_VECTOR (16 downto 0);
           co : out STD_LOGIC_VECTOR (0 downto 0);
           s : out STD_LOGIC_VECTOR (16 downto 0));
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(0 downto 0) := "0";
   signal b : std_logic_vector(13 downto 0) := "00000000000000";
   signal c : std_logic_vector(14 downto 0) := "000000000000000";
   signal d : std_logic_vector(15 downto 0) := "0000000000000000";
   signal e : std_logic_vector(16 downto 0) := "00000000000000000";

 	--Outputs
   signal s : std_logic_vector(16 downto 0);
   signal co : std_logic_vector(0 downto 0);


 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut1: top Port map ( a => a,
           b => b,
           c => c,
           d => d,
           e => e,
           co => co,
           s => s);


   

   


   -- Stimulus process
   stim_proc: process
   begin	
   	
      -- hold reset state for 100 ns.
      
      
      wait for 10 ns;
      a <= "0";	
      b <= "00000000001111";
      c <= "000000111100000";
      d <= "0011110000000000";
      e <= "11000000000000000";	
      
      wait for 10 ns;
      a <= "0";	
      b <= "01000111100100";
      c <= "000110010101000";
      d <= "1000010101100100";
      e <= "01011000000000000";	
      
      wait for 10 ns;
      a <= "0";	
      b <= "11111111111111";
      c <= "111111111111111";
      d <= "1111111111111111";
      e <= "11111111111111111";	
      
      wait for 10 ns;
      a <= "1";	
      b <= "00000000001111";
      c <= "000000111100000";
      d <= "0011110000000000";
      e <= "11000000000000000";	
      
      wait for 10 ns;
      a <= "1";	
      b <= "01000111100100";
      c <= "000110010101000";
      d <= "1000010101100100";
      e <= "01011000000000000";	
      wait for 10 ns;
      a <= "1";	
      b <= "11111111111111";
      c <= "111111111111111";
      d <= "1111111111111111";
      e <= "11111111111111111";	
      
      wait for 10 ns;
      a <= "1";	
      b <= "00100000000000";
      c <= "000000100000000";
      d <= "0000000001000000";
      e <= "00000000000001000";	
      
      
      
      -- insert stimulus here 

      wait;
   end process;

END;
