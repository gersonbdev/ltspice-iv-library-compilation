.SUBCKT nup4103fc-e 7 1
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
* Model generated on Jul  5, 03
* MODEL FORMAT: PSpice
*     anode cathode
*node: 7      1
*    Forward Section
D1 2 1 MDD1
.MODEL MDD1 D IS=3.82624e-16 N=1 XTI=1 RS=0.2
+ CJO=4e-11 TT=5e-09
*    Leakage Current
R 1 2 MDR 5.5e+09
.MODEL MDR RES TC1=0 TC2=0
*    Breakdown
RZ 2 3 0.0180001 
D3 4 3 MDD3
.MODEL MDD3 D IS=2.5e-15 N=0.5 
EV1 1 4 6 8 1
IBV 0 6 0.001
RBV 6 0 MDRBV 7000
.MODEL MDRBV RES TC1=0
D4 8 0 MDD3
L 7 2 1e-15
IT 0 8 0.001
.ENDS nup4103fc-e

