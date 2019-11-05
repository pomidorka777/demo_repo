
# variables
a <- 2
a + 2
I HATE CSKA

b <- 'data couse'

# TYPES
# 1) It means memory representation
# 2) Available operations

a + a
a + b
paste0(b, " ", b)
paste0(a, b)

paste(b, b, b, sep=":")

# 1) in memory
mode(a)
mode(b)

# 2) operations
class(a)
class(b)

# VECTOR LANGUAGE

c <- c(1,2,3,4)
mode(c)
class(c)

d <- c("a" , "ab", "abc")

a + c
a <- c(1,2)
a + c

# TO CREATE VECTOR

my_friends <- c("Vova", "Petya") 

range <- 2:10
range <- rep(2:10, 2)

# NONTRIVIAL CLASSES

class_numeric <- 1:4
class_matrix <- matrix(1:4, nrow=2)

#element-wise multiplication
class_numeric * class_numeric
class_matrix * class_matrix

#scalar/matrix multiplication
class_numeric %*% class_numeric
class_matrix %*% class_matrix

#FUNCTIONS

sum(1:10)
rep(1:10, 3)

lm_simple <- function (y, X){
  beta <- ( inv(t(X)%*%X) ) %*% (t(X)%*%y)
  return(beta)
}

X <- matrix(c(1,1,1,2,3,4), nrow=3)

y <- matrix(1 + 2*c(2,3,4), nrow=3)

lm_simple(y, X)

?lm

# PACKAGES
library(matlib)


# LISTS AND DATA FRAMES

#### regular expressions ##### discuss later
dates <- c(1994,1999,1994,1993,2011,1994,2010,1994,1999,1973,1997,1997,1972,1994,1965,2006,2001,2014,2000,2003,1985,1998,1968,1999,2006,2002,2002,1973,2001,2008,2000,2017,2002,1998,1971,2003,2009,1975,2008,1997,1956,1992,1990,1959,2008,1931,2001,1972,1947,1966,1966,2004,1981,1995,1990,1998,2010,2012,1991,1974,1988,2005,1997,1995,1980,1979,2008,2013,2011,1988,2016,2000,1999,1957,1971,1921,1998,2006,1976,2003,1959,1989,1991,2004,1980,1983,1953,1995,1939,1977,2012,2006,2005,1984,1997,2004,1980,1975,2004,2013,2018,1997,1959,2012,2004,1957,1962,1979,2008,1989,2001,1997,1995,2011,1990,1993,1980,1964,1992,1988,1936,2009,1966,2002,1984,2010,2008,1980,1998,1973,2004,1990,1990,2002,1971,2005,1983,2004,1997,1990,1990,2006,1983,1965,2002,2010,2015,1976,2008,1968,1968,2001,1954,2009,2001,1954,1991,2000,1961,1980,2004,2001,1982,2011,2017,1979,1979,1966,1964,2005,2005,2005,2016,2006,1980,1999,1989,1988,2014,2000,1995,1999,1997,1983,2008,1960,1981,2007,1988,2012,2005,2001,1975,2003,1966,1928,2010,1984,2019,2004,2001,2013,2000,2007,2005,2008,2001,2014,1999,2001,1988,2008,2006,2011,2009,2014,2007,1925,1988,1962,2004,1987,2003,2009,1998,1980,2010,2000,1975,2009,1998,1952,1976,2013,2012,1997,1989,2003,2000,1979,2010,1955,1987,1981,1981,1962,2007,1997,2006,1955)

data <- c(1, "1") #doesn't work
data_list <- list(a=c(1, 2), b=c("1", "2")) #yes

data <- data.frame(dates=dates, name="Film", count=1)
class(data)
mode(data)


### counting ### discuss later

count <- tapply(data$count, data$dates, sum)
plot(names(count), count, type='h')

# INDEXING

a <- (1:10)*5 + 1
a[5]
a[-5]
a[c(1,4,7)]
a[c(FALSE, FALSE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE)]
a[a > 20]

X[3,2]

data[1, 1]

data[2, "dates"]

data_list[1] # MODE == LIST

data_list[c(1,2)]

data_list[[1]]
data_list[["a"]]
# the same
data_list$a
