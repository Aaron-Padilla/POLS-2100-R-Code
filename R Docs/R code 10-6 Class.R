library(poliscidata)

# independent variable-Dependent variable relations

# main variable - nes$ft_hclinton - gives a 100 deg feeling thermometer

# also nes$pid_x, measures partisanship in 7 categories

# Hypothesis: strong democrats will have more favorable attitudes to clinton,
# will go down according to partisan position

# will use compmeans() function

# syntax: compmeans(DV, IV, WT)

# -------------------- practice --------------------------------

compmeans(nes$ft_hclinton, nes$pid_x, nes$wt, plot=F)

# -------------- Plot means in a line chart --------------------

# task: ploy a linechart showing the relationship between partisanship & HC)


# Syntax: plotmeanc(data, ~DV, ~IV, DV~IV, w=~weight)



plotmeansC(nes, ~ft_hclinton, ~pid_x, ft_hclinton~pid_x, w=~wt, xlab="Party Identification", ylab="Ratings of Hillary Clinton", main = "Ratings of HRC, \n by Party Identification")

## plotmeansc      (nes, ~ft_hclinton, ~pid_x, ft_hclinton~pid_x, w=~wt, xlab="Party Identification", ylab="Ratings of Hillary Clinton", main, "ratings of HRC, /n by party identification")
#                  |        |           |          |              |                |                                |                    |
# explanation:   database   DV          IV        DV to IV       weight           x axis label                    y axis label           main label
