-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Fri Nov 20 09:26:59 2026
-- Host        : DESKTOP-825BANH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/soc_projet_blaise/SoC_project.gen/sources_1/bd/top/ip/top_AXI_I2S_0_0/top_AXI_I2S_0_0_sim_netlist.vhdl
-- Design      : top_AXI_I2S_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_AXI_I2S_0_0_AXI_I2S_master_stream_v1_0_M00_AXIS is
  port (
    axis_tvalid_reg_reg_0 : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    \FSM_onehot_tx_state_reg[0]_0\ : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    axi_data_valid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \right_latched_reg[23]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_AXI_I2S_0_0_AXI_I2S_master_stream_v1_0_M00_AXIS : entity is "AXI_I2S_master_stream_v1_0_M00_AXIS";
end top_AXI_I2S_0_0_AXI_I2S_master_stream_v1_0_M00_AXIS;

architecture STRUCTURE of top_AXI_I2S_0_0_AXI_I2S_master_stream_v1_0_M00_AXIS is
  signal \FSM_onehot_tx_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_tx_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_tx_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_tx_state_reg[0]_0\ : STD_LOGIC;
  signal \FSM_onehot_tx_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_tx_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \M_AXIS_TDATA[0]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[10]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[11]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[12]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[13]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[14]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[15]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[16]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[17]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[18]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[19]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[1]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[20]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[21]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[22]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[2]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[31]_i_2_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[3]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[4]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[5]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[6]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[7]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[8]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[9]_i_1_n_0\ : STD_LOGIC;
  signal axis_tlast_reg_i_1_n_0 : STD_LOGIC;
  signal axis_tlast_reg_i_2_n_0 : STD_LOGIC;
  signal axis_tlast_reg_i_3_n_0 : STD_LOGIC;
  signal axis_tvalid_reg : STD_LOGIC;
  signal axis_tvalid_reg_i_2_n_0 : STD_LOGIC;
  signal \^axis_tvalid_reg_reg_0\ : STD_LOGIC;
  signal \^m00_axis_tlast\ : STD_LOGIC;
  signal right_latched : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal word_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \word_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \word_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \word_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \word_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \word_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \word_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \word_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \word_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \word_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \word_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \word_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \word_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \word_cnt[7]_i_3_n_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_tx_state_reg[0]\ : label is "idle:001,send_left:010,send_right:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_tx_state_reg[1]\ : label is "idle:001,send_left:010,send_right:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_tx_state_reg[2]\ : label is "idle:001,send_left:010,send_right:100,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \word_cnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \word_cnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \word_cnt[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \word_cnt[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \word_cnt[4]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \word_cnt[5]_i_2\ : label is "soft_lutpair2";
begin
  \FSM_onehot_tx_state_reg[0]_0\ <= \^fsm_onehot_tx_state_reg[0]_0\;
  axis_tvalid_reg_reg_0 <= \^axis_tvalid_reg_reg_0\;
  m00_axis_tlast <= \^m00_axis_tlast\;
\FSM_onehot_tx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF02AA22AA22AA22"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => axi_data_valid,
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_tx_state_reg_n_0_[2]\,
      I4 => \^axis_tvalid_reg_reg_0\,
      I5 => m00_axis_tready,
      O => \FSM_onehot_tx_state[0]_i_1_n_0\
    );
\FSM_onehot_tx_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8F8F8F8F8F8F8"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => axi_data_valid,
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_tx_state_reg_n_0_[2]\,
      I4 => \^axis_tvalid_reg_reg_0\,
      I5 => m00_axis_tready,
      O => \FSM_onehot_tx_state[1]_i_1_n_0\
    );
\FSM_onehot_tx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F780F780F780"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => axi_data_valid,
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_tx_state_reg_n_0_[2]\,
      I4 => \^axis_tvalid_reg_reg_0\,
      I5 => m00_axis_tready,
      O => \FSM_onehot_tx_state[2]_i_1_n_0\
    );
\FSM_onehot_tx_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \FSM_onehot_tx_state[0]_i_1_n_0\,
      Q => \^fsm_onehot_tx_state_reg[0]_0\,
      S => SR(0)
    );
\FSM_onehot_tx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \FSM_onehot_tx_state[1]_i_1_n_0\,
      Q => \FSM_onehot_tx_state_reg_n_0_[1]\,
      R => SR(0)
    );
\FSM_onehot_tx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \FSM_onehot_tx_state[2]_i_1_n_0\,
      Q => \FSM_onehot_tx_state_reg_n_0_[2]\,
      R => SR(0)
    );
\M_AXIS_TDATA[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(0),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(0),
      O => \M_AXIS_TDATA[0]_i_1_n_0\
    );
\M_AXIS_TDATA[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(10),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(10),
      O => \M_AXIS_TDATA[10]_i_1_n_0\
    );
\M_AXIS_TDATA[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(11),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(11),
      O => \M_AXIS_TDATA[11]_i_1_n_0\
    );
\M_AXIS_TDATA[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(12),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(12),
      O => \M_AXIS_TDATA[12]_i_1_n_0\
    );
\M_AXIS_TDATA[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(13),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(13),
      O => \M_AXIS_TDATA[13]_i_1_n_0\
    );
\M_AXIS_TDATA[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(14),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(14),
      O => \M_AXIS_TDATA[14]_i_1_n_0\
    );
\M_AXIS_TDATA[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(15),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(15),
      O => \M_AXIS_TDATA[15]_i_1_n_0\
    );
\M_AXIS_TDATA[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(16),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(16),
      O => \M_AXIS_TDATA[16]_i_1_n_0\
    );
\M_AXIS_TDATA[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(17),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(17),
      O => \M_AXIS_TDATA[17]_i_1_n_0\
    );
\M_AXIS_TDATA[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(18),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(18),
      O => \M_AXIS_TDATA[18]_i_1_n_0\
    );
\M_AXIS_TDATA[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(19),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(19),
      O => \M_AXIS_TDATA[19]_i_1_n_0\
    );
\M_AXIS_TDATA[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(1),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(1),
      O => \M_AXIS_TDATA[1]_i_1_n_0\
    );
\M_AXIS_TDATA[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(20),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(20),
      O => \M_AXIS_TDATA[20]_i_1_n_0\
    );
\M_AXIS_TDATA[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(21),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(21),
      O => \M_AXIS_TDATA[21]_i_1_n_0\
    );
\M_AXIS_TDATA[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(22),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(22),
      O => \M_AXIS_TDATA[22]_i_1_n_0\
    );
\M_AXIS_TDATA[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(2),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(2),
      O => \M_AXIS_TDATA[2]_i_1_n_0\
    );
\M_AXIS_TDATA[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => axi_data_valid,
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => \^axis_tvalid_reg_reg_0\,
      I4 => m00_axis_tready,
      O => axis_tvalid_reg
    );
\M_AXIS_TDATA[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(23),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(23),
      O => \M_AXIS_TDATA[31]_i_2_n_0\
    );
\M_AXIS_TDATA[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(3),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(3),
      O => \M_AXIS_TDATA[3]_i_1_n_0\
    );
\M_AXIS_TDATA[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(4),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(4),
      O => \M_AXIS_TDATA[4]_i_1_n_0\
    );
\M_AXIS_TDATA[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(5),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(5),
      O => \M_AXIS_TDATA[5]_i_1_n_0\
    );
\M_AXIS_TDATA[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(6),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(6),
      O => \M_AXIS_TDATA[6]_i_1_n_0\
    );
\M_AXIS_TDATA[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(7),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(7),
      O => \M_AXIS_TDATA[7]_i_1_n_0\
    );
\M_AXIS_TDATA[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(8),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(8),
      O => \M_AXIS_TDATA[8]_i_1_n_0\
    );
\M_AXIS_TDATA[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => Q(9),
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I3 => right_latched(9),
      O => \M_AXIS_TDATA[9]_i_1_n_0\
    );
\M_AXIS_TDATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[0]_i_1_n_0\,
      Q => m00_axis_tdata(0),
      R => SR(0)
    );
\M_AXIS_TDATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[10]_i_1_n_0\,
      Q => m00_axis_tdata(10),
      R => SR(0)
    );
\M_AXIS_TDATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[11]_i_1_n_0\,
      Q => m00_axis_tdata(11),
      R => SR(0)
    );
\M_AXIS_TDATA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[12]_i_1_n_0\,
      Q => m00_axis_tdata(12),
      R => SR(0)
    );
\M_AXIS_TDATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[13]_i_1_n_0\,
      Q => m00_axis_tdata(13),
      R => SR(0)
    );
\M_AXIS_TDATA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[14]_i_1_n_0\,
      Q => m00_axis_tdata(14),
      R => SR(0)
    );
\M_AXIS_TDATA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[15]_i_1_n_0\,
      Q => m00_axis_tdata(15),
      R => SR(0)
    );
\M_AXIS_TDATA_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[16]_i_1_n_0\,
      Q => m00_axis_tdata(16),
      R => SR(0)
    );
\M_AXIS_TDATA_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[17]_i_1_n_0\,
      Q => m00_axis_tdata(17),
      R => SR(0)
    );
\M_AXIS_TDATA_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[18]_i_1_n_0\,
      Q => m00_axis_tdata(18),
      R => SR(0)
    );
\M_AXIS_TDATA_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[19]_i_1_n_0\,
      Q => m00_axis_tdata(19),
      R => SR(0)
    );
\M_AXIS_TDATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[1]_i_1_n_0\,
      Q => m00_axis_tdata(1),
      R => SR(0)
    );
\M_AXIS_TDATA_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[20]_i_1_n_0\,
      Q => m00_axis_tdata(20),
      R => SR(0)
    );
\M_AXIS_TDATA_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[21]_i_1_n_0\,
      Q => m00_axis_tdata(21),
      R => SR(0)
    );
\M_AXIS_TDATA_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[22]_i_1_n_0\,
      Q => m00_axis_tdata(22),
      R => SR(0)
    );
\M_AXIS_TDATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[2]_i_1_n_0\,
      Q => m00_axis_tdata(2),
      R => SR(0)
    );
\M_AXIS_TDATA_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[31]_i_2_n_0\,
      Q => m00_axis_tdata(23),
      R => SR(0)
    );
\M_AXIS_TDATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[3]_i_1_n_0\,
      Q => m00_axis_tdata(3),
      R => SR(0)
    );
\M_AXIS_TDATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[4]_i_1_n_0\,
      Q => m00_axis_tdata(4),
      R => SR(0)
    );
\M_AXIS_TDATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[5]_i_1_n_0\,
      Q => m00_axis_tdata(5),
      R => SR(0)
    );
\M_AXIS_TDATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[6]_i_1_n_0\,
      Q => m00_axis_tdata(6),
      R => SR(0)
    );
\M_AXIS_TDATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[7]_i_1_n_0\,
      Q => m00_axis_tdata(7),
      R => SR(0)
    );
\M_AXIS_TDATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[8]_i_1_n_0\,
      Q => m00_axis_tdata(8),
      R => SR(0)
    );
\M_AXIS_TDATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axis_tvalid_reg,
      D => \M_AXIS_TDATA[9]_i_1_n_0\,
      Q => m00_axis_tdata(9),
      R => SR(0)
    );
axis_tlast_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40000000"
    )
        port map (
      I0 => word_cnt(0),
      I1 => word_cnt(1),
      I2 => word_cnt(2),
      I3 => axis_tlast_reg_i_2_n_0,
      I4 => axis_tlast_reg_i_3_n_0,
      I5 => \^m00_axis_tlast\,
      O => axis_tlast_reg_i_1_n_0
    );
