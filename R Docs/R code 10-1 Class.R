library(poliscidata)

# Hypothesis - in a comparison of individuals, democrats are more likely to care more about the env. than republicans

# dependent var: nes$envjob_3   gauges opinions about the trade off between environmental protections and jobs
# ind.var:       nes$pid_3      Party ID

# ---Review---

wtd.mode(nes$pid_3)

wtd.mean(nes$pid_3)
# ERROR RESOLVED - illogical arg. not possible to get a mode from pid_3


# ---To Look at Variable Outcomes ---

# envjob_3 is whether you care more about the environment or jobs (that would be put at risk by env. policy)


table(nes$envjob_3)



# ---Cross Tabulations---

# xtp() function creates a cross-tab

# Syntax: xtp(data, DV, IV, optional weight)

xtp(nes, envjob_3, pid_3, wt)

# translated: cross-tabulate (from nes dataset) the relationship between environment/job preference, according to party preference, weight the data
#             |                 |                                        |                                        |                 |
# Syntax:     xtp             (nes,                                      envjob_3,                                pid_3,            wt)
#             |                 |                                        |                                        |                 |
# Explained:  xtp             (dataset,                                  dependent var,                           independent var,  weight)



# ---Exercise---

# cross tab of gay marriage preference according to liberal, moderate, or conservative views

xtp (nes, gay_marry, libcon3, wt)


# ---How to change factor to numeric---

nes$libcon3 <- as.ordered(nes$libcon3) # fix this and put it back to "lib, mod, cons", I don't want the designations as a numeric


xtp (nes, gay_marry, libcon3, wt)