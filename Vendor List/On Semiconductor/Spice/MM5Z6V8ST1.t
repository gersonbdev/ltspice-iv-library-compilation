.SUBCKT mm5z6v8st1 2 1
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
* Model generated on Nov 25, 03
* MODEL FORMAT: PSpice
*     anode cathode
*node: 2      1
*    Forward Section
D1 2 1 MD1
.MODEL MD1 D IS=2.20469e-08 N=2.37788 XTI=1 RS=0.562
+ CJO=7.8e-11 TT=1e-08
*    Leakage Current
R 1 2 MDR 6.66667e+09	
.MODEL MDR RES TC1=0 TC2=0
*    Breakdown
RZ 2 3 2.76076
IZG 4 3 0.12
R4 4 3 200
D3 3 4 MD3
.MODEL MD3 D IS=2.5e-12 N=0.0754597 XTI=0 EG=0.1
D2 5 4 MD2
.MODEL MD2 D IS=2.5e-12 N=0.236603 XTI=0 EG=0.1
EV1 1 5 6 0 1
IBV 0 6 0.001
RBV 6 0 MDRBV 6693.17
.MODEL MDRBV RES TC1=0.0004768
*-- PSpice DIODE MODEL DEFAULT PARAMETER
*  VALUES ARE ASSUMED
*IS=1E-14 RS=0 N=1 TT=0 CJO=0
*VJ=1 M=0.5 EG=1.11 XTI=3 FC=0.5
*KF=0 AF=1 BV=inf IBV=1e-3 TNOM=27
.ENDS mm5z6v8st1

