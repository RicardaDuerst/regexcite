# R Packages by Hadley Wickham and Jennifer Bryan
# 1 The Whole Game
# Development of a small toy package

# 1.1 Load devtools and friends
library(devtools)

# 1.4 create_package()
# create_package("~/path/to/regexcite")
# library(devtools)

# 1.5 use_git()
use_git()

# 1.6 Write the first function
x <- "alfa,bravo,charlie,delta"

strsplit(x, split = ",")
str(strsplit(x, split = ","))

unlist(strsplit(x, split = ","))
strsplit(x, split = ",")[[1]]

strsplit1 <- function(x, split) {
  strsplit(x, split = split)[[1]]
}

# 1.7 use_r()
use_r("strsplit1")

# 1.8 load_all()
load_all()
strsplit1(x, split = ",")
exists("strsplit1", where = globalenv(), inherits = FALSE)

# 1.9 check()
check()

# 1.11 use_mit_license()
use_mit_license()

# 1.12 document()
?strsplit1

# 1.13 check() again
check()

# 1.14 install()
install()

library(regexcite)

x <- "alfa,bravo,charlie,delta"
strsplit1(x, split = ",")

# 1.15 use_testthat()
use_testthat()
use_test("strsplit1")
load_all()
test()