axis_tlast_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => word_cnt(5),
      I1 => word_cnt(6),
      I2 => word_cnt(3),
      I3 => word_cnt(4),
      I4 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I5 => word_cnt(7),
      O => axis_tlast_reg_i_2_n_0
    );
axis_tlast_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFE000"
    )
        port map (
      I0 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[2]\,
      I2 => \^axis_tvalid_reg_reg_0\,
      I3 => m00_axis_tready,
      I4 => \^fsm_onehot_tx_state_reg[0]_0\,
      O => axis_tlast_reg_i_3_n_0
    );
axis_tlast_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_tlast_reg_i_1_n_0,
      Q => \^m00_axis_tlast\,
      R => SR(0)
    );
axis_tvalid_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEAAAAAACF00FF00"
    )
        port map (
      I0 => axi_data_valid,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_tx_state_reg_n_0_[2]\,
      I3 => \^axis_tvalid_reg_reg_0\,
      I4 => m00_axis_tready,
      I5 => \^fsm_onehot_tx_state_reg[0]_0\,
      O => axis_tvalid_reg_i_2_n_0
    );
axis_tvalid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_tvalid_reg_i_2_n_0,
      Q => \^axis_tvalid_reg_reg_0\,
      R => SR(0)
    );
\right_latched_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(0),
      Q => right_latched(0),
      R => SR(0)
    );
\right_latched_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(10),
      Q => right_latched(10),
      R => SR(0)
    );
\right_latched_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(11),
      Q => right_latched(11),
      R => SR(0)
    );
\right_latched_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(12),
      Q => right_latched(12),
      R => SR(0)
    );
\right_latched_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(13),
      Q => right_latched(13),
      R => SR(0)
    );
\right_latched_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(14),
      Q => right_latched(14),
      R => SR(0)
    );
\right_latched_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(15),
      Q => right_latched(15),
      R => SR(0)
    );
\right_latched_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(16),
      Q => right_latched(16),
      R => SR(0)
    );
\right_latched_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(17),
      Q => right_latched(17),
      R => SR(0)
    );
\right_latched_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(18),
      Q => right_latched(18),
      R => SR(0)
    );
\right_latched_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(19),
      Q => right_latched(19),
      R => SR(0)
    );
\right_latched_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(1),
      Q => right_latched(1),
      R => SR(0)
    );
\right_latched_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(20),
      Q => right_latched(20),
      R => SR(0)
    );
\right_latched_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(21),
      Q => right_latched(21),
      R => SR(0)
    );
\right_latched_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(22),
      Q => right_latched(22),
      R => SR(0)
    );
\right_latched_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(23),
      Q => right_latched(23),
      R => SR(0)
    );
\right_latched_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(2),
      Q => right_latched(2),
      R => SR(0)
    );
\right_latched_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(3),
      Q => right_latched(3),
      R => SR(0)
    );
\right_latched_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(4),
      Q => right_latched(4),
      R => SR(0)
    );
\right_latched_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(5),
      Q => right_latched(5),
      R => SR(0)
    );
\right_latched_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(6),
      Q => right_latched(6),
      R => SR(0)
    );
\right_latched_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(7),
      Q => right_latched(7),
      R => SR(0)
    );
\right_latched_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(8),
      Q => right_latched(8),
      R => SR(0)
    );
\right_latched_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => E(0),
      D => \right_latched_reg[23]_0\(9),
      Q => right_latched(9),
      R => SR(0)
    );
\word_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF54"
    )
        port map (
      I0 => word_cnt(0),
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_tx_state_reg_n_0_[2]\,
      I3 => \^fsm_onehot_tx_state_reg[0]_0\,
      O => \word_cnt[0]_i_1_n_0\
    );
\word_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFEFEAA"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_tx_state_reg_n_0_[2]\,
      I3 => word_cnt(1),
      I4 => word_cnt(0),
      O => \word_cnt[1]_i_1_n_0\
    );
\word_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFAAEAEAEAAA"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => word_cnt(0),
      I2 => word_cnt(1),
      I3 => \FSM_onehot_tx_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I5 => word_cnt(2),
      O => \word_cnt[2]_i_1_n_0\
    );
\word_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFAAAAEAAAAAAA"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => word_cnt(1),
      I2 => word_cnt(0),
      I3 => word_cnt(2),
      I4 => \word_cnt[3]_i_2_n_0\,
      I5 => word_cnt(3),
      O => \word_cnt[3]_i_1_n_0\
    );
\word_cnt[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[2]\,
      O => \word_cnt[3]_i_2_n_0\
    );
\word_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEABBBA"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => \word_cnt[4]_i_2_n_0\,
      I2 => \FSM_onehot_tx_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I4 => word_cnt(4),
      O => \word_cnt[4]_i_1_n_0\
    );
\word_cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => word_cnt(2),
      I1 => word_cnt(0),
      I2 => word_cnt(1),
      I3 => word_cnt(3),
      O => \word_cnt[4]_i_2_n_0\
    );
\word_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEABBBA"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => \word_cnt[5]_i_2_n_0\,
      I2 => \FSM_onehot_tx_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I4 => word_cnt(5),
      O => \word_cnt[5]_i_1_n_0\
    );
\word_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => word_cnt(3),
      I1 => word_cnt(1),
      I2 => word_cnt(0),
      I3 => word_cnt(2),
      I4 => word_cnt(4),
      O => \word_cnt[5]_i_2_n_0\
    );
\word_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEABBBA"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => \word_cnt[7]_i_3_n_0\,
      I2 => \FSM_onehot_tx_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I4 => word_cnt(6),
      O => \word_cnt[6]_i_1_n_0\
    );
\word_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => m00_axis_tready,
      I1 => \^axis_tvalid_reg_reg_0\,
      I2 => \FSM_onehot_tx_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      O => \word_cnt[7]_i_1_n_0\
    );
\word_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFAABABABAAA"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[0]_0\,
      I1 => \word_cnt[7]_i_3_n_0\,
      I2 => word_cnt(6),
      I3 => \FSM_onehot_tx_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I5 => word_cnt(7),
      O => \word_cnt[7]_i_2_n_0\
    );
\word_cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => word_cnt(4),
      I1 => word_cnt(2),
      I2 => word_cnt(0),
      I3 => word_cnt(1),
      I4 => word_cnt(3),
      I5 => word_cnt(5),
      O => \word_cnt[7]_i_3_n_0\
    );
\word_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \word_cnt[7]_i_1_n_0\,
      D => \word_cnt[0]_i_1_n_0\,
      Q => word_cnt(0),
      R => SR(0)
    );
\word_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \word_cnt[7]_i_1_n_0\,
      D => \word_cnt[1]_i_1_n_0\,
      Q => word_cnt(1),
      R => SR(0)
    );
\word_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \word_cnt[7]_i_1_n_0\,
      D => \word_cnt[2]_i_1_n_0\,
      Q => word_cnt(2),
      R => SR(0)
    );
\word_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \word_cnt[7]_i_1_n_0\,
      D => \word_cnt[3]_i_1_n_0\,
      Q => word_cnt(3),
      R => SR(0)
    );
\word_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \word_cnt[7]_i_1_n_0\,
      D => \word_cnt[4]_i_1_n_0\,
      Q => word_cnt(4),
      R => SR(0)
    );
\word_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \word_cnt[7]_i_1_n_0\,
      D => \word_cnt[5]_i_1_n_0\,
      Q => word_cnt(5),
      R => SR(0)
    );
\word_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \word_cnt[7]_i_1_n_0\,
      D => \word_cnt[6]_i_1_n_0\,
      Q => word_cnt(6),
      R => SR(0)
    );
\word_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \word_cnt[7]_i_1_n_0\,
      D => \word_cnt[7]_i_2_n_0\,
      Q => word_cnt(7),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_AXI_I2S_0_0_AXI_I2S_slave_lite_v1_0_S00_AXI is
  port (
    s00_axi_bvalid : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_AXI_I2S_0_0_AXI_I2S_slave_lite_v1_0_S00_AXI : entity is "AXI_I2S_slave_lite_v1_0_S00_AXI";
end top_AXI_I2S_0_0_AXI_I2S_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of top_AXI_I2S_0_0_AXI_I2S_slave_lite_v1_0_S00_AXI is
  signal \FSM_onehot_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_write_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_arready0__0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_2_n_0 : STD_LOGIC;
  signal axi_bvalid_i_3_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal \mem_logic__1\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[0]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[1]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[2]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "idle:00,rdata:10,raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "idle:00,rdata:10,raddr:01";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\FSM_onehot_state_write[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFAAFFFFBF00"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => axi_wready,
      I5 => \FSM_onehot_state_write_reg_n_0_[2]\,
      O => \FSM_onehot_state_write[1]_i_1_n_0\
    );
\FSM_onehot_state_write[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0800"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => \FSM_onehot_state_write_reg_n_0_[2]\,
      O => \FSM_onehot_state_write[2]_i_1_n_0\
    );
\FSM_onehot_state_write_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => '0',
      Q => axi_wready,
      S => axi_awready_i_1_n_0
    );
\FSM_onehot_state_write_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state_write[1]_i_1_n_0\,
      Q => \FSM_onehot_state_write_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\FSM_onehot_state_write_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state_write[2]_i_1_n_0\,
      Q => \FSM_onehot_state_write_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0007777FFFF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF88880000"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[0]_i_1_n_0\,
      Q => state_read(0),
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_aresetn,
      I2 => \axi_arready0__0\,
      I3 => state_read(0),
      I4 => state_read(1),
      I5 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_aresetn,
      I2 => \axi_arready0__0\,
      I3 => state_read(0),
      I4 => state_read(1),
      I5 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => \axi_arready0__0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => '0'
    );
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C4C4C4FFCFCFCF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => state_read(1),
      I3 => s00_axi_rready,
      I4 => \^axi_rvalid_reg_0\,
      I5 => state_read(0),
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^axi_arready_reg_0\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_aresetn,
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_aresetn,
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => '0'
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => '0'
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFEAEAFFFFEAEA"
    )
        port map (
      I0 => axi_wready,
      I1 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I2 => s00_axi_wvalid,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => \^axi_awready_reg_0\,
      I5 => s00_axi_awvalid,
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^axi_awready_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8ABA8BB88BB88"
    )
        port map (
      I0 => axi_bvalid_i_2_n_0,
      I1 => axi_bvalid_i_3_n_0,
      I2 => s00_axi_wvalid,
      I3 => \^s00_axi_bvalid\,
      I4 => s00_axi_bready,
      I5 => \FSM_onehot_state_write_reg_n_0_[2]\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAEAEAEAEAEAEAEA"
    )
        port map (
      I0 => axi_wready,
      I1 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I2 => s00_axi_wvalid,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => s00_axi_awvalid,
      I5 => \^axi_awready_reg_0\,
      O => axi_bvalid_i_2_n_0
    );
