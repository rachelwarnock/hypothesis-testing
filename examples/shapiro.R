# Background: http://www.sthda.com/english/wiki/normality-test-in-r

# read the data
dat <- read.csv("zooid_size.csv", header = TRUE)

unique(dat$genus) # shows unique genus
table(dat$genus) # shows the frequency

# subset data by species
name1 <- "Microporella(cf.)"
name2 <- "Schizoporella"

g1.df <- dat[which(dat$genus == name1),]
g2.df <- dat[which(dat$genus == name2),]

########### visualise the data

hist(g1.df$length)
hist(g2.df$length)

########### Shapiro-Wilk's

shapiro.test(g1.df$length)
shapiro.test(g2.df$length)

