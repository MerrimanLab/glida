#! /bin/bash

# LDProxy.sh
# Given a lead SNP ($1) and a VCF file ($2)
# calculate LD relative to this SNP

SNP=$1
VCFFILE=$2
SAMPLES=$3
OUTFILE=$4

#~/GenomeTools/PLINK/plink --vcf ${VCFFILE} --keep-fam ${SAMPLES} --r2 --ld-snp ${SNP} --ld-window-kb 1000 --ld-window 99999 --ld-window-r2 0.05 --out ${OUTFILE}
# For this to work, you need to ensure that RStudio can see your FULL $PATH environment variable, not the stupid little one it sees by default.
# My solution was to add PATH='<$PATH>' to ${R_HOME}/ect/Renviron. You can get R_HOME by typing R.home() RStudio's console.
plink --vcf ${VCFFILE} --keep-fam ${SAMPLES} --r2 --ld-snp ${SNP} --ld-window-kb 1000 --ld-window 99999 --ld-window-r2 0.05 --out ${OUTFILE}
