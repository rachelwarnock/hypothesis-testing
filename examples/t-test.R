# Background: http://www.sthda.com/english/wiki/unpaired-two-samples-t-test-in-r
# See also: http://www.sthda.com/english/wiki/normality-test-in-r

#install.packages("ggplot2")
#install.packages("Hmisc")
library(ggplot2)
library(Hmisc) # required to plot the SD

# read the data
dat <- read.csv("zooid_size.csv", header = TRUE)

unique(dat$genus) # shows unique genus
table(dat$genus) # shows the frequency

# subset data by species
name1 <- "Porella"
name2 <- "Monoporella"

g1.df <- dat[which(dat$genus == name1),]
g2.df <- dat[which(dat$genus == name2),]

df <- data.frame(rbind(g1.df, g2.df))

mean(df[which(df$genus == name1),]$length)
mean(df[which(df$genus == name2),]$length)

########### visualise the data

p<-ggplot(df, aes(x = genus, y = length)) +  
  stat_summary(geom = "point", fun = mean) +
  stat_summary(geom = "errorbar", fun.data = mean_se) # mean_sdl: requires the Hmisc 

p

########### t-test

t.test(length~genus, data = df, alternative = "two.sided", var.equal = FALSE)

###########

# you could also subset data by time
time1 <- dat[which(dat$Time == "Campanian.PDT"),]
time2 <- dat[which(dat$Time == "Miocene.PDT"),]

