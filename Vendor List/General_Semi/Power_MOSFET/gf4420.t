.SUBCKT gf4420 1 2 3
**************************************
*      Model Generated by MODPEX     *
*Copyright(c) Symmetry Design Systems*
*         All Rights Reserved        *
*    UNPUBLISHED LICENSED SOFTWARE   *
*   Contains Proprietary Information *
*      Which is The Property of      *
*     SYMMETRY OR ITS LICENSORS      *
*Commercial Use or Resale Restricted *
*   by Symmetry License Agreement    *
**************************************
* Model generated on Jul 20, 99
* MODEL FORMAT: PSpice
* Symmetry POWER MOS Model (Version 1.0)
* External Node Designations
* Node 1 -> Drain
* Node 2 -> Gate
* Node 3 -> Source
M1 9 7 8 8 MM L=100u W=100u
.MODEL MM NMOS LEVEL=1 IS=1e-32
+VTO=2.82113 LAMBDA=0 KP=143.927
+CGSO=4.64076e-05 CGDO=3.17007e-07
RS 8 3 0.00216313
D1 3 1 MD
.MODEL MD D IS=1.9734e-16 RS=0.00575262 N=0.738312 BV=300
+IBV=0.001 EG=1.1124 XTI=4 TT=5e-08
+CJO=2.36651e-09 VJ=0.632715 M=0.496125 FC=0.5
RDS 3 1 1e+08
RD 9 1 0.00382562
RG 2 7 2.161
D2 4 5 MD1
* Default values used in MD1:
*   RS=0 EG=1.11 XTI=3.0 TT=0
*   BV=infinite IBV=1mA
.MODEL MD1 D IS=1e-32 N=50
+CJO=1.30901e-09 VJ=0.5 M=0.37687 FC=1e-08
D3 0 5 MD2
* Default values used in MD2:
*   EG=1.11 XTI=3.0 TT=0 CJO=0
*   BV=infinite IBV=1mA
.MODEL MD2 D IS=1e-10 N=1 RS=2.99999e-06
RL 5 10 1
FI2 7 9 VFI2 -1
VFI2 4 0 0
EV16 10 0 9 7 1
CAP 11 10 1.30901e-09
FI1 7 9 VFI1 -1
VFI1 11 6 0
RCAP 6 10 1
D4 0 6 MD3
* Default values used in MD3:
*   EG=1.11 XTI=3.0 TT=0 CJO=0
*   RS=0 BV=infinite IBV=1mA
.MODEL MD3 D IS=1e-10 N=1
.ENDS gf4420