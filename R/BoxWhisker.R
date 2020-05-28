#set seed
set.seed(1234)

#generate 1000 random values at different distributions
apr<-rnorm(1000)
may<-runif(1000)
jun<-rpois(1000,3)

#create dataframe with values
data <- data.frame(values = c(apr,may,jun),
                   group = c(rep("apr",1000),
                             rep("may",1000),
                             rep("jun",1000)))

#visualize on a box and whisker plot
boxplot(values ~ group, data)
