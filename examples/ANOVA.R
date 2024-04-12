# Background https://statsandr.com/blog/anova-in-r/
# See also: http://www.sthda.com/english/wiki/normality-test-in-r

library(ggplot2)
library(Hmisc) # required to plot the SD

# read the data
dat <- read.csv("zooid_size.csv", header = TRUE)

unique(dat$genus) # shows unique genus
table(dat$genus) # shows the frequency

# subset data by species
name1 <- "Pentapora"
name2 <- "Schizomavella"
name3 <- "Umbonula"

g1.df <- dat[which(dat$genus == name1),]
g2.df <- dat[which(dat$genus == name2),]
g3.df <- dat[which(dat$genus == name3),]

df <- data.frame(rbind(g1.df, g2.df, g3.df))

mean(df[which(df$genus == name1),]$length)
mean(df[which(df$genus == name2),]$length)
mean(df[which(df$genus == name3),]$length)

########### visualise the data

p<-ggplot(df, aes(x = genus, y = length)) +  
  stat_summary(geom = "point", fun = mean) +
  stat_summary(geom = "errorbar", fun.data = mean_sdl)

p

########### ANOVA

res_aov <- aov(length~genus, data = df)
summary(res_aov)

###########

# you could also subset data by time
time1 <- dat[which(dat$Time == "Campanian.PDT"),]
time2 <- dat[which(dat$Time == "Miocene.PDT"),]
time3 <- dat[which(dat$Time == "Pliocene.PDT"),]

