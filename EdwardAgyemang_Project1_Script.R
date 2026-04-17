# Name: Edward Agyemang | Date: 2025 | Class: ALY 6000 - Northeastern University
# ============================================================
# ALY 6000 - Project 1: R Practice
# ============================================================

# Clear the environment - wipes all old variables for a fresh start
rm(list = ls())

# Set working directory - tells R where your files live
setwd("C:/Users/elitebook folio/Documents/EDWARD PROJECTS/ALY6000")

# ============================================================
# PROBLEM 1 - Basic Arithmetic and Logical Expressions
# ============================================================

123 * 453       # Multiply 123 by 453
5^2 * 40        # 5 squared = 25, then times 40
TRUE & FALSE    # AND - both must be TRUE to return TRUE
TRUE | FALSE    # OR - at least one must be TRUE to return TRUE
75 %% 10        # Remainder of 75 divided by 10
75 / 10         # Regular division

# ============================================================
# PROBLEM 2 - Create first_vector
# ============================================================

# c() combines values into a vector. <- stores it under a name
first_vector <- c(17, 12, -33, 5)
first_vector

# ============================================================
# PROBLEM 3 - counting_by_fives
# ============================================================

# Manually list 7 values counting up by 5
counting_by_fives <- c(5, 10, 15, 20, 25, 30, 35)
counting_by_fives

# ============================================================
# PROBLEM 4 - second_vector using colon operator
# ============================================================

# The colon operator creates a sequence. 20:1 counts DOWN from 20 to 1
second_vector <- 20:1
second_vector

# ============================================================
# PROBLEM 5 - counting_vector using colon operator
# ============================================================

# 5:15 counts UP from 5 to 15
counting_vector <- 5:15
counting_vector

# ============================================================
# PROBLEM 6 - grades vector
# ============================================================

# Store 6 test scores in a vector called grades
grades <- c(96, 100, 85, 92, 81, 72)
grades

# ============================================================
# PROBLEM 7 - Add bonus points to every grade
# ============================================================

# R adds 3 to EVERY element automatically - no loop needed
bonus_points_added <- grades + 3
bonus_points_added

# ============================================================
# PROBLEM 8 - one_to_one_hundred using colon operator
# ============================================================

# 1:100 generates all whole numbers from 1 to 100 instantly
one_to_one_hundred <- 1:100
one_to_one_hundred

# ============================================================
# PROBLEM 9 - Vector operations with comments
# ============================================================

# Adds 20 to every element in second_vector, shifting all values up by 20
second_vector + 20

# Multiplies every element in second_vector by 20, scaling all values up
second_vector * 20

# Compares each element to 20 and returns TRUE if greater than or equal to 20
second_vector >= 20

# Returns TRUE for every element that is NOT equal to 20
second_vector != 20

# ============================================================
# PROBLEMS 10-14 - Statistical functions on one_to_one_hundred
# ============================================================

# Sum: adds all numbers from 1 to 100 together
total <- sum(one_to_one_hundred)
total

# Mean: calculates the average (sum divided by count)
average_value <- mean(one_to_one_hundred)
average_value

# Median: finds the exact middle value when sorted
median_value <- median(one_to_one_hundred)
median_value

# Problem 13 - Maximum value
max_value <- max(one_to_one_hundred)
max_value

# Problem 14 - Minimum value
min_value <- min(one_to_one_hundred)
min_value

# ============================================================
# PROBLEMS 15-17 - Extracting elements using brackets
# ============================================================

# Extract position 1 - the first element of second_vector
first_value <- second_vector[1]
first_value

# Extract positions 1, 2, and 3 using the colon shortcut
first_three_values <- second_vector[1:3]
first_three_values

# Extract positions 1, 5, 10, and 11 using a vector of indexes
vector_from_brackets <- second_vector[c(1, 5, 10, 11)]
vector_from_brackets

# ============================================================
# PROBLEM 18 - Boolean bracket extraction
# ============================================================

# TRUE/FALSE inside brackets keeps only the TRUE positions
# Position 2 (12) and position 4 (5) are TRUE so only those are returned
vector_from_boolean_brackets <- first_vector[c(FALSE, TRUE, FALSE, TRUE)]
vector_from_boolean_brackets

# ============================================================
# PROBLEMS 19-20 - Logical indexing explained
# ============================================================

# Evaluates each element in second_vector and returns TRUE if >= 10, FALSE if not
second_vector >= 10

# Filters one_to_one_hundred to return ONLY values that are 20 or greater
one_to_one_hundred[one_to_one_hundred >= 20]

# ============================================================
# PROBLEMS 21-23 - Filtering vectors
# ============================================================

# Keep only grades above 85 using logical indexing
lowest_grades_removed <- grades[grades > 85]
lowest_grades_removed

# Remove positions 3 and 4 using negative indexes
middle_grades_removed <- grades[c(-3, -4)]
middle_grades_removed

# Remove positions 5 and 10 from second_vector using negative indexes
fifth_vector <- second_vector[c(-5, -10)]
fifth_vector

# ============================================================
# PROBLEMS 24-30 - Random vector and statistics
# ============================================================

# set.seed makes random numbers reproducible - same result every time
set.seed(5)
random_vector <- runif(n = 10, min = 0, max = 1000)
random_vector

# Total of all values in random_vector
sum_vector <- sum(random_vector)
sum_vector

# Running total - each position shows sum of all values up to that point
cumsum_vector <- cumsum(random_vector)
cumsum_vector

# Average of all values in random_vector
mean_vector <- mean(random_vector)
mean_vector

# Standard deviation - measures how spread out values are from the mean
sd_vector <- sd(random_vector)
sd_vector

# Round every value to the nearest whole number
round_vector <- round(random_vector)
round_vector

# Sort values from smallest to largest
sort_vector <- sort(random_vector)
sort_vector

# ============================================================
# PROBLEMS 31-33 - Load ds_salaries.csv dataset
# ============================================================

# read.csv loads your CSV file into R as a data frame (like a spreadsheet)
first_dataframe <- read.csv("ds_salaries.csv")

# summary gives min, max, mean, median for every column at once
summary(first_dataframe)