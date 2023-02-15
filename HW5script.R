##Number 1##
n_dims<-sample(3:10,1)
n_dims2<-seq(from=1,to=(n_dims)^2)
n_dims3<-sample(n_dims2)
m1<-matrix(data=n_dims3, nrow=n_dims)
print(m1)
m2<-Conj(t(m1))
print(m2)
sum(m2[1,])
mean(m2[1,])
sum(m2[7,])
mean(m2[7,])
typeof(eigen(m2))

##Number 2
data1<-runif(16)
my_matrix<-matrix(data=data1,nrow=4)
data2<-runif(100)
my_logical<-data2>0.5
my_letters<-sample(letters,26, replace=F)
my_list<-list(my_matrix[2,2],my_logical[2],my_letters[2])
my_vector<-c(my_list[[1]],my_list[[2]],my_list[[3]])

##Number 3
mydf<-data.frame(runif(26,1,10),sample(LETTERS,26,replace=F))
colnames(mydf)<-c("my_units","my_letters")
mydf[sample(1:26,4),1]<-NA
which(is.na(mydf[,1]))
mydf<-data.frame(mydf[,1],sort(mydf[,2]))
mean(mydf[,1],na.rm=T)
     