library(ggplot2)
library(Hmisc) # required to plot the SD

# read the data
dat <- read.csv("zooid_size.csv", header = TRUE)

unique(dat$genus) # shows unique genus
table(dat$genus) # shows the frequency

########### visualise the data

names <- c(unique(dat$genus)[20:23])
  
p<-ggplot(subset(dat, genus %in% names), aes(x = genus, y = length)) +
  stat_summary(geom = "point", fun = mean) +
  stat_summary(geom = "errorbar", fun.data = mean_se) # mean_sdl: requires the Hmisc 

p

wilcox.test(length~genus, data = df, alternative = "two.sided")
