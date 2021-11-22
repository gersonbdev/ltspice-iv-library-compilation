.SUBCKT BS250 1 2 3
Cgs  2 3 20.1E-12
Cgd1 2 4 57.1E-12
Cgd2 1 4 5E-12
M1 1 2 3 3 MOST1
M2 4 2 1 3 MOST2
D1 1 3 Dbody
.MODEL MOST1 PMOS(LEVEL=3 VTO=-2.3 W=7.6m L=2u KP=10.33u RD=4.014 RS=20m)
.MODEL MOST2 PMOS(VTO=2.43 W=7.6m L=2u KP=10.33u RS=20m)
.MODEL Dbody D(CJO=53.22E-12 VJ=0.5392 M=0.3583 IS=75.32E-15 N=1.016 RS=1.245
+              TT=86.56n BV=45 IBV=10u)
.ENDS
