library(poliscidata)

# hypo: women have a more preferential view of the Dem party.

# syntax: iplotC(~DV, ~IV+CV, design.dataset, DV~CV+IV, plot.options)



iplotC(~ft_dem, ~gender+married, nesD, ft_dem~married+gender, 
       xlab = "Gender", ylab = "Democratic Party Rating", 
       main = "Democratic Party Ratings by Gender and Marital status")


# Legend syntax

legend("topleft",  legend = c("no", "yes"), lty = c(1, 2), lwd = 2,title = "Is R Married?", inset=0.1, bty = "n")                 

# legend("topleft",                   legend = c("no", "yes"), lty = c(1, 2),                         lwd = 2,                                      title = "Is R Married?", inset=0.1, bty = "n")                 
#         |                           |                        |                                      |                                             |                        |
# tells us where the legend will go   labels the categories    Makes sure the lines match the labels  specifies the line weight shown in the graph  title in the legend box  Specifies the distance from polt borders


# ----------------------------- Significance tests --------------------------------------

# * look over teacher comment in this part of the code * 

# Syntax: wtd.t.test(variable, weight = optional, weight)

wtd.t.test(nes$ftgr_gay, 0, weight = nes$wt)

# ASK PROFESSOR/GO OVER LECTURE AGAIN



# we want a 95 percent confidence interval of the man feeling thermometer rating of LGBTQ people
# Syntax: CI95 (mean, se.mean)

CI95(51.63, 0.38)


# interpret to see if difference is statristically significant

wtd.t.test(nes$ftgr_gay, 52 , weight = nes$wt) # P value (0.322) is greater than 0.05, statistically insignificant.
