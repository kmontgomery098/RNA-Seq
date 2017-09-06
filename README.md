# RNA-Seq

The following RNA-Seq work flow uses HISAT2 to align .fastq files, StringTie to perform transcript compilation, summarizeOverlaps() of Bioconductor to perform gene and also transcript compilation and edgeR to perform DE testing. 

.bash files included to run HISAT2 package; the output .bam files
.bash files included to run StringTie package, the output are expression tables. A prepDE.py python file is available from StringTie to convert this counts into usable data by edgeR
R Markdown files are perhaps the most informative as to the detailed steps required to optimize RNA-Seq workflow. 
