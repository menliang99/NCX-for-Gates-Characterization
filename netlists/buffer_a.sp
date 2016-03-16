** Generated for: hspiceD
** Generated on: Apr 11 13:05:58 2012
** Design library name: 130nm_MTNCL
** Design cell name: buffer_a
** Design view name: schematic


.TEMP 25
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2

** Library name: 130nm_MTNCL
** Cell name: buffer_a
** View name: schematic
.SUBCKT buffer_a a gnd vdd z
xt1 net7 a gnd gnd nfet l=120e-9 w=160e-9 nf=1 m=1 par=1 ngcon=1 ad=88e-15 as=88e-15 pd=1.42e-6 ps=1.42e-6 nrd=1.125 nrs=1.125 rf_rsub=1 plnest=-1 plorient=-1 pld200=-1 pwd100=-1 lstis=1 lnws=0 rgatemod=0 rbodymod=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=0 panw10=0 sa=550e-9 sb=550e-9 sd=0 dtemp=0
xt3 z net7 gnd gnd nfet l=120e-9 w=160e-9 nf=1 m=1 par=1 ngcon=1 ad=88e-15 as=88e-15 pd=1.42e-6 ps=1.42e-6 nrd=1.125 nrs=1.125 rf_rsub=1 plnest=-1 plorient=-1 pld200=-1 pwd100=-1 lstis=1 lnws=0 rgatemod=0 rbodymod=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=0 panw10=0 sa=550e-9 sb=550e-9 sd=0 dtemp=0
xt0 net7 a vdd vdd pfet l=120e-9 w=360e-9 nf=1 m=1 par=1 ngcon=1 ad=198e-15 as=198e-15 pd=1.82e-6 ps=1.82e-6 nrd=500e-3 nrs=500e-3 rf_rsub=1 plnest=-1 plorient=-1 pld200=-1 pwd100=-1 lstis=1 lnws=0 rgatemod=0 rbodymod=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=0 panw10=0 sa=550e-9 sb=550e-9 sd=0 dtemp=0
xt2 z net7 vdd vdd pfet l=120e-9 w=360e-9 nf=1 m=1 par=1 ngcon=1 ad=198e-15 as=198e-15 pd=1.82e-6 ps=1.82e-6 nrd=500e-3 nrs=500e-3 rf_rsub=1 plnest=-1 plorient=-1 pld200=-1 pwd100=-1 lstis=1 lnws=0 rgatemod=0 rbodymod=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=0 panw10=0 sa=550e-9 sb=550e-9 sd=0 dtemp=0
.ENDS
