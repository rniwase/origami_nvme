#### Constraints for TB-EB-SSD-LT Origami Board Rev. 0.1 ####

## System clocks
# 200 MHz LVDS
#set_property -dict {IOSTANDARD LVDS DIFF_TERM_ADV TERM_NONE PACKAGE_PIN Y25} [get_ports SYSCLK_200_N];
#set_property -dict {IOSTANDARD LVDS DIFF_TERM_ADV TERM_NONE PACKAGE_PIN W25} [get_ports SYSCLK_200_P];
#create_clock -period 5.000 [get_ports SYSCLK_200_P];
# 300 MHz LVDS
set_property -dict {IOSTANDARD LVDS DIFF_TERM_ADV TERM_NONE PACKAGE_PIN AH23} [get_ports SYSCLK300_clk_n];
set_property -dict {IOSTANDARD LVDS DIFF_TERM_ADV TERM_NONE PACKAGE_PIN AH22} [get_ports SYSCLK300_clk_p];
create_clock -period 3.333 [get_ports SYSCLK300_clk_p];

# Push Switch (SW2)
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN G15} [get_ports SW_RST];

## 4P Slide Switch (SW3)
#set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN C8} [get_ports DSW[0]];
#set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN D8} [get_ports DSW[1]];
#set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN D9} [get_ports DSW[2]];
#set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN C9} [get_ports DSW[3]];

# LEDs
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN E10} [get_ports LED[0]];  # D13
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN D10} [get_ports LED[1]];  # D15
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN B15} [get_ports LED[2]];  # D14
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN A15} [get_ports LED[3]];  # D16

