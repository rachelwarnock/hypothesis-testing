# http://www.sthda.com/english/wiki/unpaired-two-samples-wilcoxon-test-in-r

shapiro.test(macropora$length)
shapiro.test(heteroconopeum$length)

wilcox.test(macropora$length, heteroconopeum$length, alternative = "two.sided")
