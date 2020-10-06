------------------------------------------------------------------------------------------
-- HEIG-VD ///////////////////////////////////////////////////////////////////////////////
-- Haute Ecole d'Ingenerie et de Gestion du Canton de Vaud
-- School of Business and Engineering in Canton de Vaud
------------------------------------------------------------------------------------------
-- REDS Institute ////////////////////////////////////////////////////////////////////////
-- Reconfigurable Embedded Digital Systems
------------------------------------------------------------------------------------------
--
-- File                 : maxv_top.vhd
-- Author               : Gilles Curchod
-- Date                 : 28.05.2013
-- Target Devices       : Altera MAXV 5M570ZF256C5
--
-- Context              : Max_V_Board Project : Hardware bring-up
--
------------------------------------------------------------------------------------------
-- Description :
--   Top of the CPLD
------------------------------------------------------------------------------------------
-- Information :  
--   30.09.2014  EMI  Adaptation for the aff_min_max lab
--
------------------------------------------------------------------------------------------
-- Modifications :
-- Ver   Date        Engineer     Changes
-- 0.0   See header  GCD          Initial version
-- 1.0   25.09.2014  EMI          Modified to use for CSN lab 
-- 1.1   01.10.2014  GHR          Adaptation to use with the Aff_Min_Max.tcl
--                                and the board Console-USB2 to test circuit
--
------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity maxv_top is
  port(
    --| Clocks, Reset |-------------------------------------------------------------------
    Clk_Gen_i                : in    std_logic;                      -- CLK_GEN
    Clk_Main_i               : in    std_logic;                      -- CLK_MAIN
    --| Inout devices |-------------------------------------------------------------------
    Con_25p_io               : inout std_logic_vector(25 downto 1);  -- CON_25P_*
    Con_80p_io               : inout std_logic_vector(79 downto 2);  -- CON_80P_*
    Mezzanine_io             : inout std_logic_vector(20 downto 5);  -- MEZZANINE_*
    --| Input devices |-------------------------------------------------------------------
    Encoder_A_i              : in    std_logic;                      -- ENCODER_A
    Encoder_B_i              : in    std_logic;                      -- ENCODER_B
    nButton_i                : in    std_logic_vector( 8 downto 1);  -- NBUTTON_*
    nReset_i                 : in    std_logic;                      -- NRESET
    Switch_i                 : in    std_logic_vector( 7 downto 0);  -- SWITCH_*
    --| Output devices |------------------------------------------------------------------
    nLed_o                   : out   std_logic_vector( 7 downto 0);  -- NLED_*
    Led_RGB_o                : out   std_logic_vector( 2 downto 0);  -- LED_RGB_*
    nSeven_Seg_o             : out   std_logic_vector( 7 downto 0)   -- NDSP_SEG (dp, g downto a)
  );
end maxv_top;