## DDR4 SDRAM (for MIG)
set_property PACKAGE_PIN Y22 [get_ports DDR4_SDRAM_act_n];
set_property PACKAGE_PIN W26 [get_ports DDR4_SDRAM_adr[0]];
set_property PACKAGE_PIN U29 [get_ports DDR4_SDRAM_adr[1]];
set_property PACKAGE_PIN V29 [get_ports DDR4_SDRAM_adr[2]];
set_property PACKAGE_PIN W29 [get_ports DDR4_SDRAM_adr[3]];
set_property PACKAGE_PIN W28 [get_ports DDR4_SDRAM_adr[4]];
set_property PACKAGE_PIN Y28 [get_ports DDR4_SDRAM_adr[5]];
set_property PACKAGE_PIN U24 [get_ports DDR4_SDRAM_adr[6]];
set_property PACKAGE_PIN U25 [get_ports DDR4_SDRAM_adr[7]];
set_property PACKAGE_PIN V27 [get_ports DDR4_SDRAM_adr[8]];
set_property PACKAGE_PIN V28 [get_ports DDR4_SDRAM_adr[9]];
set_property PACKAGE_PIN V21 [get_ports DDR4_SDRAM_adr[10]];
set_property PACKAGE_PIN W21 [get_ports DDR4_SDRAM_adr[11]];
set_property PACKAGE_PIN T22 [get_ports DDR4_SDRAM_adr[12]];
set_property PACKAGE_PIN T23 [get_ports DDR4_SDRAM_adr[13]];
set_property PACKAGE_PIN V22 [get_ports DDR4_SDRAM_adr[14]];
set_property PACKAGE_PIN V23 [get_ports DDR4_SDRAM_adr[15]];
set_property PACKAGE_PIN U21 [get_ports DDR4_SDRAM_adr[16]];
set_property PACKAGE_PIN Y21 [get_ports DDR4_SDRAM_ba[0]];
set_property PACKAGE_PIN W23 [get_ports DDR4_SDRAM_ba[1]];
set_property PACKAGE_PIN U22 [get_ports DDR4_SDRAM_bg[0]];
set_property PACKAGE_PIN U27 [get_ports DDR4_SDRAM_ck_c[0]];
set_property PACKAGE_PIN U26 [get_ports DDR4_SDRAM_ck_t[0]];
set_property PACKAGE_PIN V26 [get_ports DDR4_SDRAM_cke[0]];
set_property PACKAGE_PIN W24 [get_ports DDR4_SDRAM_cs_n[0]];
set_property PACKAGE_PIN AA22 [get_ports DDR4_SDRAM_dm_n[0]];
set_property PACKAGE_PIN Y26 [get_ports DDR4_SDRAM_dm_n[1]];
set_property PACKAGE_PIN W33 [get_ports DDR4_SDRAM_dm_n[2]];
set_property PACKAGE_PIN AA32 [get_ports DDR4_SDRAM_dm_n[3]];
set_property PACKAGE_PIN AG31 [get_ports DDR4_SDRAM_dm_n[4]];
set_property PACKAGE_PIN AE27 [get_ports DDR4_SDRAM_dm_n[5]];
set_property PACKAGE_PIN AL32 [get_ports DDR4_SDRAM_dm_n[6]];
set_property PACKAGE_PIN AJ29 [get_ports DDR4_SDRAM_dm_n[7]];
set_property PACKAGE_PIN AA20 [get_ports DDR4_SDRAM_dq[0]];
set_property PACKAGE_PIN AA23 [get_ports DDR4_SDRAM_dq[1]];
set_property PACKAGE_PIN Y23 [get_ports DDR4_SDRAM_dq[2]];
set_property PACKAGE_PIN AA25 [get_ports DDR4_SDRAM_dq[3]];
set_property PACKAGE_PIN AB20 [get_ports DDR4_SDRAM_dq[4]];
set_property PACKAGE_PIN AC23 [get_ports DDR4_SDRAM_dq[5]];
set_property PACKAGE_PIN AA24 [get_ports DDR4_SDRAM_dq[6]];
set_property PACKAGE_PIN AC22 [get_ports DDR4_SDRAM_dq[7]];
set_property PACKAGE_PIN AB25 [get_ports DDR4_SDRAM_dq[8]];
set_property PACKAGE_PIN AB27 [get_ports DDR4_SDRAM_dq[9]];
set_property PACKAGE_PIN AC24 [get_ports DDR4_SDRAM_dq[10]];
set_property PACKAGE_PIN AA27 [get_ports DDR4_SDRAM_dq[11]];
set_property PACKAGE_PIN AB24 [get_ports DDR4_SDRAM_dq[12]];
set_property PACKAGE_PIN AD25 [get_ports DDR4_SDRAM_dq[13]];
set_property PACKAGE_PIN AB26 [get_ports DDR4_SDRAM_dq[14]];
set_property PACKAGE_PIN AD26 [get_ports DDR4_SDRAM_dq[15]];
set_property PACKAGE_PIN W34 [get_ports DDR4_SDRAM_dq[16]];
set_property PACKAGE_PIN W31 [get_ports DDR4_SDRAM_dq[17]];
set_property PACKAGE_PIN V34 [get_ports DDR4_SDRAM_dq[18]];
set_property PACKAGE_PIN V31 [get_ports DDR4_SDRAM_dq[19]];
set_property PACKAGE_PIN U34 [get_ports DDR4_SDRAM_dq[20]];
set_property PACKAGE_PIN W30 [get_ports DDR4_SDRAM_dq[21]];
set_property PACKAGE_PIN V33 [get_ports DDR4_SDRAM_dq[22]];
set_property PACKAGE_PIN Y30 [get_ports DDR4_SDRAM_dq[23]];
set_property PACKAGE_PIN AA34 [get_ports DDR4_SDRAM_dq[24]];
set_property PACKAGE_PIN AB34 [get_ports DDR4_SDRAM_dq[25]];
set_property PACKAGE_PIN AB31 [get_ports DDR4_SDRAM_dq[26]];
set_property PACKAGE_PIN AC34 [get_ports DDR4_SDRAM_dq[27]];
set_property PACKAGE_PIN AC33 [get_ports DDR4_SDRAM_dq[28]];
set_property PACKAGE_PIN AD34 [get_ports DDR4_SDRAM_dq[29]];
set_property PACKAGE_PIN AB30 [get_ports DDR4_SDRAM_dq[30]];
set_property PACKAGE_PIN AD33 [get_ports DDR4_SDRAM_dq[31]];
set_property PACKAGE_PIN AD31 [get_ports DDR4_SDRAM_dq[32]];
set_property PACKAGE_PIN AE32 [get_ports DDR4_SDRAM_dq[33]];
set_property PACKAGE_PIN AD30 [get_ports DDR4_SDRAM_dq[34]];
set_property PACKAGE_PIN AG34 [get_ports DDR4_SDRAM_dq[35]];
set_property PACKAGE_PIN AC32 [get_ports DDR4_SDRAM_dq[36]];
set_property PACKAGE_PIN AF33 [get_ports DDR4_SDRAM_dq[37]];
set_property PACKAGE_PIN AC31 [get_ports DDR4_SDRAM_dq[38]];
set_property PACKAGE_PIN AF32 [get_ports DDR4_SDRAM_dq[39]];
set_property PACKAGE_PIN AC28 [get_ports DDR4_SDRAM_dq[40]];
set_property PACKAGE_PIN AF30 [get_ports DDR4_SDRAM_dq[41]];
set_property PACKAGE_PIN AD28 [get_ports DDR4_SDRAM_dq[42]];
set_property PACKAGE_PIN AF28 [get_ports DDR4_SDRAM_dq[43]];
set_property PACKAGE_PIN AD29 [get_ports DDR4_SDRAM_dq[44]];
set_property PACKAGE_PIN AG30 [get_ports DDR4_SDRAM_dq[45]];
set_property PACKAGE_PIN AE30 [get_ports DDR4_SDRAM_dq[46]];
set_property PACKAGE_PIN AE28 [get_ports DDR4_SDRAM_dq[47]];
set_property PACKAGE_PIN AN33 [get_ports DDR4_SDRAM_dq[48]];
set_property PACKAGE_PIN AM32 [get_ports DDR4_SDRAM_dq[49]];
set_property PACKAGE_PIN AP33 [get_ports DDR4_SDRAM_dq[50]];
set_property PACKAGE_PIN AM34 [get_ports DDR4_SDRAM_dq[51]];
set_property PACKAGE_PIN AN32 [get_ports DDR4_SDRAM_dq[52]];
set_property PACKAGE_PIN AL34 [get_ports DDR4_SDRAM_dq[53]];
set_property PACKAGE_PIN AP31 [get_ports DDR4_SDRAM_dq[54]];
set_property PACKAGE_PIN AN31 [get_ports DDR4_SDRAM_dq[55]];
set_property PACKAGE_PIN AJ30 [get_ports DDR4_SDRAM_dq[56]];
set_property PACKAGE_PIN AH34 [get_ports DDR4_SDRAM_dq[57]];
set_property PACKAGE_PIN AJ31 [get_ports DDR4_SDRAM_dq[58]];
set_property PACKAGE_PIN AH32 [get_ports DDR4_SDRAM_dq[59]];
set_property PACKAGE_PIN AK31 [get_ports DDR4_SDRAM_dq[60]];
set_property PACKAGE_PIN AH31 [get_ports DDR4_SDRAM_dq[61]];
set_property PACKAGE_PIN AK32 [get_ports DDR4_SDRAM_dq[62]];
set_property PACKAGE_PIN AJ34 [get_ports DDR4_SDRAM_dq[63]];
set_property PACKAGE_PIN AC21 [get_ports DDR4_SDRAM_dqs_c[0]];
set_property PACKAGE_PIN AC27 [get_ports DDR4_SDRAM_dqs_c[1]];
set_property PACKAGE_PIN Y32 [get_ports DDR4_SDRAM_dqs_c[2]];
set_property PACKAGE_PIN AB29 [get_ports DDR4_SDRAM_dqs_c[3]];
set_property PACKAGE_PIN AF34 [get_ports DDR4_SDRAM_dqs_c[4]];
set_property PACKAGE_PIN AG29 [get_ports DDR4_SDRAM_dqs_c[5]];
set_property PACKAGE_PIN AP34 [get_ports DDR4_SDRAM_dqs_c[6]];
set_property PACKAGE_PIN AJ33 [get_ports DDR4_SDRAM_dqs_c[7]];
set_property PACKAGE_PIN AB21 [get_ports DDR4_SDRAM_dqs_t[0]];
set_property PACKAGE_PIN AC26 [get_ports DDR4_SDRAM_dqs_t[1]];
set_property PACKAGE_PIN Y31 [get_ports DDR4_SDRAM_dqs_t[2]];
set_property PACKAGE_PIN AA29 [get_ports DDR4_SDRAM_dqs_t[3]];
set_property PACKAGE_PIN AE33 [get_ports DDR4_SDRAM_dqs_t[4]];
set_property PACKAGE_PIN AF29 [get_ports DDR4_SDRAM_dqs_t[5]];
set_property PACKAGE_PIN AN34 [get_ports DDR4_SDRAM_dqs_t[6]];
set_property PACKAGE_PIN AH33 [get_ports DDR4_SDRAM_dqs_t[7]];
set_property PACKAGE_PIN Y27 [get_ports DDR4_SDRAM_odt[0]];
set_property PACKAGE_PIN AA33 [get_ports DDR4_SDRAM_reset_n];