axi_bvalid_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80808080808080"
    )
        port map (
      I0 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I1 => \^s00_axi_bvalid\,
      I2 => s00_axi_bready,
      I3 => \^axi_awready_reg_0\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wvalid,
      O => axi_bvalid_i_3_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF00800080"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => state_read(0),
      I3 => state_read(1),
      I4 => s00_axi_rready,
      I5 => \^axi_rvalid_reg_0\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axi_wready,
      I1 => \^s00_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s00_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(0),
      I1 => slv_reg0(0),
      I2 => slv_reg3(0),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(0),
      O => s00_axi_rdata(0)
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => slv_reg0(10),
      I2 => slv_reg3(10),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(10),
      O => s00_axi_rdata(10)
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(11),
      I1 => slv_reg0(11),
      I2 => slv_reg3(11),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(11),
      O => s00_axi_rdata(11)
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => slv_reg0(12),
      I2 => slv_reg3(12),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(12),
      O => s00_axi_rdata(12)
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(13),
      I1 => slv_reg0(13),
      I2 => slv_reg3(13),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(13),
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(14),
      I1 => slv_reg0(14),
      I2 => slv_reg3(14),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(14),
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => slv_reg0(15),
      I2 => slv_reg3(15),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(15),
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => slv_reg0(16),
      I2 => slv_reg3(16),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(16),
      O => s00_axi_rdata(16)
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => slv_reg0(17),
      I2 => slv_reg3(17),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(17),
      O => s00_axi_rdata(17)
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => slv_reg0(18),
      I2 => slv_reg3(18),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(18),
      O => s00_axi_rdata(18)
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => slv_reg0(19),
      I2 => slv_reg3(19),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(19),
      O => s00_axi_rdata(19)
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(1),
      I1 => slv_reg0(1),
      I2 => slv_reg3(1),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(1),
      O => s00_axi_rdata(1)
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => slv_reg0(20),
      I2 => slv_reg3(20),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(20),
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => slv_reg0(21),
      I2 => slv_reg3(21),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(21),
      O => s00_axi_rdata(21)
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => slv_reg0(22),
      I2 => slv_reg3(22),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(22),
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => slv_reg0(23),
      I2 => slv_reg3(23),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(23),
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => slv_reg0(24),
      I2 => slv_reg3(24),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(24),
      O => s00_axi_rdata(24)
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => slv_reg0(25),
      I2 => slv_reg3(25),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(25),
      O => s00_axi_rdata(25)
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => slv_reg0(26),
      I2 => slv_reg3(26),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(26),
      O => s00_axi_rdata(26)
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => slv_reg0(27),
      I2 => slv_reg3(27),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(27),
      O => s00_axi_rdata(27)
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => slv_reg0(28),
      I2 => slv_reg3(28),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(28),
      O => s00_axi_rdata(28)
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => slv_reg0(29),
      I2 => slv_reg3(29),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(29),
      O => s00_axi_rdata(29)
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(2),
      I1 => slv_reg0(2),
      I2 => slv_reg3(2),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(2),
      O => s00_axi_rdata(2)
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => slv_reg0(30),
      I2 => slv_reg3(30),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(30),
      O => s00_axi_rdata(30)
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => slv_reg0(31),
      I2 => slv_reg3(31),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(31),
      O => s00_axi_rdata(31)
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(3),
      I1 => slv_reg0(3),
      I2 => slv_reg3(3),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(3),
      O => s00_axi_rdata(3)
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(4),
      I1 => slv_reg0(4),
      I2 => slv_reg3(4),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(4),
      O => s00_axi_rdata(4)
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => slv_reg0(5),
      I2 => slv_reg3(5),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(5),
      O => s00_axi_rdata(5)
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(6),
      I1 => slv_reg0(6),
      I2 => slv_reg3(6),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(6),
      O => s00_axi_rdata(6)
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(7),
      I1 => slv_reg0(7),
      I2 => slv_reg3(7),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(7),
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => slv_reg0(8),
      I2 => slv_reg3(8),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(8),
      O => s00_axi_rdata(8)
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => slv_reg0(9),
      I2 => slv_reg3(9),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(9),
      O => s00_axi_rdata(9)
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__1\(3),
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      I5 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__1\(3),
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      I5 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__1\(3),
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      I5 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__1\(3),
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      I5 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020200000002000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__1\(3),
      I2 => s00_axi_wstrb(1),
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(0),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020200000002000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__1\(3),
      I2 => s00_axi_wstrb(2),
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(0),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020200000002000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__1\(3),
      I2 => s00_axi_wstrb(3),
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(0),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020200000002000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__1\(3),
      I2 => s00_axi_wstrb(0),
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000808080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__1\(3),
      I2 => s00_axi_wstrb(1),
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000808080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__1\(3),
      I2 => s00_axi_wstrb(2),
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000808080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__1\(3),
      I2 => s00_axi_wstrb(3),
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000808080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__1\(3),
      I2 => s00_axi_wstrb(0),
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880008000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(1),
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      I5 => \mem_logic__1\(3),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880008000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(2),
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      I5 => \mem_logic__1\(3),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880008000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(3),
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      I5 => \mem_logic__1\(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[3]\,
      O => \mem_logic__1\(3)
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880008000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(0),
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      I5 => \mem_logic__1\(3),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_AXI_I2S_0_0_AXI_I2S_slave_stream_v1_0_S00_AXIS is
  port (
    axis_tready_reg_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \tx_right_data_reg[23]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    axi_load_next : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_AXI_I2S_0_0_AXI_I2S_slave_stream_v1_0_S00_AXIS : entity is "AXI_I2S_slave_stream_v1_0_S00_AXIS";
end top_AXI_I2S_0_0_AXI_I2S_slave_stream_v1_0_S00_AXIS;

architecture STRUCTURE of top_AXI_I2S_0_0_AXI_I2S_slave_stream_v1_0_S00_AXIS is
  signal \FSM_onehot_rx_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_rx_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_rx_state_reg_n_0_[2]\ : STD_LOGIC;
  signal axis_tready_reg_i_1_n_0 : STD_LOGIC;
  signal \^axis_tready_reg_reg_0\ : STD_LOGIC;
  signal \tx_left_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \tx_left_data[23]_i_2_n_0\ : STD_LOGIC;
  signal \tx_right_data[23]_i_1_n_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[0]\ : label is "idle:001,get_left:010,get_right:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[1]\ : label is "idle:001,get_left:010,get_right:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[2]\ : label is "idle:001,get_left:010,get_right:100,";
begin
  axis_tready_reg_reg_0 <= \^axis_tready_reg_reg_0\;
\FSM_onehot_rx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCDFC0C0FFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_rx_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_rx_state[2]_i_2_n_0\,
      I3 => axi_load_next,
      I4 => \FSM_onehot_rx_state_reg_n_0_[0]\,
      I5 => s00_axis_aresetn,
      O => \FSM_onehot_rx_state[0]_i_1_n_0\
    );
\FSM_onehot_rx_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEA0A0A00000000"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_rx_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_rx_state[2]_i_2_n_0\,
      I3 => axi_load_next,
      I4 => \FSM_onehot_rx_state_reg_n_0_[0]\,
      I5 => s00_axis_aresetn,
      O => \FSM_onehot_rx_state[1]_i_1_n_0\
    );
\FSM_onehot_rx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAACACAC00000000"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_rx_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_rx_state[2]_i_2_n_0\,
      I3 => axi_load_next,
      I4 => \FSM_onehot_rx_state_reg_n_0_[0]\,
      I5 => s00_axis_aresetn,
      O => \FSM_onehot_rx_state[2]_i_1_n_0\
    );
\FSM_onehot_rx_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^axis_tready_reg_reg_0\,
      I1 => s00_axis_tvalid,
      O => \FSM_onehot_rx_state[2]_i_2_n_0\
    );
\FSM_onehot_rx_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \FSM_onehot_rx_state[0]_i_1_n_0\,
      Q => \FSM_onehot_rx_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_rx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \FSM_onehot_rx_state[1]_i_1_n_0\,
      Q => \FSM_onehot_rx_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_rx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \FSM_onehot_rx_state[2]_i_1_n_0\,
      Q => \FSM_onehot_rx_state_reg_n_0_[2]\,
      R => '0'
    );
axis_tready_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF70707000000000"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg_n_0_[2]\,
      I1 => s00_axis_tvalid,
      I2 => \^axis_tready_reg_reg_0\,
      I3 => \FSM_onehot_rx_state_reg_n_0_[0]\,
      I4 => axi_load_next,
      I5 => s00_axis_aresetn,
      O => axis_tready_reg_i_1_n_0
    );
axis_tready_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_tready_reg_i_1_n_0,
      Q => \^axis_tready_reg_reg_0\,
      R => '0'
    );
\tx_left_data[23]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_aresetn,
      O => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg_n_0_[1]\,
      I1 => s00_axis_tvalid,
      I2 => \^axis_tready_reg_reg_0\,
      O => \tx_left_data[23]_i_2_n_0\
    );
\tx_left_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(0),
      Q => Q(0),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(10),
      Q => Q(10),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(11),
      Q => Q(11),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(12),
      Q => Q(12),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(13),
      Q => Q(13),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(14),
      Q => Q(14),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(15),
      Q => Q(15),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(16),
      Q => Q(16),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(17),
      Q => Q(17),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(18),
      Q => Q(18),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(19),
      Q => Q(19),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(1),
      Q => Q(1),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(20),
      Q => Q(20),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(21),
      Q => Q(21),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(22),
      Q => Q(22),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(23),
      Q => Q(23),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(2),
      Q => Q(2),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(3),
      Q => Q(3),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(4),
      Q => Q(4),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(5),
      Q => Q(5),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(6),
      Q => Q(6),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(7),
      Q => Q(7),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(8),
      Q => Q(8),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_left_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_left_data[23]_i_2_n_0\,
      D => s00_axis_tdata(9),
      Q => Q(9),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg_n_0_[2]\,
      I1 => s00_axis_tvalid,
      I2 => \^axis_tready_reg_reg_0\,
      O => \tx_right_data[23]_i_1_n_0\
    );
\tx_right_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(0),
      Q => \tx_right_data_reg[23]_0\(0),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(10),
      Q => \tx_right_data_reg[23]_0\(10),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(11),
      Q => \tx_right_data_reg[23]_0\(11),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(12),
      Q => \tx_right_data_reg[23]_0\(12),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(13),
      Q => \tx_right_data_reg[23]_0\(13),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(14),
      Q => \tx_right_data_reg[23]_0\(14),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(15),
      Q => \tx_right_data_reg[23]_0\(15),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(16),
      Q => \tx_right_data_reg[23]_0\(16),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(17),
      Q => \tx_right_data_reg[23]_0\(17),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(18),
      Q => \tx_right_data_reg[23]_0\(18),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(19),
      Q => \tx_right_data_reg[23]_0\(19),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(1),
      Q => \tx_right_data_reg[23]_0\(1),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(20),
      Q => \tx_right_data_reg[23]_0\(20),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(21),
      Q => \tx_right_data_reg[23]_0\(21),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(22),
      Q => \tx_right_data_reg[23]_0\(22),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(23),
      Q => \tx_right_data_reg[23]_0\(23),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(2),
      Q => \tx_right_data_reg[23]_0\(2),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(3),
      Q => \tx_right_data_reg[23]_0\(3),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(4),
      Q => \tx_right_data_reg[23]_0\(4),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(5),
      Q => \tx_right_data_reg[23]_0\(5),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(6),
      Q => \tx_right_data_reg[23]_0\(6),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(7),
      Q => \tx_right_data_reg[23]_0\(7),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(8),
      Q => \tx_right_data_reg[23]_0\(8),
      R => \tx_left_data[23]_i_1_n_0\
    );
\tx_right_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \tx_right_data[23]_i_1_n_0\,
      D => s00_axis_tdata(9),
      Q => \tx_right_data_reg[23]_0\(9),
      R => \tx_left_data[23]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_AXI_I2S_0_0_CDC_Audio_Bridge is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_data_valid : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_load_next : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 22 downto 0 );
    \rst_sync_reg_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \i2s_tx_left_reg[23]_0\ : out STD_LOGIC_VECTOR ( 22 downto 0 );
    \axi_rx_left_reg[23]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \axi_rx_right_reg[23]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m00_axis_aclk : in STD_LOGIC;
    \tx_shift_reg[1]\ : in STD_LOGIC;
    \tx_shift_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \right_latched_reg[23]\ : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    \i2s_tx_left_reg[23]_1\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \i2s_tx_right_reg[23]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    mclk : in STD_LOGIC;
    \load_sync_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \valid_sync_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rx_left_reg[23]_1\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \axi_rx_right_reg[23]_1\ : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_AXI_I2S_0_0_CDC_Audio_Bridge : entity is "CDC_Audio_Bridge";
