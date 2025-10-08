--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Comparator4bit_timesim.vhd
-- /___/   /\     Timestamp: Wed Oct 08 13:33:12 2025
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf Comparator4bit.pcf -rpw 100 -tpw 0 -ar Structure -tm Comparator4bit -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim Comparator4bit.ncd Comparator4bit_timesim.vhd 
-- Device	: 3s400pq208-4 (PRODUCTION 1.39 2013-10-13)
-- Input file	: Comparator4bit.ncd
-- Output file	: C:\Users\Lenovo\Desktop\H_B\coprator\netgen\par\Comparator4bit_timesim.vhd
-- # of Entities	: 1
-- Design Name	: Comparator4bit
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity Comparator4bit is
  port (
    A_lt_B : out STD_LOGIC; 
    A_eq_B : out STD_LOGIC; 
    A_gt_B : out STD_LOGIC; 
    A : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end Comparator4bit;

architecture Structure of Comparator4bit is
  signal A_0_IBUF_80 : STD_LOGIC; 
  signal A_1_IBUF_81 : STD_LOGIC; 
  signal A_2_IBUF_82 : STD_LOGIC; 
  signal A_3_IBUF_83 : STD_LOGIC; 
  signal B_0_IBUF_84 : STD_LOGIC; 
  signal B_1_IBUF_85 : STD_LOGIC; 
  signal B_2_IBUF_86 : STD_LOGIC; 
  signal B_3_IBUF_87 : STD_LOGIC; 
  signal eq32_0 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal A_0_INBUF : STD_LOGIC; 
  signal A_1_INBUF : STD_LOGIC; 
  signal A_2_INBUF : STD_LOGIC; 
  signal A_3_INBUF : STD_LOGIC; 
  signal B_0_INBUF : STD_LOGIC; 
  signal B_1_INBUF : STD_LOGIC; 
  signal B_2_INBUF : STD_LOGIC; 
  signal B_3_INBUF : STD_LOGIC; 
  signal A_lt_B_O : STD_LOGIC; 
  signal A_eq_B_O : STD_LOGIC; 
  signal A_gt_B_O : STD_LOGIC; 
  signal A_lt_B_OBUF_F5MUX_190 : STD_LOGIC; 
  signal lt_or_y54 : STD_LOGIC; 
  signal A_lt_B_OBUF_BXINV_183 : STD_LOGIC; 
  signal lt_or_y541_181 : STD_LOGIC; 
  signal A_gt_B_OBUF_F5MUX_215 : STD_LOGIC; 
  signal gt_or_y54 : STD_LOGIC; 
  signal A_gt_B_OBUF_BXINV_208 : STD_LOGIC; 
  signal gt_or_y541_206 : STD_LOGIC; 
  signal gt_or_y43_238 : STD_LOGIC; 
  signal lt_or_y43_231 : STD_LOGIC; 
  signal A_eq_B_OBUF_262 : STD_LOGIC; 
  signal N3_pack_1 : STD_LOGIC; 
  signal eq32 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  A_0_IBUF : X_BUF
    generic map(
      LOC => "PAD166",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(0),
      O => A_0_INBUF
    );
  A_1_IBUF : X_BUF
    generic map(
      LOC => "PAD165",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(1),
      O => A_1_INBUF
    );
  A_2_IBUF : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(2),
      O => A_2_INBUF
    );
  A_3_IBUF : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(3),
      O => A_3_INBUF
    );
  A_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_3_INBUF,
      O => A_3_IBUF_83
    );
  B_0_IBUF : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(0),
      O => B_0_INBUF
    );
  B_1_IBUF : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(1),
      O => B_1_INBUF
    );
  B_2_IBUF : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(2),
      O => B_2_INBUF
    );
  B_3_IBUF : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(3),
      O => B_3_INBUF
    );
  A_lt_B_OBUF : X_OBUF
    generic map(
      LOC => "PAD155"
    )
    port map (
      I => A_lt_B_O,
      O => A_lt_B
    );
  A_eq_B_OBUF : X_OBUF
    generic map(
      LOC => "PAD169"
    )
    port map (
      I => A_eq_B_O,
      O => A_eq_B
    );
  A_gt_B_OBUF : X_OBUF
    generic map(
      LOC => "PAD154"
    )
    port map (
      I => A_gt_B_O,
      O => A_gt_B
    );
  lt_or_y541 : X_LUT4
    generic map(
      INIT => X"DD4D",
      LOC => "SLICE_X34Y1"
    )
    port map (
      ADR0 => A_3_IBUF_83,
      ADR1 => B_3_IBUF_87,
      ADR2 => A_2_IBUF_82,
      ADR3 => B_2_IBUF_86,
      O => lt_or_y54
    );
  A_lt_B_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X34Y1"
    )
    port map (
      IA => lt_or_y541_181,
      IB => lt_or_y54,
      SEL => A_lt_B_OBUF_BXINV_183,
      O => A_lt_B_OBUF_F5MUX_190
    );
  A_lt_B_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y1",
      PATHPULSE => 757 ps
    )
    port map (
      I => lt_or_y43_231,
      O => A_lt_B_OBUF_BXINV_183
    );
  A_gt_B_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X34Y0"
    )
    port map (
      IA => gt_or_y541_206,
      IB => gt_or_y54,
      SEL => A_gt_B_OBUF_BXINV_208,
      O => A_gt_B_OBUF_F5MUX_215
    );
  A_gt_B_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y0",
      PATHPULSE => 757 ps
    )
    port map (
      I => gt_or_y43_238,
      O => A_gt_B_OBUF_BXINV_208
    );
  A_eq_B_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y0",
      PATHPULSE => 757 ps
    )
    port map (
      I => N3_pack_1,
      O => N3
    );
  eq32_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y0",
      PATHPULSE => 757 ps
    )
    port map (
      I => eq32,
      O => eq32_0
    );
  lt_or_y542 : X_LUT4
    generic map(
      INIT => X"4D44",
      LOC => "SLICE_X34Y1"
    )
    port map (
      ADR0 => A_3_IBUF_83,
      ADR1 => B_3_IBUF_87,
      ADR2 => A_2_IBUF_82,
      ADR3 => B_2_IBUF_86,
      O => lt_or_y541_181
    );
  A_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD166",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_0_INBUF,
      O => A_0_IBUF_80
    );
  A_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD165",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_1_INBUF,
      O => A_1_IBUF_81
    );
  A_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_2_INBUF,
      O => A_2_IBUF_82
    );
  B_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_0_INBUF,
      O => B_0_IBUF_84
    );
  B_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_1_INBUF,
      O => B_1_IBUF_85
    );
  B_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_2_INBUF,
      O => B_2_IBUF_86
    );
  B_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_3_INBUF,
      O => B_3_IBUF_87
    );
  gt_or_y542 : X_LUT4
    generic map(
      INIT => X"22B2",
      LOC => "SLICE_X34Y0"
    )
    port map (
      ADR0 => A_3_IBUF_83,
      ADR1 => B_3_IBUF_87,
      ADR2 => A_2_IBUF_82,
      ADR3 => B_2_IBUF_86,
      O => gt_or_y541_206
    );
  gt_or_y541 : X_LUT4
    generic map(
      INIT => X"B2BB",
      LOC => "SLICE_X34Y0"
    )
    port map (
      ADR0 => A_3_IBUF_83,
      ADR1 => B_3_IBUF_87,
      ADR2 => A_2_IBUF_82,
      ADR3 => B_2_IBUF_86,
      O => gt_or_y54
    );
  lt_or_y43 : X_LUT4
    generic map(
      INIT => X"4F04",
      LOC => "SLICE_X30Y1"
    )
    port map (
      ADR0 => A_0_IBUF_80,
      ADR1 => B_0_IBUF_84,
      ADR2 => A_1_IBUF_81,
      ADR3 => B_1_IBUF_85,
      O => lt_or_y43_231
    );
  gt_or_y43 : X_LUT4
    generic map(
      INIT => X"20F2",
      LOC => "SLICE_X30Y1"
    )
    port map (
      ADR0 => A_0_IBUF_80,
      ADR1 => B_0_IBUF_84,
      ADR2 => A_1_IBUF_81,
      ADR3 => B_1_IBUF_85,
      O => gt_or_y43_238
    );
  eq_all_y_SW0 : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X30Y0"
    )
    port map (
      ADR0 => A_0_IBUF_80,
      ADR1 => B_0_IBUF_84,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N3_pack_1
    );
  eq_all_y : X_LUT4
    generic map(
      INIT => X"8200",
      LOC => "SLICE_X30Y0"
    )
    port map (
      ADR0 => eq32_0,
      ADR1 => B_1_IBUF_85,
      ADR2 => A_1_IBUF_81,
      ADR3 => N3,
      O => A_eq_B_OBUF_262
    );
  eq32_and_y1 : X_LUT4
    generic map(
      INIT => X"9009",
      LOC => "SLICE_X32Y0"
    )
    port map (
      ADR0 => A_3_IBUF_83,
      ADR1 => B_3_IBUF_87,
      ADR2 => A_2_IBUF_82,
      ADR3 => B_2_IBUF_86,
      O => eq32
    );
  A_lt_B_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD155",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_lt_B_OBUF_F5MUX_190,
      O => A_lt_B_O
    );
  A_eq_B_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_eq_B_OBUF_262,
      O => A_eq_B_O
    );
  A_gt_B_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_gt_B_OBUF_F5MUX_215,
      O => A_gt_B_O
    );
  NlwBlock_Comparator4bit_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

