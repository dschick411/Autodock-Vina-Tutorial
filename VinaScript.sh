#!/bin/sh

#  VinaScript.sh
#  
#
#  Created by Dylan Schick on 6/12/17.
#

/dirvina/vina \ # 1. Change dirvina to where Vina is installed on your computer
--receptor /recdir/rec.pdbqt \ # 2. Change recdir to path of receptor and rec.pdbqt to the name of your pdbqt file
--ligand /ligdir/lig.pdbqt \ # 3. Change ligdir to path of ligand and lig.pdbqt to the name of your pdbqt file
--out /outdir/lig_rec.pdbqt \ # 4. Change outdir to directory where you want output file and change lig_rec to whatever you want
--center_x 1 \ #5. Change number after center_x, center_y, center_z to coordinates of center of grid box
--center_y 2 \
--center_z 3 \
--size_x 4 \ #6. Change number after size_x, size_y, size_z to respective sizes of grid box
--size_y 5 \
--size_z 6 \
--cpu 2 \ #7. Change number of CPUs to however many on your system you'd like to dedicate. Usually, set this number to between 2-5.
--num_modes 20 \ #8. Change to however number of conformations you want ligand to bind to receptor. Max is 20 on Autodock Vina.
--exhaustiveness 8 # Generally leave this number at around 8. A larger exhaustiveness should accompany a larger grid box.
