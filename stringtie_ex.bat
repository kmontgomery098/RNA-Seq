#!/usr/bin/bash
export REF_GTF=/Volumes/Seagate/RNA/kiss/annotate/Mus_musculus.GRCm38.84.gtf
export RNA_ALIGN_DIR=/Volumes/Seagate/RNA/alignments  
cd /Volumes/Seagate/RNA/expression/stringtie/discovery

stringtie -p 8 -G $REF_GTF -B -o parcf2/transcripts.gtf -A parcf2/gene_abundances.tsv -l parcf2 $RNA_ALIGN_DIR/parcf2.bam