## FMC-M.2 Adapter (SSD 1)
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN G12} [get_ports FMC_PCIE_perst[0]];
#set_property PACKAGE_PIN F5 [get_ports FMC_PCIE_txn[0]];
#set_property PACKAGE_PIN F6 [get_ports FMC_PCIE_txp[0]];
#set_property PACKAGE_PIN E3 [get_ports FMC_PCIE_rxn[0]];
#set_property PACKAGE_PIN E4 [get_ports FMC_PCIE_rxp[0]];
#set_property PACKAGE_PIN D5 [get_ports FMC_PCIE_txn[1]];
#set_property PACKAGE_PIN D6 [get_ports FMC_PCIE_txp[1]];
#set_property PACKAGE_PIN D1 [get_ports FMC_PCIE_rxn[1]];
#set_property PACKAGE_PIN D2 [get_ports FMC_PCIE_rxp[1]];
#set_property PACKAGE_PIN C3 [get_ports FMC_PCIE_txn[2]];
#set_property PACKAGE_PIN C4 [get_ports FMC_PCIE_txp[2]];
#set_property PACKAGE_PIN B1 [get_ports FMC_PCIE_rxn[2]];
#set_property PACKAGE_PIN B2 [get_ports FMC_PCIE_rxp[2]];
#set_property PACKAGE_PIN B5 [get_ports FMC_PCIE_txn[3]];
#set_property PACKAGE_PIN B6 [get_ports FMC_PCIE_txp[3]];
#set_property PACKAGE_PIN A3 [get_ports FMC_PCIE_rxn[3]];
#set_property PACKAGE_PIN A4 [get_ports FMC_PCIE_rxp[3]];
set_property PACKAGE_PIN H5 [get_ports B228_MGTREFCLK1_clk_n];  # 100 MHz
set_property PACKAGE_PIN H6 [get_ports B228_MGTREFCLK1_clk_p];  # 100 MHz
create_clock -period 10.000 [get_ports B228_MGTREFCLK1_clk_p];

