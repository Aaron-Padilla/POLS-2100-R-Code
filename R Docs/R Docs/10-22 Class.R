library(poliscidata)

# aim to compare the proportion of men who are dems to women

# prop.testC(data$DV, data$IV, w = data$weight)

nes$dem <- as.numeric(nes$pid_3 =="Dem")

prop.testC(nes$dem, nes$gender, w = nes$wt)

# EXPLANATION
# prop.testC          (nes$dem,               nes$gender, w = nes$wt)
# |                    |                      |           |
# test proportion of   registered democrats   per Gender  weighted

# OUTPUT: observed that there is a 7% difference



# -------------- Correlation Coefficient ------------------

# wtd.cor       (var1,           var2,      weight = optional.weight)
# |              |               |          |
# correlation    one variable    another    weighted (optional)
#
# English: How correlated is *this* one variable to another, weight the data as well



wtd.cor(nes$ftgr_liberals, nes$ftgr_feminists, w = nes$wt)

# OUTPUT: +0.5611 correlation coefficient, 0.01 standard error



# --------------------- Regression Analysis (bivariate) ---------------------


# SYNTAX: lm(DV~IV, data = dataset)

# estimates the expected value of the dependent variable as a function of the independent variable
# AKA: how much is the dependent variable actually affected by the independent variable, if at all
# if the DV isnt affected much by the IV, is the relationship even valuable at all?


# we want to look at the relationship between gender and attitudes/feelings towards Obama

# have to create an indicator variable for gender

nes$woman <- as.numeric(nes$gender == "Female")

lm(obama_therm~ woman, data = nes)

# OUTPUT: Intercept: 57.024, Woman, 7.239

# Explanation (simple): intercept is the average male rating (given all other variables equaling zero), Female average ratings of Obama are on average 7.23 higher than males

# Explanation (teacher): Since males are coded as 0, this means that their average feeling thermometer rating is 57.02, because 57.02 + 7.23(0) = 57.02
#              Women are encoded as 1, so 57.02 + 7.23(1) = 64.25



