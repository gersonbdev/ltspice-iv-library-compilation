Version 4
SymbolType CELL
RECTANGLE Normal -80 80 48 -82
TEXT 8 94 Center 0 FullPWM
WINDOW 39 64 72 Left 0
SYMATTR SpiceLine Npp={Npp} F=20kHz
SYMATTR Description 3Phase PWM Sine Wave Generator
SYMATTR Prefix X
SYMATTR SpiceLine2 Dev=90 Offs=1.07
SYMATTR ModelFile BLDCSupport.Lib
SYMATTR Value TDriverSine
PIN -80 -48 LEFT 4
PINATTR PinName CV
PINATTR SpiceOrder 1
PIN -48 80 VLEFT 4
PINATTR PinName Angle
PINATTR SpiceOrder 2
PIN 48 -48 RIGHT 4
PINATTR PinName AP
PINATTR SpiceOrder 3
PIN 48 0 RIGHT 4
PINATTR PinName BP
PINATTR SpiceOrder 4
PIN 48 48 RIGHT 4
PINATTR PinName CP
PINATTR SpiceOrder 5
PIN -16 -80 TOP 4
PINATTR PinName HV
PINATTR SpiceOrder 6