## FireFly Port 0 (CN5/CN6)
# High-speed lanes
#set_property PACKAGE_PIN R34 [get_ports FFLY0_RX0_N];  # B127_MGTHRX0_N
#set_property PACKAGE_PIN R33 [get_ports FFLY0_RX0_P];  # B127_MGTHRX0_P
#set_property PACKAGE_PIN N34 [get_ports FFLY0_RX1_N];  # B127_MGTHRX1_N
#set_property PACKAGE_PIN N33 [get_ports FFLY0_RX1_P];  # B127_MGTHRX1_P
#set_property PACKAGE_PIN L34 [get_ports FFLY0_RX2_N];  # B127_MGTHRX2_N
#set_property PACKAGE_PIN L33 [get_ports FFLY0_RX2_P];  # B127_MGTHRX2_P
#set_property PACKAGE_PIN J34 [get_ports FFLY0_RX3_N];  # B127_MGTHRX3_N
#set_property PACKAGE_PIN J33 [get_ports FFLY0_RX3_P];  # B127_MGTHRX3_P
#set_property PACKAGE_PIN T32 [get_ports FFLY0_TX0_N];  # B127_MGTHTX0_N
#set_property PACKAGE_PIN T31 [get_ports FFLY0_TX0_P];  # B127_MGTHTX0_P
#set_property PACKAGE_PIN P32 [get_ports FFLY0_TX1_N];  # B127_MGTHTX1_N
#set_property PACKAGE_PIN P31 [get_ports FFLY0_TX1_P];  # B127_MGTHTX1_P
#set_property PACKAGE_PIN M32 [get_ports FFLY0_TX2_N];  # B127_MGTHTX2_N
#set_property PACKAGE_PIN M31 [get_ports FFLY0_TX2_P];  # B127_MGTHTX2_P
#set_property PACKAGE_PIN K32 [get_ports FFLY0_TX3_N];  # B127_MGTHTX3_N
#set_property PACKAGE_PIN K31 [get_ports FFLY0_TX3_P];  # B127_MGTHTX3_P
# Subsignals
#set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN G20} [get_ports FFLY0_SCL];
#set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN F20} [get_ports FFLY0_SDA];
#set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN H21} [get_ports FFLY0_RESETL];
#set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN G21} [get_ports FFLY0_INTL];
#set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN F22} [get_ports FFLY0_SELECTL];
#set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN G24} [get_ports FFLY0_PRESENTL];

