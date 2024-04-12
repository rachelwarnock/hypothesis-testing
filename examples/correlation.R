# https://statsandr.com/blog/correlation-coefficient-and-correlation-test-in-r/
# The Bonferroni correction compensates for that increase by testing each individual hypothesis at a significance level of alpha/m
# where alpha is the desired overall alpha level andm is the number of hypotheses

# read the data
dat <- read.csv("member_data.csv", header = TRUE)

# Pearson correlation between 2 continuous variables
p.values <- c()
nms <- names(dat)
for(i in nms){
  if(i == "generic" || i == "member") next
  p.values <- c(p.values , cor.test(dat$generic, dat[i][,1])$p.value)
}

which(p.values < 0.05)

pa <- p.adjust(p.values,method="bonferroni")

which(pa < 0.05)

