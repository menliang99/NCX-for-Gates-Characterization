* Spectre Active Drive Load Cap Acquisition
* Liberty NCX vD-2010.06-SP2
* Build(Aug 30 2010)
* Filename: /home/mliang/HeteroTape2/NCXforBool/sims/a_drivers/ActDrv_BUFFER_A/BUFFER_A.sp
* All Slew Index(ps):
* 50.000000 70.000000 90.000000 100.000000 130.000000 150.000000 170.000000 190.000000 210.000000 250.000000 300.000000 500.000000 700.000000 900.000000
* slew_derate_from_library: 1.000000
* Required Output Transition Time of Active Driver(ps):
* 50.000000 70.000000 90.000000 100.000000 130.000000 150.000000 170.000000 190.000000 210.000000 250.000000 300.000000 500.000000 700.000000 900.000000
 simulator lang = spectre 


* OPTIONS ==============================
* NCX Default Options:
settings options rawfmt=psfascii

 simulator lang = spice 
.OPTIONS NUMDGT=10 MEASDGT=10 

 simulator lang = spectre 
* End of NCX Default Options.

* Lib Level Options:
* No Lib Level Options Here

* MODELS ===============================
*include "/home/mliang/HeteroTape2/NCXforBool/design_modified.scs"

* TEMPERATURE ==========================
temperature options temp= 2.500000e+01
* Input WaveForm
include "input.scs" 
* Output Load Value
include  "outputcap.scs" 

* ACTIVE DRIVER ========================
include "/home/mliang/HeteroTape2/NCXforBool/netlists/buffer_a.scs"

* ACTIVE DRIVER VOLTAGE SOURCES ========
global gnd
Vz_VDD z_VDD gnd vsource type=dc dc=1.200000e+00
Vz_GND z_GND gnd vsource type=dc dc=0.000000e+00
V0_gnd 0 gnd vsource type=dc dc=0.0

* ACTIVE DRIVER CIRCUIT ==================
X_AD_BUFFER_A z_a z_GND z_VDD z_z BUFFER_A 
C_ADRV z_z gnd capacitor c=adrv_cap

* PROBE ================================
save  z_a z_z
