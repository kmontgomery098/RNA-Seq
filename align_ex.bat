#!/usr/bin/bash

export M_REF=/Volumes/Seagate/RNA/kiss/grcm38_tran/genome_tran
export DATA=/Volumes/Seagate/RNA/kiss

time $HISAT2_HOME/hisat2 -x $M_REF --dta -U $DATA/f_i_arc_1/iarc1_S2_L001_R1_001.fastq.gz,$DATA/f_i_arc_1/iarc1_S2_L002_R1_001.fastq.gz,$DATA/f_i_arc_1/iarc1_S2_L003_R1_001.fastq.gz,$DATA/f_i_arc_1/iarc1_S2_L004_R1_001.fastq.gz -S ./iarcf1.sam 
time $HISAT2_HOME/hisat2 -x $M_REF --dta -U $DATA/f_i_arc_2/iarc2_S2_L001_R1_001.fastq.gz,$DATA/f_i_arc_2/iarc2_S2_L002_R1_001.fastq.gz,$DATA/f_i_arc_2/iarc2_S2_L003_R1_001.fastq.gz,$DATA/f_i_arc_2/iarc2_S2_L004_R1_001.fastq.gz -S ./iarcf2.sam 
time $HISAT2_HOME/hisat2 -x $M_REF --dta -U $DATA/f_p_arc_1/parc1_S4_L001_R1_001.fastq.gz,$DATA/f_p_arc_1/parc1_S4_L002_R1_001.fastq.gz,$DATA/f_p_arc_1/parc1_S4_L003_R1_001.fastq.gz,$DATA/f_p_arc_1/parc1_S4_L004_R1_001.fastq.gz -S ./parcf1.sam 
time $HISAT2_HOME/hisat2 -x $M_REF --dta -U $DATA/f_p_arc_2/parc2_S4_L001_R1_001.fastq.gz,$DATA/f_p_arc_2/parc2_S4_L002_R1_001.fastq.gz,$DATA/f_p_arc_2/parc2_S4_L003_R1_001.fastq.gz,$DATA/f_p_arc_2/parc2_S4_L004_R1_001.fastq.gz -S ./parcf2.sam 

samtools sort -@ 8 -o iarcf1.bam iarcf1.sam
samtools sort -@ 8 -o iarcf2.bam iarcf2.sam
#samtools sort -@ 8 -o parcf1.bam parcf1.sam
#samtools sort -@ 8 -o parcf2.bam parcf2.sam



