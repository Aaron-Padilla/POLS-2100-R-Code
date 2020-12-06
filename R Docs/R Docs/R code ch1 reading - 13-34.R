# SAME AS 9-24 CLASS

install.packages("poliscidata") 

library(poliscidata)

welcome()

names(world)

# going to create a distrubution & Graph of party ID
# to do this we will look at the NES data
# when you want ot see a variable, use the "$" symbol
# to look at Party ID, will look at 'nes$pid_x'
# the nes tatea needs to sample weights, include the weights variable
# nes$wt
# freq(dataset$variable)

freq(nes$pid_x, nes$wt)

# outputs a data table