Version 4
SymbolType CELL
LINE Normal -48 -48 -80 -48
LINE Normal -22 -23 -48 -48
LINE Normal -32 0 -80 0
LINE Normal -48 48 -80 48
LINE Normal -23 23 -48 48
LINE Normal 64 -48 29 -48 2
LINE Normal 64 0 0 0 2
LINE Normal 64 0 64 0 2
LINE Normal 0 -48 0 0 2
LINE Normal 22 -23 29 -48 2
LINE Normal -20 48 -13 29
LINE Normal 0 48 -20 48
LINE Normal 20 48 13 29
LINE Normal 0 48 20 48
LINE Normal 64 48 0 0 1
LINE Normal 0 -256 0 -48 1
LINE Normal -48 -256 0 -256 1
LINE Normal 0 -224 -48 -224 1
LINE Normal 0 -192 -48 -192 1
LINE Normal 64 -112 0 -112 2
LINE Normal 0 -112 -64 -112 2
LINE Normal -38 -117 -32 -112
LINE Normal -38 -107 -38 -117
LINE Normal -32 -112 -38 -107
LINE Normal 31 -117 37 -112
LINE Normal 31 -107 31 -117
LINE Normal 37 -112 31 -107
CIRCLE Normal 32 32 -32 -32
CIRCLE Normal -86 54 -73 42
CIRCLE Normal -86 -42 -73 -54
CIRCLE Normal -86 6 -73 -6
TEXT 0 15 Center 0 DC
TEXT -37 -266 Left 0 H1
TEXT -37 -234 Left 0 H2
TEXT -37 -202 Left 0 H3
TEXT 53 -48 Right 0 J
TEXT 53 0 Right 0 D
TEXT 53 48 Right 0 w
TEXT 0 -131 Center 0 Torque
TEXT -69 -48 Left 0 a
TEXT -69 0 Left 0 b
TEXT -69 48 Left 0 c
TEXT 0 -14 Center 0 BL
WINDOW 123 16 -240 Left 0
WINDOW 39 17 -207 Left 0
SYMATTR ModelFile BLDC.Lib
SYMATTR Description 3Phase BLDC Motor
SYMATTR Prefix X
SYMATTR Value2 Npp={Npp}
SYMATTR SpiceLine Ph={Ph}
SYMATTR Value BLDC
PIN -80 -48 NONE 8
PINATTR PinName A
PINATTR SpiceOrder 1
PIN -80 0 NONE 8
PINATTR PinName B
PINATTR SpiceOrder 2
PIN -80 48 NONE 8
PINATTR PinName C
PINATTR SpiceOrder 3
PIN 64 -48 NONE 8
PINATTR PinName LoadInertia
PINATTR SpiceOrder 4
PIN 64 0 NONE 8
PINATTR PinName LoadDump
PINATTR SpiceOrder 5
PIN -64 -112 NONE 8
PINATTR PinName Tin
PINATTR SpiceOrder 6
PIN 64 -112 NONE 8
PINATTR PinName Tout
PINATTR SpiceOrder 7
PIN 64 48 NONE 8
PINATTR PinName W
PINATTR SpiceOrder 8
PIN 0 -80 RIGHT 8
PINATTR PinName Angle
PINATTR SpiceOrder 9
PIN -48 -256 NONE 8
PINATTR PinName H1
PINATTR SpiceOrder 10
PIN -48 -224 NONE 8
PINATTR PinName H2
PINATTR SpiceOrder 11
PIN -48 -192 NONE 8
PINATTR PinName H3
PINATTR SpiceOrder 12
