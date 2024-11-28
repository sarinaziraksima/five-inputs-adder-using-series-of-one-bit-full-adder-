----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/30/2024 07:35:26 AM
-- Design Name: 
-- Module Name: top - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
  Port (a : in STD_LOGIC_VECTOR (0 downto 0);
           b : in STD_LOGIC_VECTOR (13 downto 0);
           c : in STD_LOGIC_VECTOR (14 downto 0);
           d : in STD_LOGIC_VECTOR (15 downto 0);
           e : in STD_LOGIC_VECTOR (16 downto 0);
           co : out STD_LOGIC_VECTOR (0 downto 0);
           s : out STD_LOGIC_VECTOR (16 downto 0));

end top;

architecture Behavioral of top is
COMPONENT FA_1bit

    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           ci : in STD_LOGIC;
           s : out STD_LOGIC;
           co : out STD_LOGIC);
    END COMPONENT;
signal w1: std_logic_vector(14 downto 0);
signal w2: std_logic_vector(15 downto 0);
signal w3: std_logic_vector(16 downto 0);
signal w4: std_logic_vector(17 downto 0);

signal x1: std_logic_vector(14 downto 0);
signal x2: std_logic_vector(15 downto 0);
signal x3: std_logic_vector(16 downto 0);

signal a_s: std_logic_vector(13 downto 0);

begin

--signal final: std_logic_vector(17 downto 0);

a_s <= "0000000000000" & a;

----------------------------------layer1
--1bit+14bits=x1
w1(0) <= '0';
gen: for i in 13 downto 0 generate
    FA: FA_1bit port map(w1(i), a_s(i), b(i), x1(i), w1(i+1));
end generate;

x1(14) <= w1(14);


----------------------------------layer2
--15bits+16bits=x2
w2(0) <= '0';
gen1: for i in 14 downto 0 generate
    FA1: FA_1bit port map(w2(i), x1(i), c(i), x2(i), w2(i+1));
end generate;

x2(15) <= w2(15);

----------------------------------layer3
--x1+x2=x3
w3(0) <= '0';
gen2: for i in 15 downto 0 generate
    FA2: FA_1bit port map(w3(i), x2(i), d(i), x3(i), w3(i+1));
end generate;

x3(16) <= w3(16);

----------------------------------layer4
--x3+17bits=final
w4(0) <= '0';
gen3: for i in 16 downto 0 generate
    FA3: FA_1bit port map(w4(i), x3(i), e(i), s(i), w4(i+1));
end generate;

co(0) <= w4(17);


end Behavioral;