end top_AXI_I2S_0_0_CDC_Audio_Bridge;

architecture STRUCTURE of top_AXI_I2S_0_0_CDC_Audio_Bridge is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^axi_data_valid\ : STD_LOGIC;
  signal axi_data_valid_i_1_n_0 : STD_LOGIC;
  signal \i2s_tx_left[23]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_tx_left_reg_n_0_[0]\ : STD_LOGIC;
  signal i2s_tx_right : STD_LOGIC_VECTOR ( 0 to 0 );
  signal load_sync_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of load_sync_reg : signal is "true";
  signal rst_sync_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of rst_sync_reg : signal is "true";
  signal valid_sync_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg of valid_sync_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \load_sync_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \load_sync_reg_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \load_sync_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \load_sync_reg_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \load_sync_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \load_sync_reg_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \rst_sync_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP of \rst_sync_reg_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \rst_sync_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \rst_sync_reg_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \valid_sync_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP of \valid_sync_reg_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \valid_sync_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \valid_sync_reg_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \valid_sync_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \valid_sync_reg_reg[2]\ : label is "yes";
begin
  SR(0) <= \^sr\(0);
  axi_data_valid <= \^axi_data_valid\;
  \out\(0) <= rst_sync_reg(1);
axi_data_valid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => valid_sync_reg(1),
      I1 => valid_sync_reg(2),
      O => axi_data_valid_i_1_n_0
    );
axi_data_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axi_data_valid_i_1_n_0,
      Q => \^axi_data_valid\,
      R => \^sr\(0)
    );
axi_load_next_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \i2s_tx_left[23]_i_1_n_0\,
      Q => axi_load_next,
      R => \^sr\(0)
    );
\axi_rx_left_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(0),
      Q => \axi_rx_left_reg[23]_0\(0),
      R => \^sr\(0)
    );
\axi_rx_left_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(10),
      Q => \axi_rx_left_reg[23]_0\(10),
      R => \^sr\(0)
    );
\axi_rx_left_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(11),
      Q => \axi_rx_left_reg[23]_0\(11),
      R => \^sr\(0)
    );
\axi_rx_left_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(12),
      Q => \axi_rx_left_reg[23]_0\(12),
      R => \^sr\(0)
    );
\axi_rx_left_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(13),
      Q => \axi_rx_left_reg[23]_0\(13),
      R => \^sr\(0)
    );
\axi_rx_left_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(14),
      Q => \axi_rx_left_reg[23]_0\(14),
      R => \^sr\(0)
    );
\axi_rx_left_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(15),
      Q => \axi_rx_left_reg[23]_0\(15),
      R => \^sr\(0)
    );
\axi_rx_left_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(16),
      Q => \axi_rx_left_reg[23]_0\(16),
      R => \^sr\(0)
    );
\axi_rx_left_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(17),
      Q => \axi_rx_left_reg[23]_0\(17),
      R => \^sr\(0)
    );
\axi_rx_left_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(18),
      Q => \axi_rx_left_reg[23]_0\(18),
      R => \^sr\(0)
    );
\axi_rx_left_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(19),
      Q => \axi_rx_left_reg[23]_0\(19),
      R => \^sr\(0)
    );
\axi_rx_left_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(1),
      Q => \axi_rx_left_reg[23]_0\(1),
      R => \^sr\(0)
    );
\axi_rx_left_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(20),
      Q => \axi_rx_left_reg[23]_0\(20),
      R => \^sr\(0)
    );
\axi_rx_left_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(21),
      Q => \axi_rx_left_reg[23]_0\(21),
      R => \^sr\(0)
    );
\axi_rx_left_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(22),
      Q => \axi_rx_left_reg[23]_0\(22),
      R => \^sr\(0)
    );
\axi_rx_left_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(23),
      Q => \axi_rx_left_reg[23]_0\(23),
      R => \^sr\(0)
    );
\axi_rx_left_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(2),
      Q => \axi_rx_left_reg[23]_0\(2),
      R => \^sr\(0)
    );
\axi_rx_left_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(3),
      Q => \axi_rx_left_reg[23]_0\(3),
      R => \^sr\(0)
    );
\axi_rx_left_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(4),
      Q => \axi_rx_left_reg[23]_0\(4),
      R => \^sr\(0)
    );
\axi_rx_left_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(5),
      Q => \axi_rx_left_reg[23]_0\(5),
      R => \^sr\(0)
    );
\axi_rx_left_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(6),
      Q => \axi_rx_left_reg[23]_0\(6),
      R => \^sr\(0)
    );
\axi_rx_left_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(7),
      Q => \axi_rx_left_reg[23]_0\(7),
      R => \^sr\(0)
    );
\axi_rx_left_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(8),
      Q => \axi_rx_left_reg[23]_0\(8),
      R => \^sr\(0)
    );
\axi_rx_left_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_left_reg[23]_1\(9),
      Q => \axi_rx_left_reg[23]_0\(9),
      R => \^sr\(0)
    );
\axi_rx_right_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(0),
      Q => \axi_rx_right_reg[23]_0\(0),
      R => \^sr\(0)
    );
\axi_rx_right_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(10),
      Q => \axi_rx_right_reg[23]_0\(10),
      R => \^sr\(0)
    );
\axi_rx_right_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(11),
      Q => \axi_rx_right_reg[23]_0\(11),
      R => \^sr\(0)
    );
\axi_rx_right_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(12),
      Q => \axi_rx_right_reg[23]_0\(12),
      R => \^sr\(0)
    );
\axi_rx_right_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(13),
      Q => \axi_rx_right_reg[23]_0\(13),
      R => \^sr\(0)
    );
\axi_rx_right_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(14),
      Q => \axi_rx_right_reg[23]_0\(14),
      R => \^sr\(0)
    );
\axi_rx_right_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(15),
      Q => \axi_rx_right_reg[23]_0\(15),
      R => \^sr\(0)
    );
\axi_rx_right_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(16),
      Q => \axi_rx_right_reg[23]_0\(16),
      R => \^sr\(0)
    );
\axi_rx_right_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(17),
      Q => \axi_rx_right_reg[23]_0\(17),
      R => \^sr\(0)
    );
\axi_rx_right_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(18),
      Q => \axi_rx_right_reg[23]_0\(18),
      R => \^sr\(0)
    );
\axi_rx_right_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(19),
      Q => \axi_rx_right_reg[23]_0\(19),
      R => \^sr\(0)
    );
\axi_rx_right_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(1),
      Q => \axi_rx_right_reg[23]_0\(1),
      R => \^sr\(0)
    );
\axi_rx_right_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(20),
      Q => \axi_rx_right_reg[23]_0\(20),
      R => \^sr\(0)
    );
\axi_rx_right_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(21),
      Q => \axi_rx_right_reg[23]_0\(21),
      R => \^sr\(0)
    );
\axi_rx_right_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(22),
      Q => \axi_rx_right_reg[23]_0\(22),
      R => \^sr\(0)
    );
\axi_rx_right_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(23),
      Q => \axi_rx_right_reg[23]_0\(23),
      R => \^sr\(0)
    );
\axi_rx_right_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(2),
      Q => \axi_rx_right_reg[23]_0\(2),
      R => \^sr\(0)
    );
\axi_rx_right_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(3),
      Q => \axi_rx_right_reg[23]_0\(3),
      R => \^sr\(0)
    );
\axi_rx_right_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(4),
      Q => \axi_rx_right_reg[23]_0\(4),
      R => \^sr\(0)
    );
\axi_rx_right_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(5),
      Q => \axi_rx_right_reg[23]_0\(5),
      R => \^sr\(0)
    );
\axi_rx_right_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(6),
      Q => \axi_rx_right_reg[23]_0\(6),
      R => \^sr\(0)
    );
\axi_rx_right_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(7),
      Q => \axi_rx_right_reg[23]_0\(7),
      R => \^sr\(0)
    );
\axi_rx_right_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(8),
      Q => \axi_rx_right_reg[23]_0\(8),
      R => \^sr\(0)
    );
\axi_rx_right_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => axi_data_valid_i_1_n_0,
      D => \axi_rx_right_reg[23]_1\(9),
      Q => \axi_rx_right_reg[23]_0\(9),
      R => \^sr\(0)
    );
axis_tvalid_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m00_axis_aresetn,
      O => \^sr\(0)
    );
bclk_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_sync_reg(1),
      O => \rst_sync_reg_reg[1]_0\(0)
    );
\i2s_tx_left[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => load_sync_reg(1),
      I1 => load_sync_reg(2),
      O => \i2s_tx_left[23]_i_1_n_0\
    );
\i2s_tx_left_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(0),
      Q => \i2s_tx_left_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\i2s_tx_left_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(10),
      Q => \i2s_tx_left_reg[23]_0\(9),
      R => \^sr\(0)
    );
\i2s_tx_left_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(11),
      Q => \i2s_tx_left_reg[23]_0\(10),
      R => \^sr\(0)
    );
\i2s_tx_left_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(12),
      Q => \i2s_tx_left_reg[23]_0\(11),
      R => \^sr\(0)
    );
\i2s_tx_left_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(13),
      Q => \i2s_tx_left_reg[23]_0\(12),
      R => \^sr\(0)
    );
\i2s_tx_left_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(14),
      Q => \i2s_tx_left_reg[23]_0\(13),
      R => \^sr\(0)
    );
\i2s_tx_left_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(15),
      Q => \i2s_tx_left_reg[23]_0\(14),
      R => \^sr\(0)
    );
\i2s_tx_left_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(16),
      Q => \i2s_tx_left_reg[23]_0\(15),
      R => \^sr\(0)
    );
\i2s_tx_left_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(17),
      Q => \i2s_tx_left_reg[23]_0\(16),
      R => \^sr\(0)
    );
\i2s_tx_left_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(18),
      Q => \i2s_tx_left_reg[23]_0\(17),
      R => \^sr\(0)
    );
\i2s_tx_left_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(19),
      Q => \i2s_tx_left_reg[23]_0\(18),
      R => \^sr\(0)
    );
\i2s_tx_left_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(1),
      Q => \i2s_tx_left_reg[23]_0\(0),
      R => \^sr\(0)
    );
\i2s_tx_left_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(20),
      Q => \i2s_tx_left_reg[23]_0\(19),
      R => \^sr\(0)
    );
\i2s_tx_left_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(21),
      Q => \i2s_tx_left_reg[23]_0\(20),
      R => \^sr\(0)
    );
\i2s_tx_left_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(22),
      Q => \i2s_tx_left_reg[23]_0\(21),
      R => \^sr\(0)
    );
\i2s_tx_left_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(23),
      Q => \i2s_tx_left_reg[23]_0\(22),
      R => \^sr\(0)
    );
\i2s_tx_left_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(2),
      Q => \i2s_tx_left_reg[23]_0\(1),
      R => \^sr\(0)
    );
\i2s_tx_left_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(3),
      Q => \i2s_tx_left_reg[23]_0\(2),
      R => \^sr\(0)
    );
\i2s_tx_left_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(4),
      Q => \i2s_tx_left_reg[23]_0\(3),
      R => \^sr\(0)
    );
\i2s_tx_left_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(5),
      Q => \i2s_tx_left_reg[23]_0\(4),
      R => \^sr\(0)
    );
