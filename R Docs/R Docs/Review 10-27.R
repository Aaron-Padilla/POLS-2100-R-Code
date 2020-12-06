library(poliscidata)

# ------------------- Compare Means --------------------

# on average, democrats will be more supportive of gov spending than republicans

# How do you gauge that? Compare mean support level of each party id

compmeans(nes$fedspend_scale, nes$pid_x, nes$wt, plot = F)


# ------------------- Cross tabs -----------------------

# Do countries with lower heterogeniety result in less democracy overall?

xtp(world, democ_regime, frac_eth3)

# Cross tab between expectations and 

# if using nes, use weights, if comparing to world or gss datasets, dont



# ----------------- Controlled Comparisons, More Cross tabs ------------

# Do democratic countries result in more economic development? 
# --> Prof. expanded on the last definition of democracy by adding a pluralist society (aka adding the frac_eth3 variable)

xtabC(~democ_regime + frac_eth3 + gdp_cap2, worldD)


# ---------------- Significance tests ---------------------------------

wtd.ttestC(~int_info_scale, ~age2, gssD)