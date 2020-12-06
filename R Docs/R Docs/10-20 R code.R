library(poliscidata)

# Hypo 1: in a comparison of individuals, men will give LGBTQ+ people a lower feeling theremometer than women
# Hypo 2: in a comparison of individuals, men will give the GOP a higher FT rating than women

# wtd.ttestC will report the 95% confidence interval of the mean difference as well as the P value
# wtd.ttestC(~DV, ~IV, design.dataset)

wtd.ttestC(~ftgr_gay, ~gender, nesD)

wtd.t.test(nes$ftgr_gay, 0, weight=nes$wt)

wtd.t.test(nes$ftgr_gay, 47.367, weight=nes$wt)

# mean here is for the natnioal population

# alternative is the mean for men that we typed in

# P value tells us if we'r...CONTINUE FROM PROF CODE

# opinion of republican party according to gender

wtd.ttestC(~ft_rep, ~gender, nesD)

# CI95(mean, se.mean)

# CI95(51.6268, 0.

# COPY PROFESSORS CODE AND ANNOTATE