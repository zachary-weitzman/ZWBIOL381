##################################################
# FUNCTION: clean_data
# purpose: Prepare Data for Work
# input: Dirty Data
# output: Clean Data
#------------------------------------------------- 
clean_data<-function(x){
  x[,12]<-as.numeric(x[,12])
  x$ratio<-x[,14]/x[,12]
  return(x)
}

##################################################
# FUNCTION: MeanFinder
# purpose: Calculate Mean and SD for Sim Data from Ratio
# input: Dataframe, Species in Quotes
# output: Vector containg Mean and SD
#------------------------------------------------- 
MeanFinder<-function(w,x){
  xm<-mean(w$ratio[w$Abbrev.==x],na.rm=T)
  xsd<-sd(w$ratio[w$Abbrev.==x],na.rm=T)
  stuff<-c(xm,xsd)
}

##################################################
# FUNCTION: SimCreator
# purpose: Create Simulated Dataframe
# input: 1st Species MeanFinder Vector, 2nd Species MeanFinder Vector, etc.
# output: Single Conjoined Simulated Dataframe
#------------------------------------------------- 
SimCreator<-function(x,y,z){
  A<-data.frame("PELE",rnorm(127,x[1],x[2]))
  colnames(A)<-c("Species","Ratio")
  B<-data.frame("MIPE",rnorm(5,y[1],y[2]))
  colnames(B)<-c("Species","Ratio")
  C<-data.frame("PEMA",rnorm(50,z[1],z[2]))
  colnames(C)<-c("Species","Ratio")
  simcolony<-rbind(A,B,C)
}

##################################################
# FUNCTION: ANOVATOR
# purpose: Runs ANOVA on Simulated Data and Produces Graph
# input: Simulated Dataframe
# output: ANOVA analysis and Boxplot
#------------------------------------------------- 
ANOVATOR<-function(x){
  sim_aov<-aov(Ratio~Species,data=x)
  print(summary(sim_aov))
  boxplot(data=x,Ratio~Species)
}


##################################################
# FUNCTION: MeanFinder2.0
# purpose: Calculate Mean and SD for Sim Data from TotalL
# input: Dataframe, Species in Quotes
# output: Vector containg Mean and SD
#------------------------------------------------- 
MeanFinder2.0<-function(w,x){
  xm<-mean(w$TotalL[w$Abbrev.==x],na.rm=T)
  xsd<-sd(w$TotalL[w$Abbrev.==x],na.rm=T)
  stuff<-c(xm,xsd)
}

##################################################
# FUNCTION: SimCreator2.0
# purpose: Create Simulated Dataframe
# input: 1st Species MeanFinder Vector, 2nd Species MeanFinder Vector, etc.
# output: Single Conjoined Simulated Dataframe
#------------------------------------------------- 
SimCreator2.0<-function(x,y,z){
  A<-data.frame("PELE",rnorm(127,x[1],x[2]))
  colnames(A)<-c("Species","Length")
  B<-data.frame("MIPE",rnorm(5,y[1],y[2]))
  colnames(B)<-c("Species","Length")
  C<-data.frame("PEMA",rnorm(50,z[1],z[2]))
  colnames(C)<-c("Species","Length")
  simcolony<-rbind(A,B,C)
}

##################################################
# FUNCTION: ANOVATOR2.0
# purpose: Runs ANOVA on Simulated Data and Produces Graph
# input: Simulated Dataframe
# output: ANOVA analysis and Boxplot
#------------------------------------------------- 
ANOVATOR2.0<-function(x){
  sim_aov<-aov(Length~Species,data=x)
  print(summary(sim_aov))
  boxplot(data=x,Length~Species)
}
