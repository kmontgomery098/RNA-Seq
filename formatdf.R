format.cust<-function(DF){
        DF$logFC<-as.numeric(lapply(DF$logFC,round,2))
        DF$logCPM<-as.numeric(lapply(DF$logCPM,round,2))
        DF$unshrunk.logFC<-as.numeric(lapply(DF$unshrunk.logFC,formatC,digits=2,format="e"))
        DF$PValue<-as.numeric(lapply(DF$PValue,formatC,digits=2,format="e"))
        as.data.frame(DF)
}