\i2s_tx_left_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(6),
      Q => \i2s_tx_left_reg[23]_0\(5),
      R => \^sr\(0)
    );
\i2s_tx_left_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(7),
      Q => \i2s_tx_left_reg[23]_0\(6),
      R => \^sr\(0)
    );
\i2s_tx_left_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(8),
      Q => \i2s_tx_left_reg[23]_0\(7),
      R => \^sr\(0)
    );
\i2s_tx_left_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_left_reg[23]_1\(9),
      Q => \i2s_tx_left_reg[23]_0\(8),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(0),
      Q => i2s_tx_right(0),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(10),
      Q => Q(9),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(11),
      Q => Q(10),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(12),
      Q => Q(11),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(13),
      Q => Q(12),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(14),
      Q => Q(13),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(15),
      Q => Q(14),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(16),
      Q => Q(15),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(17),
      Q => Q(16),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(18),
      Q => Q(17),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(19),
      Q => Q(18),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(1),
      Q => Q(0),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(20),
      Q => Q(19),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(21),
      Q => Q(20),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(22),
      Q => Q(21),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(23),
      Q => Q(22),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(2),
      Q => Q(1),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(3),
      Q => Q(2),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(4),
      Q => Q(3),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(5),
      Q => Q(4),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(6),
      Q => Q(5),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(7),
      Q => Q(6),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(8),
      Q => Q(7),
      R => \^sr\(0)
    );
\i2s_tx_right_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \i2s_tx_left[23]_i_1_n_0\,
      D => \i2s_tx_right_reg[23]_0\(9),
      Q => Q(8),
      R => \^sr\(0)
    );
\load_sync_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \load_sync_reg_reg[0]_0\(0),
      Q => load_sync_reg(0),
      R => \^sr\(0)
    );
\load_sync_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => load_sync_reg(0),
      Q => load_sync_reg(1),
      R => \^sr\(0)
    );
\load_sync_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => load_sync_reg(1),
      Q => load_sync_reg(2),
      R => \^sr\(0)
    );
\right_latched[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^axi_data_valid\,
      I1 => \right_latched_reg[23]\,
      O => E(0)
    );
\rst_sync_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => \^sr\(0),
      D => '1',
      Q => rst_sync_reg(0)
    );
\rst_sync_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => \^sr\(0),
      D => rst_sync_reg(0),
      Q => rst_sync_reg(1)
    );
\tx_shift[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => i2s_tx_right(0),
      I1 => \i2s_tx_left_reg_n_0_[0]\,
      I2 => \tx_shift_reg[1]\,
      I3 => \tx_shift_reg[1]_0\(0),
      O => D(0)
    );
\valid_sync_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \valid_sync_reg_reg[0]_0\(0),
      Q => valid_sync_reg(0),
      R => \^sr\(0)
    );
\valid_sync_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => valid_sync_reg(0),
      Q => valid_sync_reg(1),
      R => \^sr\(0)
    );
\valid_sync_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => valid_sync_reg(1),
      Q => valid_sync_reg(2),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_AXI_I2S_0_0_i2s_transceiver is
  port (
    load_next_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    bclk_out : out STD_LOGIC;
    lrclk_out : out STD_LOGIC;
    sdata_tx : out STD_LOGIC;
    data_valid_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bit_counter_reg[5]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bit_counter_reg[1]_0\ : out STD_LOGIC;
    \rx_left_int_reg[23]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \rx_right_int_reg[23]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    mclk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 22 downto 0 );
    sdata_tx_reg_0 : in STD_LOGIC_VECTOR ( 22 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdata_rx : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_AXI_I2S_0_0_i2s_transceiver : entity is "i2s_transceiver";
end top_AXI_I2S_0_0_i2s_transceiver;

architecture STRUCTURE of top_AXI_I2S_0_0_i2s_transceiver is
  signal bclk_div : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \bclk_div[0]_i_1_n_0\ : STD_LOGIC;
  signal \bclk_div_reg_n_0_[0]\ : STD_LOGIC;
  signal \bclk_div_reg_n_0_[1]\ : STD_LOGIC;
  signal bclk_falling_i_1_n_0 : STD_LOGIC;
  signal bclk_falling_reg_n_0 : STD_LOGIC;
  signal \^bclk_out\ : STD_LOGIC;
  signal bclk_reg_i_2_n_0 : STD_LOGIC;
  signal bclk_rising : STD_LOGIC;
  signal bclk_rising_i_1_n_0 : STD_LOGIC;
  signal bit_counter : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \bit_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \^bit_counter_reg[1]_0\ : STD_LOGIC;
  signal \^bit_counter_reg[5]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \bit_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal data_valid_i_1_n_0 : STD_LOGIC;
  signal load_next_i_2_n_0 : STD_LOGIC;
  signal \^lrclk_out\ : STD_LOGIC;
  signal lrclk_reg_i_1_n_0 : STD_LOGIC;
  signal lrclk_reg_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \rx_left_int[23]_i_1_n_0\ : STD_LOGIC;
  signal \rx_left_int[23]_i_2_n_0\ : STD_LOGIC;
  signal rx_right_int : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rx_shift : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \sdata_rx_sync_reg_n_0_[0]\ : STD_LOGIC;
  signal \^sdata_tx\ : STD_LOGIC;
  signal sdata_tx6_out : STD_LOGIC;
  signal sdata_tx_0 : STD_LOGIC;
  signal sdata_tx_i_1_n_0 : STD_LOGIC;
  signal sdata_tx_i_3_n_0 : STD_LOGIC;
  signal sdata_tx_i_4_n_0 : STD_LOGIC;
  signal \tx_shift[10]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[11]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[12]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[13]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[14]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[15]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[16]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[17]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[18]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[19]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[20]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[21]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[22]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[23]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[23]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[8]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[9]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[10]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[11]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[12]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[13]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[14]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[15]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[16]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[17]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[18]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[19]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[20]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[21]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[22]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[5]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[6]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[7]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[8]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bclk_div[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of bclk_reg_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of bclk_rising_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bit_counter[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bit_counter[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bit_counter[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bit_counter[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bit_counter[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of load_next_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of lrclk_reg_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rx_left_int[23]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tx_shift[23]_i_3\ : label is "soft_lutpair3";
begin
  bclk_out <= \^bclk_out\;
  \bit_counter_reg[1]_0\ <= \^bit_counter_reg[1]_0\;
  \bit_counter_reg[5]_0\(0) <= \^bit_counter_reg[5]_0\(0);
  lrclk_out <= \^lrclk_out\;
  sdata_tx <= \^sdata_tx\;
\bclk_div[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bclk_div_reg_n_0_[0]\,
      O => \bclk_div[0]_i_1_n_0\
    );
\bclk_div[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bclk_div_reg_n_0_[0]\,
      I1 => \bclk_div_reg_n_0_[1]\,
      O => bclk_div(1)
    );
\bclk_div_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => \bclk_div[0]_i_1_n_0\,
      Q => \bclk_div_reg_n_0_[0]\,
      R => SR(0)
    );
\bclk_div_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => bclk_div(1),
      Q => \bclk_div_reg_n_0_[1]\,
      R => SR(0)
    );
bclk_falling_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \out\(0),
      I1 => \bclk_div_reg_n_0_[1]\,
      I2 => \bclk_div_reg_n_0_[0]\,
      O => bclk_falling_i_1_n_0
    );
bclk_falling_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => bclk_falling_i_1_n_0,
      Q => bclk_falling_reg_n_0,
      R => '0'
    );
bclk_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \bclk_div_reg_n_0_[1]\,
      I1 => \bclk_div_reg_n_0_[0]\,
      I2 => \^bclk_out\,
      O => bclk_reg_i_2_n_0
    );
bclk_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => bclk_reg_i_2_n_0,
      Q => \^bclk_out\,
      R => SR(0)
    );
bclk_rising_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bclk_div_reg_n_0_[0]\,
      I1 => \bclk_div_reg_n_0_[1]\,
      O => bclk_rising_i_1_n_0
    );
bclk_rising_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => bclk_rising_i_1_n_0,
      Q => bclk_rising,
      R => SR(0)
    );
\bit_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[0]\,
      O => bit_counter(0)
    );
\bit_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[1]\,
      I1 => \bit_counter_reg_n_0_[0]\,
      O => bit_counter(1)
    );
\bit_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[2]\,
      I1 => \bit_counter_reg_n_0_[0]\,
      I2 => \bit_counter_reg_n_0_[1]\,
      O => bit_counter(2)
    );
\bit_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[3]\,
      I1 => \bit_counter_reg_n_0_[1]\,
      I2 => \bit_counter_reg_n_0_[0]\,
      I3 => \bit_counter_reg_n_0_[2]\,
      O => bit_counter(3)
    );
\bit_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[4]\,
      I1 => \bit_counter_reg_n_0_[3]\,
      I2 => \bit_counter_reg_n_0_[2]\,
      I3 => \bit_counter_reg_n_0_[0]\,
      I4 => \bit_counter_reg_n_0_[1]\,
      O => bit_counter(4)
    );
\bit_counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bclk_div_reg_n_0_[0]\,
      I1 => \bclk_div_reg_n_0_[1]\,
      O => \bit_counter[5]_i_1_n_0\
    );
\bit_counter[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => \bit_counter_reg_n_0_[2]\,
      I2 => \bit_counter_reg_n_0_[0]\,
      I3 => \bit_counter_reg_n_0_[1]\,
      I4 => \bit_counter_reg_n_0_[4]\,
      I5 => \bit_counter_reg_n_0_[3]\,
      O => bit_counter(5)
    );
\bit_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \bit_counter[5]_i_1_n_0\,
      D => bit_counter(0),
      Q => \bit_counter_reg_n_0_[0]\,
      R => SR(0)
    );
\bit_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \bit_counter[5]_i_1_n_0\,
      D => bit_counter(1),
      Q => \bit_counter_reg_n_0_[1]\,
      R => SR(0)
    );
\bit_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \bit_counter[5]_i_1_n_0\,
      D => bit_counter(2),
      Q => \bit_counter_reg_n_0_[2]\,
      R => SR(0)
    );
\bit_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \bit_counter[5]_i_1_n_0\,
      D => bit_counter(3),
      Q => \bit_counter_reg_n_0_[3]\,
      R => SR(0)
    );
\bit_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \bit_counter[5]_i_1_n_0\,
      D => bit_counter(4),
      Q => \bit_counter_reg_n_0_[4]\,
      R => SR(0)
    );
\bit_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \bit_counter[5]_i_1_n_0\,
      D => bit_counter(5),
      Q => \^bit_counter_reg[5]_0\(0),
      R => SR(0)
    );
data_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[4]\,
      I1 => \bit_counter_reg_n_0_[3]\,
      I2 => \^bit_counter_reg[5]_0\(0),
      I3 => \out\(0),
      I4 => \rx_left_int[23]_i_2_n_0\,
      I5 => bclk_rising,
      O => data_valid_i_1_n_0
    );
data_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => mclk,
      CE => '1',
      D => data_valid_i_1_n_0,
      Q => data_valid_reg_0(0),
      R => '0'
    );
load_next_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[4]\,
      I1 => \bit_counter_reg_n_0_[3]\,
      I2 => load_next_i_2_n_0,
      I3 => bclk_falling_reg_n_0,
      I4 => \^bit_counter_reg[5]_0\(0),
      I5 => \bit_counter_reg_n_0_[0]\,
      O => sdata_tx6_out
    );
load_next_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[1]\,
      I1 => \bit_counter_reg_n_0_[2]\,
      O => load_next_i_2_n_0
    );
