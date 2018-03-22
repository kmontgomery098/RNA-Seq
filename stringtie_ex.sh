#!/usr/bin/bash
export REF_GTF=/Volumes/Seagate/RNA/kiss/annotate/Mus_musculus.GRCm38.84.gtf
export RNA_ALIGN_DIR=/Volumes/Seagate/RNA/alignments  
cd /Volumes/Seagate/RNA/expression/stringtie/discovery

for file in $RNA_ALIGN_DIR/*.bam; do
	BASE=$(basename $file .bam)
	stringtie -p 8 -G $REF_GTF -B -o $BASE/transcripts.gtf -A $BASE/gene_abundances.tsv -l parcf2 $RNA_ALIGN_DIR/$BASE.bam; done






