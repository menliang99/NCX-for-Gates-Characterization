#!/bin/bash

source cadtools --env cadence generic_615 &> /dev/null

# Navigate to Spectre's working directory; clean it up. "$*" is the name of the Spectre netlist created by NCX.
cd `dirname $*`
rm -fr spectrespp.* spectremdl.* *.mdl *.raw

# This is a bugfix to how NCX generates a Spectre netlist. Altergroups, which store different vectors and analysis parameters, are useful for having multiple corners (e.g., for different temperatures) in one simulation. NCX puts everything in an altergroup, so this command removes the first altergroup wrapper. Otherwise, Spectre will complain that the netlist is blank.
#sed -i -e '/^parameters t_diff =/ d' -e '/^alter0 altergroup {/,/^}/ {/^alter0 altergroup {/ d; /^}/ d}' $*
##############################################################

# The simulation itself.
#synopsys
spectre -dochecklimit $*

# Comment out the model file "include" statement in the Spectre netlist. In the next steps, including the model files becomes problematic.
sed -e '/^\* MODELS =\+/,/^include/ s@^include\s@*&@' $* > $*_spp.sp

# Translates all MEASUREMENT statements in the Spectre netlist into an MDL script (Netlist.mdl).
( spp < $*_spp.sp > spectrespp.log ) >& spectrespp.err

# Rename Netlist.mdl so that NCX can find the ".measure" file in the next step.
cp -p Netlist.mdl `basename $* .sp`.mdl

# Execute the MDL script, process Spectre's raw data, and store the results in a ".measure" file. NCX will read this file to make the Liberty file.
( spectremdl -design $* > spectremdl.log ) >& spectremdl.err

# Spectre outputs NaN for invalid results, but NCX expects to see "failed" instead.
# This bugfix replaces "NaN" with "failed" in the .measure file.
sed -i -e 's@\<NaN\>@failed@gi' `basename $* .sp`.measure
