# Read into R the data in the files "cheese1.csv" and "cheese2.csv".  These
# datasets contain the per capita consumption of different cheeses from 1995 to
# 2014. The two data sets cover the same years, although the names for the
# variable holding the year differ.  Merge the data together into a single
# data.frame in which all the consumption data for a given year is one
# observation.  Name your merged data.frame "cheese".  The dimension of this
# data.frame should be 20 rows and 7 columns.

cheese1 <- read.csv("/Users/calebjohnson/Desktop/R/cheese1.csv")
cheese2 <- read.csv("/Users/calebjohnson/Desktop/R/cheese2.csv")
cheese <- cbind(cheese1, cheese2[, 2:4])
dim(cheese)
cheese



# Which kind of cheese has the highest average consumption per capita over all
# years?
#We are going to remove 
cheese_mean <- colMeans(cheese[,2:7])
cheese_mean[1]

# Which year saw the largest total consumption per capita of all cheeses?

top_year <- 0
winner <- 0
for (i in 1:length(cheese$Year))
{
  sum <- cheese[i, 2] + cheese[i, 3] + cheese[i, 4] + cheese[i, 5] + cheese[i, 6] + cheese[i, 7]
  if (sum > top_year)
  {
    top_year <- sum
    winner <- i
  }
}

cheese[winner, 1]

