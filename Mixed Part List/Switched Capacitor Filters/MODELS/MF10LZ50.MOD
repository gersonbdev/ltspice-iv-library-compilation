**** Copyright Intusoft July, 1990 ****
*    All Rights Reserved
* Switched Capacitor Model for the National Semicondutor MF10
.SUBCKT MF10LZ50 15  4    3   2   5   20  19  16  1   18  17    
*Connections   AGND INVA HPA BPA S1A LPB BPB S1B LPA HPB INVB   
*FOR GAIN OF 100 DEFINE /SCNCAP=2P,     
*FOR GAIN OF 50 DEFINE /SCNCAP=4P       
*DEFINE /SCNCAP=4P      
X19 31 30 19 34 ZINT0  
*{TD=1U C=32P } 
X2 35 36 2 33 ZINT0    
*{TD=1U C=32P } 
X4 15 35 CRES0 
*{C= 4P }       
X5 5 35 CRES0  
*{C= 4P }       
X8 2 29 NSTR0  
*{TD=1U C= 4P } 
X9 28 29 1 32 ZINT0    
*{TD=1U C=32P } 
XE1 4 15 3 SCNAMP       
X11 3 35 NSTR0 
*{TD=1U C= 4P } 
X20 15 31 CRES0
*{C= 4P }       
X21 16 31 CRES0
*{C= 4P }       
X22 19 38 NSTR0
*{TD=1U C= 4P } 
X23 37 38 20 40 ZINT0  
*{TD=1U C=32P } 
X24 18 31 NSTR0
*{TD=1U C= 4P } 
XE2 17 15 18 SCNAMP     
.ENDS   
.SUBCKT ZINT0 1 2 3 4  
* 2 PHASE INT, 1 3 ARE ODD IN->OUT; 2,4 ARE EVEN
R1 1 3 31.250   
R2 2 4 31.250   
E13 3 0 1 0 -1E6
E24 4 0 2 0 -1E6
G14 1 4 0 31 32.000M    
R14 31 0 1000   
T14 30 0 31 0 Z0=1000 TD=1.0000U
E14 30 0 1 4 1  
G23 2 3 0 41 32.000M    
R23 41 0 1000   
T23 40 0 41 0 Z0=1000 TD=1.0000U
E23 40 0 2 3 1  
.ENDS   
.SUBCKT CRES0 1 2      
R1 1 2 250.00   
.ENDS   
.SUBCKT NSTR0 1 2      
*NEGATIVE STORISTER I = 1E9 * (- C * Z^-1/2)    
E1 3 0 1 2 1    
T1 3 0 4 0 Z0=1000 TD=1.0000U   
RT 4 0 1000     
G1 1 2 0 4 4.0000M      
.ENDS   
.SUBCKT SCNAMP  2    3  6       
*             - IN   +  OUT     
*DERIVED FROM OPAMP IN LIN.LIB  
*       
RIP 3 0 10MEG   
CIP 3 0 1.4PF   
IBN 2 0 1.0000P 
RIN 2 0 10MEG   
CIN 2 0 1.4PF   
VOFST 2 10      
RID 10 3 200K   
EA 11 0 10 3 1  
R1 11 12 5K     
R2 12 13 50K    
C1 12 0 5.2000P 
GA 0 14 0 13 378.00     
C2 13 14 1.0800P
RO 14 0 75      
L 14 6 12.000U  
RL 14 6 1000    
CL 6 0 3PF      
.ENDS   
