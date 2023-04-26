library(tidyverse)
x<-read.csv("BatchData.csv")
x$year<-lubridate::year(x$date.time_start)

for (i in 2014:2022){
  y<-x%>%
    filter(year==i)
  output<-paste0(i)
  setwd("/Users/zacharyweitzman/Documents/Rstudio/BIOL381/COMP BIO")
  write.csv(y,file=output,sep=",",col.names=T,row.names = F)
}


########
# Analysis
# input: Dataset
########
regresser<-function(x){
  .<-lm(data=x,ws_avg~wd)
  . <- summary(.)
  stats_list <- list(slope=.$coefficients[2,1],
                     p_val=.$coefficients[2,4],
                     r2=.$r.squared)
  return(stats_list)
}
#--------------------
######
# Graphing
# input: dataset
#######
grapher<-function(x){
  library(ggplot2)
  ggplot()+
    geom_point(data=x,aes(x=wd,y=ws_avg))+
    labs(x="Wind Direction (Azmuith)",y="Wind Speed (mph)")
}
#--------