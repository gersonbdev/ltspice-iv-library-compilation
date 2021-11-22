.SUBCKT sl05t1 1 2
x1 3 1 sl05t1_tvs
d1 3 2 Dcomp-diode
.ENDS sl05t1
*
.SUBCKT sl05t1_tvs 7 1
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
* Model generated on Jul 12, 02
* MODEL FORMAT: PSpice
*     anode cathode
*node: 7      1
*    Forward Section
D1 2 1 MDD1
.MODEL MDD1 D IS=3.68785e-13 N=1 XTI=1 RS=0.2
+ CJO=7e-12 TT=1e-08
*    Leakage Current
R 1 2 MDR 225565
.MODEL MDR RES TC1=-0.005 TC2=0
*    Breakdown
RZ 2 3 0.53976 
D3 4 3 MDD3
.MODEL MDD3 D IS=2.5e-15 N=0.5 
EV1 1 4 6 8 1
IBV 0 6 0.001
RBV 6 0 MDRBV 6423.2
.MODEL MDRBV RES TC1=0
D4 8 0 MDD3
L 7 2 1e-15
IT 0 8 0.001
.ENDS sl05t1_tvs
*
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
* Model generated on Jul 15, 02
* MODEL FORMAT: PSpice
.MODEL Dcomp-diode d
+IS=1.00528e-14 RS=0.2 N=0.873862 EG=1.10878
+XTI=4 BV=450 IBV=1.9e-07 CJO=7.00902e-12
+VJ=1 M=0.499998 FC=0.5 TT=1e-09
+KF=0 AF=1

