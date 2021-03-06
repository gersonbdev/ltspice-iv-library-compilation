**** Copyright Intusoft July, 1990 ****
*    All Rights Reserved
* Switched Capacitor Model for the Linear Technology LTC1064
.SUBCKT LT6450 3 2 1 33 28 10 4 6 14 29 12 5 22 24 30 13 8 31 32 26 17  
*Connections  INVA AGND HPA SA BPA LPA INVB HPB SB BPB LPB     
*Connections                  INVC HPC SC BPC LPC INVD HPD BPD LPD CLK
X10 16 17 18 MUL0      
*{K=1 } 
X11 28 17 20 MUL0      
*{K=1 } 
X12 18 28 SINT0
*{K=62.5K }     
X13 20 10 SINT0
*{K=62.5K }     
X15 1 33 16 SUM20      
*{K1=1 K2=-1 }  
X16 4 2 6 SCNAMP64      
X17 7 17 9 MUL0
*{K=1 } 
X18 29 17 11 MUL0      
*{K=1 } 
X19 9 29 SINT0 
*{K=62.5K }     
X20 11 12 SINT0
*{K=62.5K }     
X21 6 14 7 SUM20       
*{K1=1 K2=-1 }  
X22 5 2 22 SCNAMP64     
X23 23 17 25 MUL0      
*{K=1 } 
X24 30 17 27 MUL0      
*{K=1 } 
X25 25 30 SINT0
*{K=62.5K }     
X26 27 13 SINT0
*{K=62.5K }     
X27 22 24 23 SUM20     
*{K1=1 K2=-1 }  
X28 8 2 31 SCNAMP64     
X29 31 17 34 MUL0      
*{K=1 } 
X30 32 17 36 MUL0      
*{K=1 } 
X31 34 32 SINT0
*{K=62.5K }     
X32 36 26 SINT0
*{K=62.5K }     
X5 3 2 1 SCNAMP64       
.ENDS   
*INCLUDE SYS.LIB
.SUBCKT MUL0 1 2 3     
RIN1 1 0 1E12   
RIN2 2 0 1E12   
ROUT 3 0 1E12   
E1 3 0 POLY(2) 1 0 2 0 0 0 0 0 1.0000   
.ENDS   
.SUBCKT SINT0 1 2      
*PARAMS ARE GAIN=62.500K
RIN 1 0 1E12    
E1 3 0 0 1 62.500K      
C1 2 4 1U IC=0  
R1 3 4 1MEG     
E2 2 0 0 4 1.0000MEG    
.ENDS   
.SUBCKT SUM20 1 2 3    
RIN1 1 0 1E12   
RIN2 2 0 1E12   
ROUT 3 0 1E12   
E1 3 0 POLY(2) 1 0 2 0 0 1.0000  -1.0000
.ENDS   
.SUBCKT SCNAMP64 2    3  6      
*                - IN + OUT     
*PARAMS ARE GAIN=80.000  FT=7.0000MEG IOS=1.0000P VOS=1.0000M IBIAS=3.0000P     
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
C1 12 0 1.8571P 
GA 0 14 0 13 135.00     
C2 13 14 385.71F
RO 14 0 75      
L 14 6 4.2857U  
RL 14 6 1000    
CL 6 0 3PF      
.ENDS   
