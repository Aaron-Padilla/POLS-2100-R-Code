# 9-29 Notes

# descriptive statistics

# interpreting measures of central tendency

library(poliscidata) # remember to import libary every time

# ex: view distribution of zodiac signs

freq(gss$zodiac)

# view w weights

freq(gss$zodiac,gss$wtss)

# to see all signs/categorizations

freqC(gss$zodiac) # freqC broadens categories, makes them ordinal


# -------------------------measures of central tendency--------------------
# to find more use function in WTD.mode

wtd.mode(gss$zodiac)

zodiacMode <- wtd.mode(gss$zodiac)


# ordinal var, Dataset: NES (National Election Survey)

# variable: facor/oppose reducing the federal budget deficit

freqC(nes$budget_deficit_x)

# age in the GSS dataset

freq(gss$age)

# how to shortcut looking at mode and median

describe(gss$age) # gives a tabulated rundown of number of respondants, missing, mean, and median

# 50% percentile is equivalent to the median, here it's 45

describe(gss$age, weights = gss$wtss)

wtd.mean(gss$age, weights=gss$wtss)

# ----------------------------------abortion laws by state ---------------------------------

# interested in looking at the number of abortion laws by state

# use sortC function
# looking at the states dataset, abortionlaw10 variable

sortC(states, state, abortlaw10)


# -------------comparing number of women legislators in different legislatures--------------------

# look at sides, find again

