library(poliscidata)

# Hypo 1: in a comparison of individuals, men will give LGBTQ+ people a lower feeling theremometer than women
# Hypo 2: in a comparison of individuals, men will give the GOP a higher FT rating than women

# wtd.ttestC will report the 95% confidence interval of the mean difference as well as the P value
# wtd.ttestC(~DV, ~IV, design.dataset)

wtd.ttestC(~ftgr_gay, ~gender, nesD)


wtd.ttestC(~ft_rep, ~gender, nesD)