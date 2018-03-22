# RNA-Seq

The following RNA-Seq work flow uses HISAT2 to align .fastq files, StringTie and summarizeOverlaps() of Bioconductor to compile transcripts and edgeR to perform DE testing. 

I recommend using the Wiki to follow my workflow. 

count.Rmd defines gene model to compile read counts from .bam files. Necessary for downstream DE analysis. 
