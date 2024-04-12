

macropora <- dat[which(dat$genus == "Macropora"),]

plot(macropora$length, macropora$width)

cor.test(macropora$length, macropora$width)
