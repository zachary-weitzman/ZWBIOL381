meaning<-function(a){
  x<-a
  y<-filter(x,label=="Colony")
  z<-filter(x,label=="Wild")
  z1<-median(z$TotalL,na.rm = T)
  z2<-median(z$TailL,na.rm=T)
  z3<-median(z$FootL,na.rm=T)
  z4<-median(z$EarL,na.rm=T)
  y1<-median(y$TotalL,na.rm=T)
  y2<-median(y$TailL,na.rm=T)
  y3<-median(y$FootL,na.rm=T)
  y4<-median(y$EarL,na.rm=T)
  ztot<-c(z1,z2,z3,z4)
  ytot<-c(y1,y2,y3,y4)
  x[,22]<-as.character(x[,22])
  x[nrow(x)+1,11:14]<-unlist(ytot)
  x[nrow(x),22]<-"Colony Median"
  x[nrow(x)+1,11:14]<-unlist(ztot)
  x[nrow(x),22]<-"Wild Median"
  a<-x
}