## FireFly Port 1 (CN7/CN8)
# High-speed lanes
#set_property PACKAGE_PIN G34 [get_ports FFLY1_RX0_N];  # B128_MGTHRX0_N
#set_property PACKAGE_PIN G33 [get_ports FFLY1_RX0_P];  # B128_MGTHRX0_P
#set_property PACKAGE_PIN F32 [get_ports FFLY1_RX1_N];  # B128_MGTHRX1_N
#set_property PACKAGE_PIN F31 [get_ports FFLY1_RX1_P];  # B128_MGTHRX1_P
#set_property PACKAGE_PIN E34 [get_ports FFLY1_RX2_N];  # B128_MGTHRX2_N
#set_property PACKAGE_PIN E33 [get_ports FFLY1_RX2_P];  # B128_MGTHRX2_P
#set_property PACKAGE_PIN C34 [get_ports FFLY1_RX3_N];  # B128_MGTHRX3_N
#set_property PACKAGE_PIN C33 [get_ports FFLY1_RX3_P];  # B128_MGTHRX3_P
#set_property PACKAGE_PIN H32 [get_ports FFLY1_TX0_N];  # B128_MGTHTX0_N
#set_property PACKAGE_PIN H31 [get_ports FFLY1_TX0_P];  # B128_MGTHTX0_P
#set_property PACKAGE_PIN G30 [get_ports FFLY1_TX1_N];  # B128_MGTHTX1_N
#set_property PACKAGE_PIN G29 [get_ports FFLY1_TX1_P];  # B128_MGTHTX1_P
#set_property PACKAGE_PIN D32 [get_ports FFLY1_TX2_N];  # B128_MGTHTX2_N
#set_property PACKAGE_PIN D31 [get_ports FFLY1_TX2_P];  # B128_MGTHTX2_P
#set_property PACKAGE_PIN B32 [get_ports FFLY1_TX3_N];  # B128_MGTHTX3_N
#set_property PACKAGE_PIN B31 [get_ports FFLY1_TX3_P];  # B128_MGTHTX3_P
# Subsignals
#set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN A9} [get_ports FFLY1_SCL];
#set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN B9} [get_ports FFLY1_SDA];
#set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN H9} [get_ports FFLY1_RESETL];
#set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN J9} [get_ports FFLY1_INTL];
#set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN H13} [get_ports FFLY1_SELECTL];
#set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN J13} [get_ports FFLY1_PRESENTL];

## GT REFCLK for FireFly
# B127_MGTREFCLK0/1
#set_property PACKAGE_PIN R30 [get_ports B127_MGTREFCLK0_N];  # UNIV connector (CN4): pin 5
#set_property PACKAGE_PIN R29 [get_ports B127_MGTREFCLK0_P];  # UNIV connector (CN4): pin 3
#set_property PACKAGE_PIN N30 [get_ports B127_MGTREFCLK1_N];  # UNIV connector (CN4): pin 11
#set_property PACKAGE_PIN N29 [get_ports B127_MGTREFCLK1_P];  # UNIV connector (CN4): pin 9
# B128_MGTREFCLK0/1
#set_property PACKAGE_PIN L30 [get_ports B128_MGTREFCLK0_N];  # 156.25 MHz clock is supplied by oscillator Y3
#set_property PACKAGE_PIN L29 [get_ports B128_MGTREFCLK0_P];  # 156.25 MHz clock is supplied by oscillator Y3
#create_clock -period 6.400 [get_ports B128_MGTREFCLK0_P];
#set_property PACKAGE_PIN J30 [get_ports B128_MGTREFCLK1_N];  # connected to PLL IC (U12:SI5394A) OUT0b
#set_property PACKAGE_PIN J29 [get_ports B128_MGTREFCLK1_P];  # connected to PLL IC (U12:SI5394A) OUT0

## SATA Card slot 0 (CN1)
#set_property PACKAGE_PIN AP1 [get_ports SATA0_RX0_N];  # B224_MGTHRX0_N
#set_property PACKAGE_PIN AP2 [get_ports SATA0_RX0_P];  # B224_MGTHRX0_P
#set_property PACKAGE_PIN AN3 [get_ports SATA0_TX0_N];  # B224_MGTHTX0_N
#set_property PACKAGE_PIN AN4 [get_ports SATA0_TX0_P];  # B224_MGTHTX0_P

