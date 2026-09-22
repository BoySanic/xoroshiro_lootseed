// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Sep 22 15:15:27 2026
// Host        : T490s running 64-bit CachyOS
// Command     : write_verilog -force -mode funcsim
//               /home/boysanic/git/xoroshiro_lootseed/lootseed.gen/sources_1/ip/goldenratio_add/goldenratio_add_sim_netlist.v
// Design      : goldenratio_add
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k480tffg1156-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "goldenratio_add,c_addsub_v12_0_21,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_21,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module goldenratio_add
   (A,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_mode = "slave a_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [63:0]A;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_mode = "slave ce_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_mode = "master s_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [63:0]S;

  wire [63:0]A;
  wire CE;
  wire CLK;
  wire [63:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "64" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "1" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "1001111000110111011110011011100101111111010010100111110000010101" *) 
  (* c_b_width = "64" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "64" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  goldenratio_add_c_addsub_v12_0_21 U0
       (.A(A),
        .ADD(1'b1),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
iAcC0jwWy9Z5+wl+B8MhHqxxL5TfadxgWGZ+9slm8BFFTgz/icCG22xcVWRmDuK3N9Rb/B5NiGwN
e/xgYClcjFKLFKF6obpmTy3RQlN7DScdrXr2QPScDw/WCtjYdj9MXrrsTWVQwdcVB9Y8aCZ9hPfz
DJKtmoIuwh46MnjDL78=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U/zku1ffpc6imSyt/Wbh/wmt3ZQgYvnE2OQTi42Jd8LcGOrhT9PAdtwSQdTSCH1dxjktZRV+QtvX
8A4bc4cWoFA/p1DWMlh6rWbKmGKWlYaZWym65dURxZuhDRjCpUhGkTx09hzOAo4rS/y5qBVT0XM+
chpLC4mb8yrj9h9eIo0+QwmXPTyVq9UwMd8Uw7pzoUr1HZEoR73gGH3BCtAKbRQcU0RH03UzLnf7
qNxZVR3943pSRYhj4ZU3ACas36w9K8itP5nYl7hsMlDumjQrrXyzDC9maknE3klhemcvOpkd59zw
cw/o4zuOPBecIZRMu2V7hDGgqHe4jLQHnlbpig==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SWFvi0bYUA0VvwnOjVGnOuCVpr45WDSNZC6FHRlU2Pb6y7bUQB4QXLRpCrMe9fVqN/aig/5T/xu2
qyygh05r+nkKin8SM+PyK9x7oVaFGtQe2XZ1Yt1pHtev9TRVuDTX344eBL1SzvU6VlmiM8y3i/yc
mO7Wkl5Zkq7T+cTNuCk=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E1brfDHDtCUmBjWNysgUzttlnzXf+4/bkYl5Jm5ar5ZmwHNiefxalW+NIno0w0UgPyY1g8FwagIf
OTUvGsmmvU5SQUnE3xfIjHV4X6MRb4wDHxQQrWW/PzC1ilb+efMt8vNanP7YSsnW44o3L4LbnoWR
toWSG2PdT8djxmp2lAIwLAZM7HPSNbv1AjNlZQiS/ogXl9pXdCKzCc6lrk8daEjoFGCInCVSSamq
/NvzxtTj2Lxi99fW/ZYnu6qbM7mn9RzAo1s/4ePEOMn77xYEdG2q93oL6WjdmK3ArXFoo0uq09VE
ZCpBgpDg+/NYnz+k/MeL8pl0avq3E1SX/7OFbQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QUq9iWMx9C09gSO7bXme3TQAT+KpWBDIgwuc5mquAxoXBxbjrXkAOyUlFPDvAR8zUigyn48IFmVM
R1ZXi89FZ/93iIMKDEzJsMwNO20nnmtgBhV7wdmZYED778+HpTDaOd48EEZFa13zrADED27mGYPQ
K7yigaVTlUFFr4LOdtvf4os7kjEmAl5h6/eTZYs9d6+ec/BJcAsfvRMqmY/fiPN1UszYmMy14wg/
/QG4nKULNjCxDHD18hFkLHixX0kiaC/KXUJZHxCJG+wNP1g7zwbL73MklY+QgJuzeT1jUBOr7Lz8
Q3+dk4nPKP6Z6uRU3TSVCW4kzGF/wAlkyhcJgw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KR91xvxUjHsIQTi6U9bSVmI7HXoSYi4F+/eG3Fx9n+MbrXO3Z0W5QX2Jsh503RAANZJ3jzcoQz8v
kZ6cc7DolfEItw3LQPZ7IllnHRl/mM9pdjaXUMmHXpm9SRepU+5DDmaVSlGI6ctxxuU5Z1QorU7S
JQf5p8ub+IfjMCa/cS4+xo76OOvbW0ddoLtGS43DYJq5tCXsiZFNF540pTZeqwuLkTjn13yPIxxn
zR9EpMicO506i84arUwjcV1ox750MgDJCa01vAFg33ZXr88tziMxFid5Fe6qO6xbAir+13+6CUO1
7IRSgtROityJcgEFBV/fVaax+NCLv6TZxtwyJw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E3dWRjbWg0PDvbIA3yDMBfgzFLFLB4qRDkWJ7V0l/03Ki/NR4OKM2fTjDrLuZFI12IXFFTF+I+Zv
Zw4B8GGzhipssnWs5DSTGjkWe12/kifre/tY812o1q1FXFv9RrBmBYZrBqcPz1kbbhmfYE7Y1Taq
e8yz1FRCjMagQBkCD1zMWjdWBH+3x+RUrjp7OQOuSbwgl1v7UiTl9vdSrzm/aSIbwTT2tmgEABi5
Sdn47hIlyOQ1A9x6RdTw98rq2pQSKIgxj45/IRkT+sn6zkRRQH9UlZESNYNsi6j5mGxWFPwV/b6V
3e6wLofc4TTgJvHClOH1UDi0WlkTLmu8E7cGPg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
ptQEntk2x7+Sf12mvNf1M4bwjBbWFpn2H2nhu45YXH4flC5Odk/MFv8wE0eXI73i/5lE2adRAawy
9Qx94hmQl4+g+9lEgLxvBJk34bePr/0WoUQY9p8Xd/vuOwjJXfzcy2LWwtadlxVGrGFSxkRuL9GW
EAzu92F+K4kagkji1XFzF/3VvOtewrkHF9xStIVAcIm8WClqFGPLQJhjrPvYZdCKP89sNwZLJWSU
yVG3Ajs58ZDGHX9wUsWpEtbQ49GfOuFJnzuBj3jE5fgTi8NGWmrmfhnWu/9wd7sbTLNIC1Ucdfln
Y/AFxtyWCOTrMD5SSRB7EhdyyjbTJMQ1EJWBKgv8TqELPQm2W97zh85j7IYkMZu27T62r/qyucC6
tKcQo8CcNVak9JL9ExK9WwccDSrCCVDnHP/F4qTbIWZgTQEHsUEjU77n0rgUEAbj/yzQjYkSGBZ2
BAi/4CaLcePuTIpZaSs7aWaGyxSa5YpUQdtnrd3t4vZaG1PagLLtpgaz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hYEN7fufkwYhPajcK3XG6QEkCkax//hsK8UridEWhrru5vrLFKuh9saq486oIXVtuNSBATbtQWM0
//V1rspp1F1YO8fClxg2LQ4dOh1lC2dgWcAiagLUrL5gsKw0OKIyRn+jArLBMH5/LgeDMCN/X+zQ
kN+B3g6bDkotuK75mvLjgn5SkfuHUAfXPWkydI2lQtJW/waiIe5O6jNsm+mx0Rv7590wXcWy96fs
1bYIQFY/osRx0LYzTB7I+YNu6UzDCPEZyEY/bUvUoNAB0BE3ZVwAZW4wjCuTffptQ01KOSVJbIZ1
HNvUm2nr5OtDbCukrf9WO53B+POoCLRu+1rFwA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nZRDmSuplPRp+nSH093UkX36t0J50lUM89z5TQhEEeyDrgGSNUCTzgIkUg5nORT3IBT6dlmV4cth
DlemVZEoQqRZvClVJ2V68X8gY7QrordhXb8iEFuy0Z8qrSDn44Osc3QhXFfxMeic6g4Pcs+4mC7a
rk8djdWqEuagMnFE4atFEuNn2kRUcr7D32RqXvgGRpdYE1Z0QROp57Byikd8ubR2fBLSj5DTE3Qh
cz1tVqKY549SXyIICxJ1aofHpkHa0wnbdmQplykNKvCtbAefEhQcDIufbMjn2rk2aMopzH5lP4wq
hx53Ry5/WinyZ6nSamAYTAXby87gUUB5mV8w/w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
N3P1AaatxnvHBvBt79NHHEwck4dlI5+VqsiRplzpymTzSe3l4Q4xxXzWQJHzu8zEEzAVdXBh6rPs
CMT4OBE6wxotpmQ5g5xzKhE89KG1egIZhpqDuwILmEGJakXONjKMwoOqRNEnD4HIapHmUD16DW+8
LcRX/B0ItP1MBZw5Q4DLI8SQoXo7hCZB8moOl2SoUK8u0kbtrL2/nUaeHPZG8lKHjDK2jWE7y91v
95iaAwaOvg7JTpOt5Kqy5isEWWe+nfi8HI+H3nOtIJk7nxacWYeZpVT+f7IEPTEq2NlkmdQtuRKi
/6+lYWvg4nxrOY0b+AsBI43zlbp5PW/ZWAzKSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3040)
`pragma protect data_block
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
SUJxM7Xl2x3yCsJVBCeXLAhIBA==
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
iAcC0jwWy9Z5+wl+B8MhHqxxL5TfadxgWGZ+9slm8BFFTgz/icCG22xcVWRmDuK3N9Rb/B5NiGwN
e/xgYClcjFKLFKF6obpmTy3RQlN7DScdrXr2QPScDw/WCtjYdj9MXrrsTWVQwdcVB9Y8aCZ9hPfz
DJKtmoIuwh46MnjDL78=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U/zku1ffpc6imSyt/Wbh/wmt3ZQgYvnE2OQTi42Jd8LcGOrhT9PAdtwSQdTSCH1dxjktZRV+QtvX
8A4bc4cWoFA/p1DWMlh6rWbKmGKWlYaZWym65dURxZuhDRjCpUhGkTx09hzOAo4rS/y5qBVT0XM+
chpLC4mb8yrj9h9eIo0+QwmXPTyVq9UwMd8Uw7pzoUr1HZEoR73gGH3BCtAKbRQcU0RH03UzLnf7
qNxZVR3943pSRYhj4ZU3ACas36w9K8itP5nYl7hsMlDumjQrrXyzDC9maknE3klhemcvOpkd59zw
cw/o4zuOPBecIZRMu2V7hDGgqHe4jLQHnlbpig==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SWFvi0bYUA0VvwnOjVGnOuCVpr45WDSNZC6FHRlU2Pb6y7bUQB4QXLRpCrMe9fVqN/aig/5T/xu2
qyygh05r+nkKin8SM+PyK9x7oVaFGtQe2XZ1Yt1pHtev9TRVuDTX344eBL1SzvU6VlmiM8y3i/yc
mO7Wkl5Zkq7T+cTNuCk=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E1brfDHDtCUmBjWNysgUzttlnzXf+4/bkYl5Jm5ar5ZmwHNiefxalW+NIno0w0UgPyY1g8FwagIf
OTUvGsmmvU5SQUnE3xfIjHV4X6MRb4wDHxQQrWW/PzC1ilb+efMt8vNanP7YSsnW44o3L4LbnoWR
toWSG2PdT8djxmp2lAIwLAZM7HPSNbv1AjNlZQiS/ogXl9pXdCKzCc6lrk8daEjoFGCInCVSSamq
/NvzxtTj2Lxi99fW/ZYnu6qbM7mn9RzAo1s/4ePEOMn77xYEdG2q93oL6WjdmK3ArXFoo0uq09VE
ZCpBgpDg+/NYnz+k/MeL8pl0avq3E1SX/7OFbQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QUq9iWMx9C09gSO7bXme3TQAT+KpWBDIgwuc5mquAxoXBxbjrXkAOyUlFPDvAR8zUigyn48IFmVM
R1ZXi89FZ/93iIMKDEzJsMwNO20nnmtgBhV7wdmZYED778+HpTDaOd48EEZFa13zrADED27mGYPQ
K7yigaVTlUFFr4LOdtvf4os7kjEmAl5h6/eTZYs9d6+ec/BJcAsfvRMqmY/fiPN1UszYmMy14wg/
/QG4nKULNjCxDHD18hFkLHixX0kiaC/KXUJZHxCJG+wNP1g7zwbL73MklY+QgJuzeT1jUBOr7Lz8
Q3+dk4nPKP6Z6uRU3TSVCW4kzGF/wAlkyhcJgw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KR91xvxUjHsIQTi6U9bSVmI7HXoSYi4F+/eG3Fx9n+MbrXO3Z0W5QX2Jsh503RAANZJ3jzcoQz8v
kZ6cc7DolfEItw3LQPZ7IllnHRl/mM9pdjaXUMmHXpm9SRepU+5DDmaVSlGI6ctxxuU5Z1QorU7S
JQf5p8ub+IfjMCa/cS4+xo76OOvbW0ddoLtGS43DYJq5tCXsiZFNF540pTZeqwuLkTjn13yPIxxn
zR9EpMicO506i84arUwjcV1ox750MgDJCa01vAFg33ZXr88tziMxFid5Fe6qO6xbAir+13+6CUO1
7IRSgtROityJcgEFBV/fVaax+NCLv6TZxtwyJw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E3dWRjbWg0PDvbIA3yDMBfgzFLFLB4qRDkWJ7V0l/03Ki/NR4OKM2fTjDrLuZFI12IXFFTF+I+Zv
Zw4B8GGzhipssnWs5DSTGjkWe12/kifre/tY812o1q1FXFv9RrBmBYZrBqcPz1kbbhmfYE7Y1Taq
e8yz1FRCjMagQBkCD1zMWjdWBH+3x+RUrjp7OQOuSbwgl1v7UiTl9vdSrzm/aSIbwTT2tmgEABi5
Sdn47hIlyOQ1A9x6RdTw98rq2pQSKIgxj45/IRkT+sn6zkRRQH9UlZESNYNsi6j5mGxWFPwV/b6V
3e6wLofc4TTgJvHClOH1UDi0WlkTLmu8E7cGPg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
ptQEntk2x7+Sf12mvNf1M4bwjBbWFpn2H2nhu45YXH4flC5Odk/MFv8wE0eXI73i/5lE2adRAawy
9Qx94hmQl4+g+9lEgLxvBJk34bePr/0WoUQY9p8Xd/vuOwjJXfzcy2LWwtadlxVGrGFSxkRuL9GW
EAzu92F+K4kagkji1XFzF/3VvOtewrkHF9xStIVAcIm8WClqFGPLQJhjrPvYZdCKP89sNwZLJWSU
yVG3Ajs58ZDGHX9wUsWpEtbQ49GfOuFJnzuBj3jE5fgTi8NGWmrmfhnWu/9wd7sbTLNIC1Ucdfln
Y/AFxtyWCOTrMD5SSRB7EhdyyjbTJMQ1EJWBKgv8TqELPQm2W97zh85j7IYkMZu27T62r/qyucC6
tKcQo8CcNVak9JL9ExK9WwccDSrCCVDnHP/F4qTbIWZgTQEHsUEjU77n0rgUEAbj/yzQjYkSGBZ2
BAi/4CaLcePuTIpZaSs7aWaGyxSa5YpUQdtnrd3t4vZaG1PagLLtpgaz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hYEN7fufkwYhPajcK3XG6QEkCkax//hsK8UridEWhrru5vrLFKuh9saq486oIXVtuNSBATbtQWM0
//V1rspp1F1YO8fClxg2LQ4dOh1lC2dgWcAiagLUrL5gsKw0OKIyRn+jArLBMH5/LgeDMCN/X+zQ
kN+B3g6bDkotuK75mvLjgn5SkfuHUAfXPWkydI2lQtJW/waiIe5O6jNsm+mx0Rv7590wXcWy96fs
1bYIQFY/osRx0LYzTB7I+YNu6UzDCPEZyEY/bUvUoNAB0BE3ZVwAZW4wjCuTffptQ01KOSVJbIZ1
HNvUm2nr5OtDbCukrf9WO53B+POoCLRu+1rFwA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nZRDmSuplPRp+nSH093UkX36t0J50lUM89z5TQhEEeyDrgGSNUCTzgIkUg5nORT3IBT6dlmV4cth
DlemVZEoQqRZvClVJ2V68X8gY7QrordhXb8iEFuy0Z8qrSDn44Osc3QhXFfxMeic6g4Pcs+4mC7a
rk8djdWqEuagMnFE4atFEuNn2kRUcr7D32RqXvgGRpdYE1Z0QROp57Byikd8ubR2fBLSj5DTE3Qh
cz1tVqKY549SXyIICxJ1aofHpkHa0wnbdmQplykNKvCtbAefEhQcDIufbMjn2rk2aMopzH5lP4wq
hx53Ry5/WinyZ6nSamAYTAXby87gUUB5mV8w/w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
N3P1AaatxnvHBvBt79NHHEwck4dlI5+VqsiRplzpymTzSe3l4Q4xxXzWQJHzu8zEEzAVdXBh6rPs
CMT4OBE6wxotpmQ5g5xzKhE89KG1egIZhpqDuwILmEGJakXONjKMwoOqRNEnD4HIapHmUD16DW+8
LcRX/B0ItP1MBZw5Q4DLI8SQoXo7hCZB8moOl2SoUK8u0kbtrL2/nUaeHPZG8lKHjDK2jWE7y91v
95iaAwaOvg7JTpOt5Kqy5isEWWe+nfi8HI+H3nOtIJk7nxacWYeZpVT+f7IEPTEq2NlkmdQtuRKi
/6+lYWvg4nxrOY0b+AsBI43zlbp5PW/ZWAzKSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 32672)
`pragma protect data_block
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
LxndYUbc6aO26Kc=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