load_next_reg: unisim.vcomponents.FDRE
     port map (
      C => mclk,
      CE => '1',
      D => sdata_tx6_out,
      Q => load_next_reg_0(0),
      R => SR(0)
    );
lrclk_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => lrclk_reg_i_2_n_0,
      I1 => \bclk_div_reg_n_0_[0]\,
      I2 => \bclk_div_reg_n_0_[1]\,
      I3 => \^lrclk_out\,
      O => lrclk_reg_i_1_n_0
    );
lrclk_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => \bit_counter_reg_n_0_[3]\,
      I2 => \bit_counter_reg_n_0_[4]\,
      I3 => \bit_counter_reg_n_0_[2]\,
      I4 => \bit_counter_reg_n_0_[0]\,
      I5 => \bit_counter_reg_n_0_[1]\,
      O => lrclk_reg_i_2_n_0
    );
lrclk_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => lrclk_reg_i_1_n_0,
      Q => \^lrclk_out\,
      R => SR(0)
    );
\rx_left_int[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => \bit_counter_reg_n_0_[3]\,
      I2 => \bit_counter_reg_n_0_[4]\,
      I3 => \rx_left_int[23]_i_2_n_0\,
      I4 => bclk_rising,
      O => \rx_left_int[23]_i_1_n_0\
    );
\rx_left_int[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[2]\,
      I1 => \bit_counter_reg_n_0_[1]\,
      I2 => \bit_counter_reg_n_0_[0]\,
      O => \rx_left_int[23]_i_2_n_0\
    );
\rx_left_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(0),
      Q => \rx_left_int_reg[23]_0\(0),
      R => SR(0)
    );
\rx_left_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(10),
      Q => \rx_left_int_reg[23]_0\(10),
      R => SR(0)
    );
\rx_left_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(11),
      Q => \rx_left_int_reg[23]_0\(11),
      R => SR(0)
    );
\rx_left_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(12),
      Q => \rx_left_int_reg[23]_0\(12),
      R => SR(0)
    );
\rx_left_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(13),
      Q => \rx_left_int_reg[23]_0\(13),
      R => SR(0)
    );
\rx_left_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(14),
      Q => \rx_left_int_reg[23]_0\(14),
      R => SR(0)
    );
\rx_left_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(15),
      Q => \rx_left_int_reg[23]_0\(15),
      R => SR(0)
    );
\rx_left_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(16),
      Q => \rx_left_int_reg[23]_0\(16),
      R => SR(0)
    );
\rx_left_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(17),
      Q => \rx_left_int_reg[23]_0\(17),
      R => SR(0)
    );
\rx_left_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(18),
      Q => \rx_left_int_reg[23]_0\(18),
      R => SR(0)
    );
\rx_left_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(19),
      Q => \rx_left_int_reg[23]_0\(19),
      R => SR(0)
    );
\rx_left_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(1),
      Q => \rx_left_int_reg[23]_0\(1),
      R => SR(0)
    );
\rx_left_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(20),
      Q => \rx_left_int_reg[23]_0\(20),
      R => SR(0)
    );
\rx_left_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(21),
      Q => \rx_left_int_reg[23]_0\(21),
      R => SR(0)
    );
\rx_left_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(22),
      Q => \rx_left_int_reg[23]_0\(22),
      R => SR(0)
    );
\rx_left_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(23),
      Q => \rx_left_int_reg[23]_0\(23),
      R => SR(0)
    );
\rx_left_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(2),
      Q => \rx_left_int_reg[23]_0\(2),
      R => SR(0)
    );
\rx_left_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(3),
      Q => \rx_left_int_reg[23]_0\(3),
      R => SR(0)
    );
\rx_left_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(4),
      Q => \rx_left_int_reg[23]_0\(4),
      R => SR(0)
    );
\rx_left_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(5),
      Q => \rx_left_int_reg[23]_0\(5),
      R => SR(0)
    );
\rx_left_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(6),
      Q => \rx_left_int_reg[23]_0\(6),
      R => SR(0)
    );
\rx_left_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(7),
      Q => \rx_left_int_reg[23]_0\(7),
      R => SR(0)
    );
\rx_left_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(8),
      Q => \rx_left_int_reg[23]_0\(8),
      R => SR(0)
    );
\rx_left_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \rx_left_int[23]_i_1_n_0\,
      D => p_1_in(9),
      Q => \rx_left_int_reg[23]_0\(9),
      R => SR(0)
    );
\rx_right_int[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \rx_left_int[23]_i_2_n_0\,
      I1 => bclk_rising,
      I2 => \^bit_counter_reg[5]_0\(0),
      I3 => \bit_counter_reg_n_0_[3]\,
      I4 => \bit_counter_reg_n_0_[4]\,
      O => rx_right_int(0)
    );
\rx_right_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(0),
      Q => \rx_right_int_reg[23]_0\(0),
      R => SR(0)
    );
\rx_right_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(10),
      Q => \rx_right_int_reg[23]_0\(10),
      R => SR(0)
    );
\rx_right_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(11),
      Q => \rx_right_int_reg[23]_0\(11),
      R => SR(0)
    );
\rx_right_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(12),
      Q => \rx_right_int_reg[23]_0\(12),
      R => SR(0)
    );
\rx_right_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(13),
      Q => \rx_right_int_reg[23]_0\(13),
      R => SR(0)
    );
\rx_right_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(14),
      Q => \rx_right_int_reg[23]_0\(14),
      R => SR(0)
    );
\rx_right_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(15),
      Q => \rx_right_int_reg[23]_0\(15),
      R => SR(0)
    );
\rx_right_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(16),
      Q => \rx_right_int_reg[23]_0\(16),
      R => SR(0)
    );
\rx_right_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(17),
      Q => \rx_right_int_reg[23]_0\(17),
      R => SR(0)
    );
\rx_right_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(18),
      Q => \rx_right_int_reg[23]_0\(18),
      R => SR(0)
    );
\rx_right_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(19),
      Q => \rx_right_int_reg[23]_0\(19),
      R => SR(0)
    );
\rx_right_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(1),
      Q => \rx_right_int_reg[23]_0\(1),
      R => SR(0)
    );
\rx_right_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(20),
      Q => \rx_right_int_reg[23]_0\(20),
      R => SR(0)
    );
\rx_right_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(21),
      Q => \rx_right_int_reg[23]_0\(21),
      R => SR(0)
    );
\rx_right_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(22),
      Q => \rx_right_int_reg[23]_0\(22),
      R => SR(0)
    );
\rx_right_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(23),
      Q => \rx_right_int_reg[23]_0\(23),
      R => SR(0)
    );
\rx_right_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(2),
      Q => \rx_right_int_reg[23]_0\(2),
      R => SR(0)
    );
\rx_right_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(3),
      Q => \rx_right_int_reg[23]_0\(3),
      R => SR(0)
    );
\rx_right_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(4),
      Q => \rx_right_int_reg[23]_0\(4),
      R => SR(0)
    );
\rx_right_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(5),
      Q => \rx_right_int_reg[23]_0\(5),
      R => SR(0)
    );
\rx_right_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(6),
      Q => \rx_right_int_reg[23]_0\(6),
      R => SR(0)
    );
\rx_right_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(7),
      Q => \rx_right_int_reg[23]_0\(7),
      R => SR(0)
    );
\rx_right_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(8),
      Q => \rx_right_int_reg[23]_0\(8),
      R => SR(0)
    );
\rx_right_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_right_int(0),
      D => p_1_in(9),
      Q => \rx_right_int_reg[23]_0\(9),
      R => SR(0)
    );
\rx_shift[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FFFFFE00000000"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[2]\,
      I1 => \bit_counter_reg_n_0_[1]\,
      I2 => \bit_counter_reg_n_0_[0]\,
      I3 => \bit_counter_reg_n_0_[4]\,
      I4 => \bit_counter_reg_n_0_[3]\,
      I5 => bclk_rising,
      O => rx_shift(0)
    );
\rx_shift_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_shift(0),
      D => p_1_in(0),
      Q => p_1_in(1),
      R => SR(0)
    );
\rx_shift_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_shift(0),
      D => p_1_in(10),
      Q => p_1_in(11),
      R => SR(0)
    );
\rx_shift_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_shift(0),
      D => p_1_in(11),
      Q => p_1_in(12),
      R => SR(0)
    );
\rx_shift_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_shift(0),
      D => p_1_in(12),
      Q => p_1_in(13),
      R => SR(0)
    );
\rx_shift_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_shift(0),
      D => p_1_in(13),
      Q => p_1_in(14),
      R => SR(0)
    );
\rx_shift_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_shift(0),
      D => p_1_in(14),
      Q => p_1_in(15),
      R => SR(0)
    );
\rx_shift_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_shift(0),
      D => p_1_in(15),
      Q => p_1_in(16),
      R => SR(0)
    );
\rx_shift_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_shift(0),
      D => p_1_in(16),
      Q => p_1_in(17),
      R => SR(0)
    );
\rx_shift_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_shift(0),
      D => p_1_in(17),
      Q => p_1_in(18),
      R => SR(0)
    );
\rx_shift_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_shift(0),
      D => p_1_in(18),
      Q => p_1_in(19),
      R => SR(0)
    );
\rx_shift_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_shift(0),
      D => p_1_in(19),
      Q => p_1_in(20),
      R => SR(0)
    );
\rx_shift_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_shift(0),
      D => p_1_in(1),
      Q => p_1_in(2),
      R => SR(0)
    );
\rx_shift_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_shift(0),
      D => p_1_in(20),
      Q => p_1_in(21),
      R => SR(0)
    );
\rx_shift_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_shift(0),
      D => p_1_in(21),
      Q => p_1_in(22),
      R => SR(0)
    );
\rx_shift_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_shift(0),
      D => p_1_in(22),
      Q => p_1_in(23),
      R => SR(0)
    );
\rx_shift_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_shift(0),
      D => p_1_in(2),
      Q => p_1_in(3),
      R => SR(0)
    );
\rx_shift_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_shift(0),
      D => p_1_in(3),
      Q => p_1_in(4),
      R => SR(0)
    );
\rx_shift_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_shift(0),
      D => p_1_in(4),
      Q => p_1_in(5),
      R => SR(0)
    );
\rx_shift_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_shift(0),
      D => p_1_in(5),
      Q => p_1_in(6),
      R => SR(0)
    );
\rx_shift_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_shift(0),
      D => p_1_in(6),
      Q => p_1_in(7),
      R => SR(0)
    );
\rx_shift_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_shift(0),
      D => p_1_in(7),
      Q => p_1_in(8),
      R => SR(0)
    );
\rx_shift_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_shift(0),
      D => p_1_in(8),
      Q => p_1_in(9),
      R => SR(0)
    );
\rx_shift_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => rx_shift(0),
      D => p_1_in(9),
      Q => p_1_in(10),
      R => SR(0)
    );
\sdata_rx_sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => sdata_rx,
      Q => \sdata_rx_sync_reg_n_0_[0]\,
      R => SR(0)
    );
\sdata_rx_sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => \sdata_rx_sync_reg_n_0_[0]\,
      Q => p_1_in(0),
      R => SR(0)
    );
sdata_tx_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => \out\(0),
      I1 => sdata_tx_0,
      I2 => bclk_falling_reg_n_0,
      I3 => \^sdata_tx\,
      I4 => sdata_tx_i_3_n_0,
      O => sdata_tx_i_1_n_0
    );
sdata_tx_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0B08"
    )
        port map (
      I0 => Q(22),
      I1 => \^bit_counter_reg[5]_0\(0),
      I2 => \^bit_counter_reg[1]_0\,
      I3 => sdata_tx_reg_0(22),
      I4 => sdata_tx_i_4_n_0,
      O => sdata_tx_0
    );