#set_property PACKAGE_PIN AM1 [get_ports SATA0_RX1_N];  # B224_MGTHRX1_N
#set_property PACKAGE_PIN AM2 [get_ports SATA0_RX1_P];  # B224_MGTHRX1_P
#set_property PACKAGE_PIN AM5 [get_ports SATA0_TX1_N];  # B224_MGTHTX1_N
#set_property PACKAGE_PIN AM6 [get_ports SATA0_TX1_P];  # B224_MGTHTX1_P

#set_property PACKAGE_PIN AK1 [get_ports SATA0_RX2_N];  # B224_MGTHRX2_N
#set_property PACKAGE_PIN AK2 [get_ports SATA0_RX2_P];  # B224_MGTHRX2_P
#set_property PACKAGE_PIN AL3 [get_ports SATA0_TX2_N];  # B224_MGTHTX2_N
#set_property PACKAGE_PIN AL4 [get_ports SATA0_TX2_P];  # B224_MGTHTX2_P

#set_property PACKAGE_PIN AJ3 [get_ports SATA0_RX3_N];  # B224_MGTHRX3_N
#set_property PACKAGE_PIN AJ4 [get_ports SATA0_RX3_P];  # B224_MGTHRX3_P
#set_property PACKAGE_PIN AK5 [get_ports SATA0_TX3_N];  # B224_MGTHTX3_N
#set_property PACKAGE_PIN AK6 [get_ports SATA0_TX3_P];  # B224_MGTHTX3_P

#set_property PACKAGE_PIN AH1 [get_ports SATA0_RX4_N];  # B225_MGTHRX0_N
#set_property PACKAGE_PIN AH2 [get_ports SATA0_RX4_P];  # B225_MGTHRX0_P
#set_property PACKAGE_PIN AH5 [get_ports SATA0_TX4_N];  # B225_MGTHTX0_N
#set_property PACKAGE_PIN AH6 [get_ports SATA0_TX4_P];  # B225_MGTHTX0_P

#set_property PACKAGE_PIN AF1 [get_ports SATA0_RX5_N];  # B225_MGTHRX1_N
#set_property PACKAGE_PIN AF2 [get_ports SATA0_RX5_P];  # B225_MGTHRX1_P
#set_property PACKAGE_PIN AG3 [get_ports SATA0_TX5_N];  # B225_MGTHTX1_N
#set_property PACKAGE_PIN AG4 [get_ports SATA0_TX5_P];  # B225_MGTHTX1_P

#set_property PACKAGE_PIN AD1 [get_ports SATA0_RX6_N];  # B225_MGTHRX2_N
#set_property PACKAGE_PIN AD2 [get_ports SATA0_RX6_P];  # B225_MGTHRX2_P
#set_property PACKAGE_PIN AE3 [get_ports SATA0_TX6_N];  # B225_MGTHTX2_N
#set_property PACKAGE_PIN AE4 [get_ports SATA0_TX6_P];  # B225_MGTHTX2_P

#set_property PACKAGE_PIN AB1 [get_ports SATA0_RX7_N];  # B225_MGTHRX3_N
#set_property PACKAGE_PIN AB2 [get_ports SATA0_RX7_P];  # B225_MGTHRX3_P
#set_property PACKAGE_PIN AC3 [get_ports SATA0_TX7_N];  # B225_MGTHTX3_N
#set_property PACKAGE_PIN AC4 [get_ports SATA0_TX7_P];  # B225_MGTHTX3_P

## SATA Card Slot 1 (CN2)
#set_property PACKAGE_PIN Y1 [get_ports SATA1_RX0_N];  # B226_MGTHRX0_N
#set_property PACKAGE_PIN Y2 [get_ports SATA1_RX0_P];  # B226_MGTHRX0_P
#set_property PACKAGE_PIN AA3 [get_ports SATA1_TX0_N];  # B226_MGTHTX0_N
#set_property PACKAGE_PIN AA4 [get_ports SATA1_TX0_P];  # B226_MGTHTX0_P

