**** Copyright Intusoft July, 1990 ****
*    All Rights Reserved
* Switched Capacitor Model for the Linear Technology LTC1060
.SUBCKT LT60H50 4    15   3   5   2   1   17   19  20  10   11   18  16 
* Connections   INVA AGND HPA S1A BPA LPA INVB BPB LPB CLKA CLKB HPB S1B
*Gain = 50, SAB switch set high 
X3 2 10 7 MUL0 
*{K=1 } 
X1 14 10 9 MUL0
*{K=1 } 
X8 1 3 5 14 SUM30      
*{K1=-1 K2=1 K3=-1 }    
XE2 4 15 3 SCNAMP60     
X9 9 2 SINT0   
*{K=62.5K }     
X10 7 1 SINT0  
*{K=62.5K }     
X12 6 11 13 MUL0       
*{K=1 } 
X13 19 11 22 MUL0      
*{K=1 } 
XE3 17 15 18 SCNAMP60   
X15 13 19 SINT0
*{K=62.5K }     
X16 22 20 SINT0
*{K=62.5K }     
X14 20 18 16 6 SUM30   
*{K1=-1 K2=1 K3=-1 }    
.ENDS   
*INCLUDE SYS.LIB
.SUBCKT MUL0 1 2 3     
RIN1 1 0 1E12   
RIN2 2 0 1E12   
ROUT 3 0 1E12   
E1 3 0 POLY(2) 1 0 2 0 0 0 0 0 1.0000   
.ENDS   
.SUBCKT SUM30 1 2 3 4  
* 3 PORT SUMMER 
RIN1 1 0 1E12   
RIN2 2 0 1E12   
RIN3 3 0 1E12   
ROUT 4 0 1E12   
E1 4 0 POLY(3) 1 0 2 0 3 0 0 -1.0000  1.0000  -1.0000   
.ENDS   
.SUBCKT SINT0 1 2      
*PARAMS ARE GAIN=62.500K
RIN 1 0 1E12    
E1 3 0 0 1 62.500K      
C1 2 4 1U IC=0  
R1 3 4 1MEG     
E2 2 0 0 4 1.0000MEG    
.ENDS   
.SUBCKT SCNAMP60 2    3  6      
*                - IN + OUT     
*PARAMS ARE GAIN=85.000  FT=2.0000MEG IOS=1.0000P VOS=1.0000M IBIAS=3.0000P     
*GAIN IS IN db  
RIP 3 0 10MEG   
CIP 3 0 1.4PF   
IBN 2 0 3.0000P 
RIN 2 0 10MEG   
CIN 2 0 1.4PF   
VOFST 2 10 1.0000M      
RID 10 3 200K   
EA 11 0 10 3 1  
R1 11 12 5K     
R2 12 13 50K    
C1 12 0 6.5000P 
GA 0 14 0 13 240.07     
C2 13 14 1.3500P
RO 14 0 75      
L 14 6 15.000U  
RL 14 6 1000    
CL 6 0 3PF      
.ENDS   
