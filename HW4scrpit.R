x<-1.1
a<-2.2
b<-3.3
z<-x^a^b
print(z)
z<-(x^a)^b
print(z)
z<-3*x^3 + 2*x^2 +1
print(z)

s1<-seq(1,8)
s2<-seq(7,1)
s3<-c(s1,s2)
print(s3)
g<-c(1:5)
rep(g, times=g)
f<-c(5:1)
rep(f, times=g)

xcoord<-runif(1,1,10)
ycoord<-runif(1,1,10)
theta<-atan(ycoord/xcoord)
r<-ycoord/sin(theta)
print(r)
print(theta)

queue<-c("sheep","fox", "owl", "ant")
queue1<-c(queue,"serpent")
queue2<-queue1[-c("sheep")]
queue3<-c("donkey",queue2)
queue4<-queue3[!queue3=="serpent"]
queue5<-queue4[!queue4=="owl"]
queue6<-c(queue5[!queue5=="ant"],"aphid","ant")
which(queue6=="aphid")

nums<-1:100
nums2<-nums[nums%%2 !=0]
nums3<-nums2[nums2%%3 !=0]
nums4<-nums3[nums3%%7 !=0]
print(nums4)


#Atomic Vector Intro#
d<-c(1,2,3,4,5)
d<-c("hellow","world")
