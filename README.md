# RNA-Seq

The following RNA-Seq work flow uses HISAT2 to align .fastq files, StringTie and summarizeOverlaps() of Bioconductor to compile transcripts and edgeR to perform differential expression (DE) testing. 

I recommend using the Wiki to follow my workflow. 

count.Rmd defines gene model to compile read counts from .bam files. Necessary for downstream DE analysis. 
exploratory.Rmd delineates different steps to visualize and test read count data for preliminary exploratory data discovery.
formatdf.R is a short bit of code to ensure consistent final fold change formatting. 
stringtie_ex.sh is applied to loop through all .bam files and use the String Tie software to compile read counts.
loop_files_for_alignment.sh Well, pretty self-explanatory! Loop through all the .fastq.gz files and align to a reference genome.
de_anova-like.Rmd DE testing can be thought of as one-way ANOVA-like, the varaiance is explored for each and every individual gene.
