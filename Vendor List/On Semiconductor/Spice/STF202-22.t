.SUBCKT STF202-22 1 2 3 4 5 6
**************************************
*      Model Generated by CZ Lab     *
*   Copyright(c) ON Semiconductor    *
*         All Rights Reserved        *
*    UNPUBLISHED LICENSED SOFTWARE   *
*   Contains Proprietary Information *
*                                    *
*Commercial Use or Resale Restricted *
*                                    *
**************************************
* Model generated on Jan 17, 2002
* MODEL FORMAT: PSPICE
*     vbus d(in1) d(in2) d(out2) d(out1) gnd
*node:  1     2      3      4       5     6
DX_D1  12  7  DTVS
DX_D2  12  11 DTVS
DX_D3  12  8  DTVS
DX_D4  12  10 DTVS
DX_D5  12  9  DTVS
*
C1  11  12  47PF
C2  10  12  47PF
*
RPU  7  9  1.5K
RS1  8  11  22
RS2  9  10  22
*
L1  1  7  0.1NH
L2  2  8  0.1NH
L3  3  9  0.1NH
L4  4  10  0.1NH
L5  5  11  0.1NH
L6  6  12  0.55NH
*
.MODEL DTVS D(IS=880.5E-18 RS=.25 IKF=0 N=1 XTI=3 EG=1.11 
+ CJO=20P M=.5516 VJ=.75 FC=.5 ISR=1.859N NR=2 BV=7.0 IBV=1M 
+ NBV=1.6989 IBVL=1.9556M NBVL=14.976 TBV1=-21.277U)
.ENDS STF202-22