# Background: http://www.sthda.com/english/wiki/unpaired-two-samples-t-test-in-r
# See also: http://www.sthda.com/english/wiki/normality-test-in-r

library(ggplot2)

# read the data
dat <- read.csv("zooid_size.csv", header = TRUE)

unique(dat$genus) # shows unique genus
table(dat$genus) # shows the frequency

# subset data by species
name1 <- "Macropora"
name2 <- "Heteroconopeum"

g1.df <- dat[which(dat$genus == name1),]
g2.df <- dat[which(dat$genus == name2),]

names <- c(rep(name1, length(g1.df[,1])), rep(name2, length(g2.df[,1])))

df <- data.frame(rbind(g1.df, g2.df))
df <- data.frame(cbind(df, names))

mean(df[which(df$names == name1),]$length)
mean(df[which(df$names == name2),]$length)

########### visualise the data

p<-ggplot(df, aes(x = names, y = length, fill = names)) +  
  stat_summary(geom = "point", fun = mean) +
  stat_summary(geom = "errorbar", fun.data = mean_se)

p

########### t-test

t.test(length~names, data = df, alternative = "two.sided", var.equal = FALSE)
t.test(length~names, alternative = "two.sided", var.equal = FALSE)

###########

# you could also subset data by time
time1 <- dat[which(dat$Time == "Campanian.PDT"),]
time2 <- dat[which(dat$Time == "Miocene.PDT"),]