architecture struct of maxv_top is

    constant MAX10_DESIGN_KNOWN   : std_logic_vector(1 downto 0) := "01";
    constant MAX10_DESIGN_UNKNOWN : std_logic_vector(1 downto 0) := "10";

    -- design configuration on MAX10 board : "100000" is direct parallel link design
    constant MAX10_DESIGN_CONFIG : std_logic_vector(5 downto 0) := "100000";

    --| Intermediate signals |--------------------------------------------------------------
    signal Reset_s        : std_logic;
    
    signal Con_25p_DI_s   : std_logic_vector(Con_25p_io'range);
    signal Con_25p_DO_s   : std_logic_vector(Con_25p_io'range);
    signal Con_25p_OE_s   : std_logic_vector(Con_25p_io'range);
    signal Con_80p_DI_s   : std_logic_vector(Con_80p_io'range);
    signal Con_80p_DO_s   : std_logic_vector(Con_80p_io'range);
    signal Con_80p_OE_s   : std_logic_vector(Con_80p_io'range);
    signal Mezzanine_DI_s : std_logic_vector(Mezzanine_io'range);
    signal Mezzanine_DO_s : std_logic_vector(Mezzanine_io'range);
    signal Mezzanine_OE_s : std_logic;
    signal Button_s       : std_logic_vector(nButton_i'range);
    signal Led_s          : std_logic_vector(nLed_o'range);
    signal Seven_Seg_s    : std_logic_vector(nSeven_Seg_o'range); -- order: dp, g f e d c b a
    
    signal aff_leds_s     : std_logic_vector(15 downto 0);
    signal confirm_design_s : std_logic_vector(1 downto 0);

    --| Internal signals |------------------------------------------------------------------
    signal cpt_s : unsigned(19 downto 0);
    signal blink_1hz_s : std_logic;
    signal osc_s : std_logic;

    --| Components declaration |------------------------------------------------------------

    component min_max_top is
        port( 
            com_i  : in  std_logic_vector(1 downto 0);
            max_i  : in  std_logic_vector(3 downto 0);
            min_i  : in  std_logic_vector(3 downto 0);
            osc_i  : in  std_logic;
            val_i  : in  std_logic_vector(3 downto 0);
        leds_o : out std_logic_vector(15 downto 0)
        );
    end component;
    for all : min_max_top use entity work.min_max_top(struct);
    
begin

    ----------------------------------------------------------------------------------------
    --| INPUTS PROCESSING |-----------------------------------------------------------------
    Reset_s <= not nReset_i;
    Button_s <= not nButton_i;
    
    ----------------------------------------------------------------------------------------
    --| OUTPUT PROCESSING |-----------------------------------------------------------------
    nLed_o <= not Led_s;
    nSeven_Seg_o <= not Seven_Seg_s;
    
    -----------------------------------------------
    -- Tri-state declaration for the 25p connector

    ---- 25p EINEV 287 console interface:
    -- Tri-state declaration :
    Con_25p_OE_s( 8 downto  1) <= (others => '1'); -- outputs
    Con_25p_OE_s(16 downto  9) <= (others => '0'); -- inputs
    Con_25p_OE_s(24 downto 17) <= (others => '1'); -- outputs
    Con_25p_OE_s(25) <= '0'; -- input
    -- In/out pin map :
    -- Con_25p_DO_s( 8 downto  1) : LED (L7 downto L0)
    -- Con_25p_DI_s(16 downto  9) : Switch (S7 downto S0)
    -- Con_25p_DO_s(20 downto 17) : Hex0 (LSB) (D3 to D0)
    -- Con_25p_DO_s(24 downto 21) : Hex1 (MSB) (D3 to D0)
    -- Con_25p_DI_s(25)           : Clk

    tri_state_25p_loop: for I in Con_25p_io'right to Con_25p_io'left generate
        Con_25p_io(I) <= Con_25p_DO_s(I) when Con_25p_OE_s(I) = '1' else 'Z';
    end generate;

    Con_25p_DI_s <= to_X01(Con_25p_io);
    -----------------------------------------------
    -- Tri-state declaration for the 80p connector
    Con_80p_OE_s(3  downto  2) <= (others => '0'); -- used as inputs
    Con_80p_OE_s(12 downto  4) <= (others => '1') when confirm_design_s = MAX10_DESIGN_KNOWN else (others => '0'); -- outputs
    Con_80p_OE_s(29 downto 13) <= (others => '0'); -- used as inputs
    Con_80p_OE_s(43 downto 31) <= (others => '0'); -- used as inputs
    Con_80p_OE_s(71 downto 44) <= (others => '1') when confirm_design_s = MAX10_DESIGN_KNOWN else (others => '0'); -- outputs
    -- MAX10 leds confirm
    Con_80p_OE_s(73 downto 72) <= (others => '0'); -- used as inputs
    -- MAX10 leds config pin
    Con_80p_OE_s(79 downto 74) <= (others => '1');
    
    -- MAX10 leds config
    Con_80p_DO_s(79 downto 74) <= MAX10_DESIGN_CONFIG;
    confirm_design_s <= Con_80p_DI_s(73 downto 72);

    tri_state_loop: for I in Con_80p_io'right to Con_80p_io'left generate
        Con_80p_io(I)   <= Con_80p_DO_s(I) when Con_80p_OE_s(I) = '1' else
                           'Z';
    end generate;

    Con_80p_DI_s      <= to_X01(Con_80p_io);
    
    Con_80p_DO_s(8  downto  5) <= "0010";  -- selects lines of leds to control
    Con_80p_DO_s(71 downto 56) <= x"0000"; -- leds 16 to 31 are not used
    Con_80p_DO_s(55 downto 44) <= aff_leds_s(15 downto 4);
    Con_80p_DO_s(12 downto  9) <= aff_leds_s(3  downto 0);
    Con_80p_DO_s(4)            <= '1'; -- write enable

    ----------------------------------------------------------------------------------------
    --| Unused output allocation |-----------------------------------------------------------------
    Led_RGB_o <= (others => '0');
    Seven_Seg_s(Seven_Seg_s'high-1 downto 0) <= (others => '0');
    Seven_Seg_s(Seven_Seg_s'high) <= blink_1hz_s; -- decimal point blink at 1Hz
    Led_s <= (others => '0');
    
    ----------------------------------------------------------------------------------------
    --| Components intanciation |-----------------------------------------------------------
    U1: min_max_top 
        port map (
            min_i  => Switch_i(3 downto  0),
            max_i  => Switch_i(7 downto 4),
            val_i  => Con_25p_DI_s(12 downto 9),
            com_i  => Con_25p_DI_s(16 downto 15),
            osc_i  => osc_s,  -- internaly generated
            leds_o => aff_leds_s
    );

    ----------------------------------------------------------------------------------------
    --| Generation of blink_1hz_s and oscill_s |--------------------------------------------
    process (Clk_Main_i, Reset_s)
    begin
        if Reset_s = '1' then
            cpt_s <= (others => '0');
        elsif rising_edge(Clk_Main_i) then
            cpt_s <= cpt_s +1;
        end if;
    end process;
    
    -- signal for test 
    blink_1hz_s <= cpt_s(cpt_s'high);
    -- signal ocsl_s generation:
    --     use fonction "cpt_s(9) and cpt_s(8) and cpt_s(7)" to have a frequency from 1KHz
    ---    with duty cycle of 12% on/ 75% off (25% on: very small difference!) 
    osc_s <= cpt_s(9) and cpt_s(8) and cpt_s(7); 

  
end struct;

