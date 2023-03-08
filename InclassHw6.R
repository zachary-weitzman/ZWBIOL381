library(tidyverse)
library(dplyr)

data("starwars")
glimpse(starwars)
starwarsclean<-starwars[complete.cases(starwars[,1:10]),]
anyNA(starwarsclean)
filt<-filter(starwarsclean,gender=="feminine"&height<180)
filt<-filter(starwarsclean,eyecolor %in% c("blue","brown")
arg<-arrange(starwarsclean,by=desc(height))
order<-arrange(starwarsclean,height,desc(mass))
select(starwarsclean,1:10)
x<-select(starwarsclean,name:species)
y<-select(starwarsclean, contains("color"))  
z<-mutate(starwarsclean,ratio=height/mass)          
a<-mutate(starwarsclean,mass_libs=mass*2.2)
b<-select(a,1:3,mass_libs,everything())
transmute(starwarsclean,mass_libs=mass*2.2)

starwarsclean2<-starwarsclean %>%
  mutate(sp=case_when(species=="Human"~"Human",TRUE~"Non-Human"))%>%
  select(name,sp,everything())

widesw<-starwarsclean%>%
  select(name,sex,height)%>%
  pivot_wider(names_from=sex,values_from=height,values_fill=NA)
longsw<-widesw%>%
  pivot_longer(cols=male:female,names_to="sex",values_to="height",values_drop_na=T)
