
# R notes, 9-22 class

# Objects, used to store info in an accessable manner

# Instanciation: use either <- or <-

phoneNum1 <- 3105551234

# Text, as always is instanciated with quotes

school <- "school"

# Like python, you don't have to justify which variable is what type (int, char, double, etc.)


# ---Functions---

# can combine 2 or more objects creating a data frame using the function 
# Data.frame()

directory <- data.frame(phonenumber, school)

directory

# concatenation: C() function

school <- c("LMU", "pepperdine", "USC")

phoneNum2 <- c(3105554567, 6615551234, 8185551234)

directory <- data.frame(school, phoneNum2)

directory

# Output:
#
# school  phoneNum2
#       LMU 3105554567
#pepperdine 6615551234
#       USC 8185551234

#---seq()---

# seq() function allows to create a sequence of numbers
# start from a number, to a number, by vertain increments
# seq(from = _, to =_, by=_)

vector1 <- seq(from=1, to=49, by=3)
# or Vector1 = seq(1,49,3)

seq(1,49,3)

# ---mean()---

# can also use mean() to find the mean of a sequence

mean(seq(1,49, 3))

# -----------------------------------------------------------------------------

name <- "Aaron"

age <- 19

bio <- data.frame(name, age)

bio

# you have to highlight ALL THE CODE YOU WANT TO RUN
# still giving errors, figure out later

#---------------------------------------------------------------
thisNumber <- 8
anotherNumber <- thisNumber/4^3*2
nextNumber <- sqrt(anotherNumber)
theAnswer = nextNumber + thisNumber