sdata_tx_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[0]\,
      I1 => \^bit_counter_reg[5]_0\(0),
      I2 => bclk_falling_reg_n_0,
      I3 => load_next_i_2_n_0,
      I4 => \bit_counter_reg_n_0_[3]\,
      I5 => \bit_counter_reg_n_0_[4]\,
      O => sdata_tx_i_3_n_0
    );
sdata_tx_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FF0000FFFC0000"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[0]\,
      I1 => \bit_counter_reg_n_0_[1]\,
      I2 => \bit_counter_reg_n_0_[2]\,
      I3 => \bit_counter_reg_n_0_[4]\,
      I4 => p_0_in,
      I5 => \bit_counter_reg_n_0_[3]\,
      O => sdata_tx_i_4_n_0
    );
sdata_tx_reg: unisim.vcomponents.FDRE
     port map (
      C => mclk,
      CE => '1',
      D => sdata_tx_i_1_n_0,
      Q => \^sdata_tx\,
      R => '0'
    );
\tx_shift[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => sdata_tx_reg_0(8),
      I2 => Q(8),
      I3 => \tx_shift_reg_n_0_[9]\,
      I4 => \^bit_counter_reg[1]_0\,
      O => \tx_shift[10]_i_1_n_0\
    );
\tx_shift[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => sdata_tx_reg_0(9),
      I2 => Q(9),
      I3 => \tx_shift_reg_n_0_[10]\,
      I4 => \^bit_counter_reg[1]_0\,
      O => \tx_shift[11]_i_1_n_0\
    );
\tx_shift[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => sdata_tx_reg_0(10),
      I2 => Q(10),
      I3 => \tx_shift_reg_n_0_[11]\,
      I4 => \^bit_counter_reg[1]_0\,
      O => \tx_shift[12]_i_1_n_0\
    );
\tx_shift[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => sdata_tx_reg_0(11),
      I2 => Q(11),
      I3 => \tx_shift_reg_n_0_[12]\,
      I4 => \^bit_counter_reg[1]_0\,
      O => \tx_shift[13]_i_1_n_0\
    );
\tx_shift[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => sdata_tx_reg_0(12),
      I2 => Q(12),
      I3 => \tx_shift_reg_n_0_[13]\,
      I4 => \^bit_counter_reg[1]_0\,
      O => \tx_shift[14]_i_1_n_0\
    );
\tx_shift[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => sdata_tx_reg_0(13),
      I2 => Q(13),
      I3 => \tx_shift_reg_n_0_[14]\,
      I4 => \^bit_counter_reg[1]_0\,
      O => \tx_shift[15]_i_1_n_0\
    );
\tx_shift[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => sdata_tx_reg_0(14),
      I2 => Q(14),
      I3 => \tx_shift_reg_n_0_[15]\,
      I4 => \^bit_counter_reg[1]_0\,
      O => \tx_shift[16]_i_1_n_0\
    );
\tx_shift[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => sdata_tx_reg_0(15),
      I2 => Q(15),
      I3 => \tx_shift_reg_n_0_[16]\,
      I4 => \^bit_counter_reg[1]_0\,
      O => \tx_shift[17]_i_1_n_0\
    );
\tx_shift[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => sdata_tx_reg_0(16),
      I2 => Q(16),
      I3 => \tx_shift_reg_n_0_[17]\,
      I4 => \^bit_counter_reg[1]_0\,
      O => \tx_shift[18]_i_1_n_0\
    );
\tx_shift[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => sdata_tx_reg_0(17),
      I2 => Q(17),
      I3 => \tx_shift_reg_n_0_[18]\,
      I4 => \^bit_counter_reg[1]_0\,
      O => \tx_shift[19]_i_1_n_0\
    );
\tx_shift[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => sdata_tx_reg_0(18),
      I2 => Q(18),
      I3 => \tx_shift_reg_n_0_[19]\,
      I4 => \^bit_counter_reg[1]_0\,
      O => \tx_shift[20]_i_1_n_0\
    );
\tx_shift[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => sdata_tx_reg_0(19),
      I2 => Q(19),
      I3 => \tx_shift_reg_n_0_[20]\,
      I4 => \^bit_counter_reg[1]_0\,
      O => \tx_shift[21]_i_1_n_0\
    );
\tx_shift[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => sdata_tx_reg_0(20),
      I2 => Q(20),
      I3 => \tx_shift_reg_n_0_[21]\,
      I4 => \^bit_counter_reg[1]_0\,
      O => \tx_shift[22]_i_1_n_0\
    );
\tx_shift[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FFFFFE00000000"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[2]\,
      I1 => \bit_counter_reg_n_0_[1]\,
      I2 => \bit_counter_reg_n_0_[0]\,
      I3 => \bit_counter_reg_n_0_[4]\,
      I4 => \bit_counter_reg_n_0_[3]\,
      I5 => bclk_falling_reg_n_0,
      O => \tx_shift[23]_i_1_n_0\
    );
\tx_shift[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => sdata_tx_reg_0(21),
      I2 => Q(21),
      I3 => \tx_shift_reg_n_0_[22]\,
      I4 => \^bit_counter_reg[1]_0\,
      O => \tx_shift[23]_i_2_n_0\
    );
\tx_shift[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[1]\,
      I1 => \bit_counter_reg_n_0_[2]\,
      I2 => \bit_counter_reg_n_0_[3]\,
      I3 => \bit_counter_reg_n_0_[4]\,
      I4 => \bit_counter_reg_n_0_[0]\,
      O => \^bit_counter_reg[1]_0\
    );
\tx_shift[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => sdata_tx_reg_0(0),
      I2 => Q(0),
      I3 => \tx_shift_reg_n_0_[1]\,
      I4 => \^bit_counter_reg[1]_0\,
      O => \tx_shift[2]_i_1_n_0\
    );
\tx_shift[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => sdata_tx_reg_0(1),
      I2 => Q(1),
      I3 => \tx_shift_reg_n_0_[2]\,
      I4 => \^bit_counter_reg[1]_0\,
      O => \tx_shift[3]_i_1_n_0\
    );
\tx_shift[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => sdata_tx_reg_0(2),
      I2 => Q(2),
      I3 => \tx_shift_reg_n_0_[3]\,
      I4 => \^bit_counter_reg[1]_0\,
      O => \tx_shift[4]_i_1_n_0\
    );
\tx_shift[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => sdata_tx_reg_0(3),
      I2 => Q(3),
      I3 => \tx_shift_reg_n_0_[4]\,
      I4 => \^bit_counter_reg[1]_0\,
      O => \tx_shift[5]_i_1_n_0\
    );
\tx_shift[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => sdata_tx_reg_0(4),
      I2 => Q(4),
      I3 => \tx_shift_reg_n_0_[5]\,
      I4 => \^bit_counter_reg[1]_0\,
      O => \tx_shift[6]_i_1_n_0\
    );
\tx_shift[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => sdata_tx_reg_0(5),
      I2 => Q(5),
      I3 => \tx_shift_reg_n_0_[6]\,
      I4 => \^bit_counter_reg[1]_0\,
      O => \tx_shift[7]_i_1_n_0\
    );
\tx_shift[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => sdata_tx_reg_0(6),
      I2 => Q(6),
      I3 => \tx_shift_reg_n_0_[7]\,
      I4 => \^bit_counter_reg[1]_0\,
      O => \tx_shift[8]_i_1_n_0\
    );
\tx_shift[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
        port map (
      I0 => \^bit_counter_reg[5]_0\(0),
      I1 => sdata_tx_reg_0(7),
      I2 => Q(7),
      I3 => \tx_shift_reg_n_0_[8]\,
      I4 => \^bit_counter_reg[1]_0\,
      O => \tx_shift[9]_i_1_n_0\
    );
\tx_shift_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[10]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[10]\,
      R => SR(0)
    );
\tx_shift_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[11]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[11]\,
      R => SR(0)
    );
\tx_shift_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[12]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[12]\,
      R => SR(0)
    );
\tx_shift_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[13]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[13]\,
      R => SR(0)
    );
\tx_shift_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[14]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[14]\,
      R => SR(0)
    );
\tx_shift_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[15]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[15]\,
      R => SR(0)
    );
\tx_shift_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[16]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[16]\,
      R => SR(0)
    );
\tx_shift_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[17]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[17]\,
      R => SR(0)
    );
\tx_shift_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[18]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[18]\,
      R => SR(0)
    );
\tx_shift_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[19]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[19]\,
      R => SR(0)
    );
\tx_shift_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \tx_shift[23]_i_1_n_0\,
      D => D(0),
      Q => \tx_shift_reg_n_0_[1]\,
      R => SR(0)
    );
\tx_shift_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[20]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[20]\,
      R => SR(0)
    );
\tx_shift_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[21]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[21]\,
      R => SR(0)
    );
\tx_shift_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[22]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[22]\,
      R => SR(0)
    );
\tx_shift_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[23]_i_2_n_0\,
      Q => p_0_in,
      R => SR(0)
    );
\tx_shift_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[2]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[2]\,
      R => SR(0)
    );
\tx_shift_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[3]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[3]\,
      R => SR(0)
    );
\tx_shift_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[4]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[4]\,
      R => SR(0)
    );
\tx_shift_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[5]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[5]\,
      R => SR(0)
    );
\tx_shift_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[6]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[6]\,
      R => SR(0)
    );
\tx_shift_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[7]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[7]\,
      R => SR(0)
    );
\tx_shift_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[8]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[8]\,
      R => SR(0)
    );
