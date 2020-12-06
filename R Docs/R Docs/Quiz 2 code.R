library(poliscidata)

# opinion on Marajuana legislation

# Hypo: In a comparison of individuals, those who attend religious services less
#       frequently will be more likely to favor legalization than those who attend religious services more frequently


# using GSS dataset
# attend3 will be ind variable

# grass records opinions of MJ legislation on marijuana 

# Syntax for cross-tabs

# xtabC(~DV, IV, ControlV, design.dataset)

xtp(gss, attend3, grass)

# remember, simple cross tab goes (dataset, IV, DV)

xtabC(gssD, attend3, grass, design.gssD)

