#!/usr/bin/bash
export REF_MERG=stringtie_merged_arc.gtf
export RNA_ALIGN_DIR=/Volumes/Seagate/RNA/alignments  
cd ./Volumes/Seagate/RNA/expression/stringtie/discovery

stringtie -e -B -p 8 -G $REF_MERG -o ballgown_merged/iarcint1/iarcint1.gtf $RNA_ALIGN_DIR/iarcint1.bam
stringtie -e -B -p 8 -G $REF_MERG -o ballgown_merged/iarcint2/iarcint2.gtf $RNA_ALIGN_DIR/iarcint2.bam
stringtie -e -B -p 8 -G $REF_MERG -o ballgown_merged/parcint1/parcint1.gtf $RNA_ALIGN_DIR/parcint1.bam
stringtie -e -B -p 8 -G $REF_MERG -o ballgown_merged/parcint2/parcint2.gtf $RNA_ALIGN_DIR/parcint2.bam
stringtie -e -B -p 8 -G $REF_MERG -o ballgown_merged/iarccast1/iarccast1.gtf $RNA_ALIGN_DIR/iarccast1.bam
stringtie -e -B -p 8 -G $REF_MERG -o ballgown_merged/iarccast2/iarccast2.gtf $RNA_ALIGN_DIR/iarccast2.bam
stringtie -e -B -p 8 -G $REF_MERG -o ballgown_merged/parccast1/parccast1.gtf $RNA_ALIGN_DIR/parccast1.bam
stringtie -e -B -p 8 -G $REF_MERG -o ballgown_merged/iarcf1/iarcf1.gtf $RNA_ALIGN_DIR/iarcf1.bam





