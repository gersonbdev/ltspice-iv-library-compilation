[Transient Analysis]
{
   Npanes: 3
   Active Pane: 2
   {
      traces: 2 {68157448,0,"Ix(X1:A)"} {589826,1,"60*V(rps)/(2V*Pi)"}
      X: ('m',0,0,0.005,0.05)
      Y[0]: (' ',0,-120,40,320)
      Y[1]: ('K',1,0,500,5500)
      Amps: (' ',0,0,0,-120,40,320)
      Units: "" ('K',0,0,1,0,500,5500)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 1 {589829,0,"1A*V(rps)*V(tout)/1V"}
      X: ('m',0,0,0.005,0.05)
      Y[0]: ('K',1,0,600,6000)
      Y[1]: ('K',1,1e+308,600,-1e+308)
      Units: "W" ('K',0,0,1,0,600,6000)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 3 {524291,0,"V(u1:a)+2.5"} {589828,0,"V(u1:b)+1.25"} {524294,0,"V(u1:c)"}
      X: ('m',0,0,0.005,0.05)
      Y[0]: (' ',1,0,0.4,3.6)
      Y[1]: ('K',1,1e+308,600,-1e+308)
      Volts: (' ',0,0,1,0,0.4,3.6)
      Log: 0 0 0
      GridStyle: 1
   }
}
