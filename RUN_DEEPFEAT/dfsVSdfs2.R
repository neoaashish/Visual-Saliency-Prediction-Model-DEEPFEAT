score = c(0.851621105, 0.839605818, 0.845744976, 0.834017689, 0.337927646, 0.327810746, 0.48611109, 0.442489473, 1.361605621, 1.412194771)

SEM = c(0.067851497, 0.074753027, 0.068367539, 0.075172215, 0.061534777, 0.060923599, 0.125431417, 0.124853967, 0.283420526, 0.291526073)

SEM = SEM / sqrt(1003)

EM = c("AUC Judd", "", "AUC Borji","", "SIM","", "CC","", "KL","")
f = c("DarkBlue","Red","DarkBlue","Red","DarkBlue","Red","DarkBlue","Red","DarkBlue","Red")

quartzFonts(avenir = c("Times New Roman Regular", "Times New Roman Bold", "Times New Roman Italic", "Times New Roman Bold Italic"))

par(family = 'Times New Roman', mai = c(2,1.2,.8,.1))

opar <- par(lwd = 1.5)

h = barplot(score, xpd = FALSE, ylim = c(0,1.55), col = f, tick = FALSE, cex.axis = 1.6, cex.lab = 2.5, cex.name = 1.3, font.axis = 2)
arrows(x0 = h, y0 = score + SEM, x1 = h, y1 = score - SEM, angle = 90, code = 3, length = .04, ylim = c(0,0.7), xpd = FALSE)
box(lty = "solid", col = 'black',lwd = 2)

usr = par("usr")
text(usr[1], usr[4], "*", adj = c(-9.8,2.5), cex = 2)
text(usr[1], usr[4], "*", adj = c(-14.3,3.5), cex = 2)
text(usr[1], usr[4], "*", adj = c(-18.8,4.5), cex = 2)