\tx_shift_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[9]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[9]\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_AXI_I2S_0_0_AXI_I2S is
  port (
    axis_tvalid_reg_reg : out STD_LOGIC;
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sdata_tx : out STD_LOGIC;
    axis_tready_reg_reg : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    bclk_out : out STD_LOGIC;
    lrclk_out : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    mclk : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    sdata_rx : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_AXI_I2S_0_0_AXI_I2S : entity is "AXI_I2S";
end top_AXI_I2S_0_0_AXI_I2S;

architecture STRUCTURE of top_AXI_I2S_0_0_AXI_I2S is
  signal AXI_I2S_master_stream_v1_0_M00_AXIS_inst_n_2 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_2 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_28 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_31 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_32 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_33 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_34 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_35 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_36 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_37 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_38 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_39 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_4 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_40 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_41 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_42 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_43 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_44 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_45 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_46 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_47 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_48 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_49 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_50 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_51 : STD_LOGIC;
  signal CDC_Audio_Bridge_inst_n_52 : STD_LOGIC;
  signal I2S_transceiver_inst_n_5 : STD_LOGIC;
  signal I2S_transceiver_inst_n_6 : STD_LOGIC;
  signal axi_data_valid : STD_LOGIC;
  signal axi_load_next : STD_LOGIC;
  signal axi_rx_left : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal axi_rx_right : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal data0 : STD_LOGIC;
  signal data_valid : STD_LOGIC;
  signal i2s_tx_right : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal load_next : STD_LOGIC;
  signal resetn : STD_LOGIC;
  signal right_latched : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rx_left_int : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal rx_right_int : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal tx_left_data : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal tx_right_data : STD_LOGIC_VECTOR ( 23 downto 0 );
begin
AXI_I2S_master_stream_v1_0_M00_AXIS_inst: entity work.top_AXI_I2S_0_0_AXI_I2S_master_stream_v1_0_M00_AXIS
     port map (
      E(0) => right_latched(0),
      \FSM_onehot_tx_state_reg[0]_0\ => AXI_I2S_master_stream_v1_0_M00_AXIS_inst_n_2,
      Q(23 downto 0) => axi_rx_left(23 downto 0),
      SR(0) => CDC_Audio_Bridge_inst_n_2,
      axi_data_valid => axi_data_valid,
      axis_tvalid_reg_reg_0 => axis_tvalid_reg_reg,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_tdata(23 downto 0) => m00_axis_tdata(23 downto 0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      \right_latched_reg[23]_0\(23 downto 0) => axi_rx_right(23 downto 0)
    );
AXI_I2S_slave_lite_v1_0_S00_AXI_inst: entity work.top_AXI_I2S_0_0_AXI_I2S_slave_lite_v1_0_S00_AXI
     port map (
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
AXI_I2S_slave_stream_v1_0_S00_AXIS_inst: entity work.top_AXI_I2S_0_0_AXI_I2S_slave_stream_v1_0_S00_AXIS
     port map (
      Q(23 downto 0) => tx_left_data(23 downto 0),
      axi_load_next => axi_load_next,
      axis_tready_reg_reg_0 => axis_tready_reg_reg,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(23 downto 0) => s00_axis_tdata(23 downto 0),
      s00_axis_tvalid => s00_axis_tvalid,
      \tx_right_data_reg[23]_0\(23 downto 0) => tx_right_data(23 downto 0)
    );
CDC_Audio_Bridge_inst: entity work.top_AXI_I2S_0_0_CDC_Audio_Bridge
     port map (
      D(0) => CDC_Audio_Bridge_inst_n_4,
      E(0) => right_latched(0),
      Q(22 downto 0) => i2s_tx_right(23 downto 1),
      SR(0) => CDC_Audio_Bridge_inst_n_2,
      axi_data_valid => axi_data_valid,
      axi_load_next => axi_load_next,
      \axi_rx_left_reg[23]_0\(23 downto 0) => axi_rx_left(23 downto 0),
      \axi_rx_left_reg[23]_1\(23 downto 0) => rx_left_int(23 downto 0),
      \axi_rx_right_reg[23]_0\(23 downto 0) => axi_rx_right(23 downto 0),
      \axi_rx_right_reg[23]_1\(23 downto 0) => rx_right_int(23 downto 0),
      \i2s_tx_left_reg[23]_0\(22) => data0,
      \i2s_tx_left_reg[23]_0\(21) => CDC_Audio_Bridge_inst_n_31,
      \i2s_tx_left_reg[23]_0\(20) => CDC_Audio_Bridge_inst_n_32,
      \i2s_tx_left_reg[23]_0\(19) => CDC_Audio_Bridge_inst_n_33,
      \i2s_tx_left_reg[23]_0\(18) => CDC_Audio_Bridge_inst_n_34,
      \i2s_tx_left_reg[23]_0\(17) => CDC_Audio_Bridge_inst_n_35,
      \i2s_tx_left_reg[23]_0\(16) => CDC_Audio_Bridge_inst_n_36,
      \i2s_tx_left_reg[23]_0\(15) => CDC_Audio_Bridge_inst_n_37,
      \i2s_tx_left_reg[23]_0\(14) => CDC_Audio_Bridge_inst_n_38,
      \i2s_tx_left_reg[23]_0\(13) => CDC_Audio_Bridge_inst_n_39,
      \i2s_tx_left_reg[23]_0\(12) => CDC_Audio_Bridge_inst_n_40,
      \i2s_tx_left_reg[23]_0\(11) => CDC_Audio_Bridge_inst_n_41,
      \i2s_tx_left_reg[23]_0\(10) => CDC_Audio_Bridge_inst_n_42,
      \i2s_tx_left_reg[23]_0\(9) => CDC_Audio_Bridge_inst_n_43,
      \i2s_tx_left_reg[23]_0\(8) => CDC_Audio_Bridge_inst_n_44,
      \i2s_tx_left_reg[23]_0\(7) => CDC_Audio_Bridge_inst_n_45,
      \i2s_tx_left_reg[23]_0\(6) => CDC_Audio_Bridge_inst_n_46,
      \i2s_tx_left_reg[23]_0\(5) => CDC_Audio_Bridge_inst_n_47,
      \i2s_tx_left_reg[23]_0\(4) => CDC_Audio_Bridge_inst_n_48,
      \i2s_tx_left_reg[23]_0\(3) => CDC_Audio_Bridge_inst_n_49,
      \i2s_tx_left_reg[23]_0\(2) => CDC_Audio_Bridge_inst_n_50,
      \i2s_tx_left_reg[23]_0\(1) => CDC_Audio_Bridge_inst_n_51,
      \i2s_tx_left_reg[23]_0\(0) => CDC_Audio_Bridge_inst_n_52,
      \i2s_tx_left_reg[23]_1\(23 downto 0) => tx_left_data(23 downto 0),
      \i2s_tx_right_reg[23]_0\(23 downto 0) => tx_right_data(23 downto 0),
      \load_sync_reg_reg[0]_0\(0) => load_next,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      mclk => mclk,
      \out\(0) => resetn,
      \right_latched_reg[23]\ => AXI_I2S_master_stream_v1_0_M00_AXIS_inst_n_2,
      \rst_sync_reg_reg[1]_0\(0) => CDC_Audio_Bridge_inst_n_28,
      \tx_shift_reg[1]\ => I2S_transceiver_inst_n_6,
      \tx_shift_reg[1]_0\(0) => I2S_transceiver_inst_n_5,
      \valid_sync_reg_reg[0]_0\(0) => data_valid
    );
I2S_transceiver_inst: entity work.top_AXI_I2S_0_0_i2s_transceiver
     port map (
      D(0) => CDC_Audio_Bridge_inst_n_4,
      Q(22 downto 0) => i2s_tx_right(23 downto 1),
      SR(0) => CDC_Audio_Bridge_inst_n_28,
      bclk_out => bclk_out,
      \bit_counter_reg[1]_0\ => I2S_transceiver_inst_n_6,
      \bit_counter_reg[5]_0\(0) => I2S_transceiver_inst_n_5,
      data_valid_reg_0(0) => data_valid,
      load_next_reg_0(0) => load_next,
      lrclk_out => lrclk_out,
      mclk => mclk,
      \out\(0) => resetn,
      \rx_left_int_reg[23]_0\(23 downto 0) => rx_left_int(23 downto 0),
      \rx_right_int_reg[23]_0\(23 downto 0) => rx_right_int(23 downto 0),
      sdata_rx => sdata_rx,
      sdata_tx => sdata_tx,
      sdata_tx_reg_0(22) => data0,
      sdata_tx_reg_0(21) => CDC_Audio_Bridge_inst_n_31,
      sdata_tx_reg_0(20) => CDC_Audio_Bridge_inst_n_32,
      sdata_tx_reg_0(19) => CDC_Audio_Bridge_inst_n_33,
      sdata_tx_reg_0(18) => CDC_Audio_Bridge_inst_n_34,
      sdata_tx_reg_0(17) => CDC_Audio_Bridge_inst_n_35,
      sdata_tx_reg_0(16) => CDC_Audio_Bridge_inst_n_36,
      sdata_tx_reg_0(15) => CDC_Audio_Bridge_inst_n_37,
      sdata_tx_reg_0(14) => CDC_Audio_Bridge_inst_n_38,
      sdata_tx_reg_0(13) => CDC_Audio_Bridge_inst_n_39,
      sdata_tx_reg_0(12) => CDC_Audio_Bridge_inst_n_40,
      sdata_tx_reg_0(11) => CDC_Audio_Bridge_inst_n_41,
      sdata_tx_reg_0(10) => CDC_Audio_Bridge_inst_n_42,
      sdata_tx_reg_0(9) => CDC_Audio_Bridge_inst_n_43,
      sdata_tx_reg_0(8) => CDC_Audio_Bridge_inst_n_44,
      sdata_tx_reg_0(7) => CDC_Audio_Bridge_inst_n_45,
      sdata_tx_reg_0(6) => CDC_Audio_Bridge_inst_n_46,
      sdata_tx_reg_0(5) => CDC_Audio_Bridge_inst_n_47,
      sdata_tx_reg_0(4) => CDC_Audio_Bridge_inst_n_48,
      sdata_tx_reg_0(3) => CDC_Audio_Bridge_inst_n_49,
      sdata_tx_reg_0(2) => CDC_Audio_Bridge_inst_n_50,
      sdata_tx_reg_0(1) => CDC_Audio_Bridge_inst_n_51,
      sdata_tx_reg_0(0) => CDC_Audio_Bridge_inst_n_52
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_AXI_I2S_0_0 is
  port (
    mclk : in STD_LOGIC;
    bclk_out : out STD_LOGIC;
    lrclk_out : out STD_LOGIC;
    sdata_tx : out STD_LOGIC;
    sdata_rx : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_AXI_I2S_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_AXI_I2S_0_0 : entity is "top_AXI_I2S_0_0,AXI_I2S,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_AXI_I2S_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of top_AXI_I2S_0_0 : entity is "AXI_I2S,Vivado 2025.2";
end top_AXI_I2S_0_0;

architecture STRUCTURE of top_AXI_I2S_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m00_axis_tdata\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of m00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of m00_axis_aclk : signal is "slave M00_AXIS_CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of m00_axis_aclk : signal is "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of m00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST";
  attribute x_interface_mode of m00_axis_aresetn : signal is "slave M00_AXIS_RST";
  attribute x_interface_parameter of m00_axis_aresetn : signal is "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute x_interface_info of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute x_interface_info of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute x_interface_mode of m00_axis_tvalid : signal is "master M00_AXIS";
  attribute x_interface_parameter of m00_axis_tvalid : signal is "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_mode of s00_axi_aclk : signal is "slave S00_AXI_CLK";
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_mode of s00_axi_aresetn : signal is "slave S00_AXI_RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK";
  attribute x_interface_mode of s00_axis_aclk : signal is "slave S00_AXIS_CLK";
  attribute x_interface_parameter of s00_axis_aclk : signal is "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST";
  attribute x_interface_mode of s00_axis_aresetn : signal is "slave S00_AXIS_RST";
  attribute x_interface_parameter of s00_axis_aresetn : signal is "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TLAST";
  attribute x_interface_info of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TREADY";
  attribute x_interface_mode of s00_axis_tready : signal is "slave S00_AXIS";
  attribute x_interface_parameter of s00_axis_tready : signal is "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TVALID";
  attribute x_interface_info of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute x_interface_info of m00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_mode of s00_axi_awaddr : signal is "slave S00_AXI";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  attribute x_interface_info of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDATA";
  attribute x_interface_info of s00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB";
begin
  m00_axis_tdata(31) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(30) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(29) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(28) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(27) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(26) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(25) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(24) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(23) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(22 downto 0) <= \^m00_axis_tdata\(22 downto 0);
  m00_axis_tstrb(3) <= \<const1>\;
  m00_axis_tstrb(2) <= \<const1>\;
  m00_axis_tstrb(1) <= \<const1>\;
  m00_axis_tstrb(0) <= \<const1>\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.top_AXI_I2S_0_0_AXI_I2S
     port map (
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_rvalid_reg => s00_axi_rvalid,
      axis_tready_reg_reg => s00_axis_tready,
      axis_tvalid_reg_reg => m00_axis_tvalid,
      bclk_out => bclk_out,
      lrclk_out => lrclk_out,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tdata(23) => \^m00_axis_tdata\(30),
      m00_axis_tdata(22 downto 0) => \^m00_axis_tdata\(22 downto 0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      mclk => mclk,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(23 downto 0) => s00_axis_tdata(23 downto 0),
      s00_axis_tvalid => s00_axis_tvalid,
      sdata_rx => sdata_rx,
      sdata_tx => sdata_tx
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