#set_property PACKAGE_PIN V1 [get_ports SATA1_RX1_N];  # B226_MGTHRX1_N
#set_property PACKAGE_PIN V2 [get_ports SATA1_RX1_P];  # B226_MGTHRX1_P
#set_property PACKAGE_PIN W3 [get_ports SATA1_TX1_N];  # B226_MGTHTX1_N
#set_property PACKAGE_PIN W4 [get_ports SATA1_TX1_P];  # B226_MGTHTX1_P

#set_property PACKAGE_PIN T1 [get_ports SATA1_RX2_N];  # B226_MGTHRX2_N
#set_property PACKAGE_PIN T2 [get_ports SATA1_RX2_P];  # B226_MGTHRX2_P
#set_property PACKAGE_PIN U3 [get_ports SATA1_TX2_N];  # B226_MGTHTX2_N
#set_property PACKAGE_PIN U4 [get_ports SATA1_TX2_P];  # B226_MGTHTX2_P

#set_property PACKAGE_PIN P1 [get_ports SATA1_RX3_N];  # B226_MGTHRX3_N
#set_property PACKAGE_PIN P2 [get_ports SATA1_RX3_P];  # B226_MGTHRX3_P
#set_property PACKAGE_PIN R3 [get_ports SATA1_TX3_N];  # B226_MGTHTX3_N
#set_property PACKAGE_PIN R4 [get_ports SATA1_TX3_P];  # B226_MGTHTX3_P

#set_property PACKAGE_PIN M1 [get_ports SATA1_RX4_N];  # B227_MGTHRX0_N
#set_property PACKAGE_PIN M2 [get_ports SATA1_RX4_P];  # B227_MGTHRX0_P
#set_property PACKAGE_PIN N3 [get_ports SATA1_TX4_N];  # B227_MGTHTX0_N
#set_property PACKAGE_PIN N4 [get_ports SATA1_TX4_P];  # B227_MGTHTX0_P

#set_property PACKAGE_PIN K1 [get_ports SATA1_RX5_N];  # B227_MGTHRX1_N
#set_property PACKAGE_PIN K2 [get_ports SATA1_RX5_P];  # B227_MGTHRX1_P
#set_property PACKAGE_PIN L3 [get_ports SATA1_TX5_N];  # B227_MGTHTX1_N
#set_property PACKAGE_PIN L4 [get_ports SATA1_TX5_P];  # B227_MGTHTX1_P

#set_property PACKAGE_PIN H1 [get_ports SATA1_RX6_N];  # B227_MGTHRX2_N
#set_property PACKAGE_PIN H2 [get_ports SATA1_RX6_P];  # B227_MGTHRX2_P
#set_property PACKAGE_PIN J3 [get_ports SATA1_TX6_N];  # B227_MGTHTX2_N
#set_property PACKAGE_PIN J4 [get_ports SATA1_TX6_P];  # B227_MGTHTX2_P

#set_property PACKAGE_PIN F1 [get_ports SATA1_RX7_N];  # B227_MGTHRX3_N
#set_property PACKAGE_PIN F2 [get_ports SATA1_RX7_P];  # B227_MGTHRX3_P
#set_property PACKAGE_PIN G3 [get_ports SATA1_TX7_N];  # B227_MGTHTX3_N
#set_property PACKAGE_PIN G4 [get_ports SATA1_TX7_P];  # B227_MGTHTX3_P

## GT REFCLK for SATA I/F
## B225_MGTREFCLK0
#set_property PACKAGE_PIN AB5 [get_ports B225_MGTREFCLK0_N];  # 150 MHz clock is supplied by oscillator Y2
#set_property PACKAGE_PIN AB6 [get_ports B225_MGTREFCLK0_P];  # 150 MHz clock is supplied by oscillator Y2
#create_clock -period 6.667 [get_ports B225_MGTREFCLK0_P];
## B226_MGTREFCLK1
#set_property PACKAGE_PIN T5 [get_ports B226_MGTREFCLK1_N];  # 148.5 MHz clock is supplied by oscillator Y4
#set_property PACKAGE_PIN T6 [get_ports B226_MGTREFCLK1_P];  # 148.5 MHz clock is supplied by oscillator Y4
#create_clock -period 6.734 [get_ports B226_MGTREFCLK1_P];

## SATA Device power-on (at H level, supply 5V to the devices)
#set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN AP8} [get_ports SATA_POWER];

# USB-UART (via U2:CP2102N, connect to CN3:microUSB-typeB connector)
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN D11} [get_ports UART_TX];
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN E11} [get_ports UART_RX];
