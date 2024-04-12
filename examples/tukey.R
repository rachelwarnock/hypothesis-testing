# https://www.r-bloggers.com/2021/08/how-to-perform-tukey-hsd-test-in-r/

# subset data by species
macropora <- dat[which(dat$genus == "Macropora"),]
heteroconopeum <- dat[which(dat$genus == "Heteroconopeum"),]
tricephalopora <- dat[which(dat$genus == "Tricephalopora"),]

dat2 <- data.frame()
dat2 <- data.frame(rbind(macropora, heteroconopeum, tricephalopora))

res_aov <- aov(length~genus, data = dat2)
summary(res_aov)

TukeyHSD(res_aov, conf.level=.95)
