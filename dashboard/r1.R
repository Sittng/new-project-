## create variables
income <- 50000
expense <- 30000
saving <- income - expense

## remove variables
rm(saving)

## compare values
1 + 1 == 2
2 * 2 <= 4
5 >= 10
5 - 2 != 3 ## not equal
10 < 2 
10 > 2

## compare texts/ characters
"Hellow" == "Hellow"

## Data types
# 1. numeric
age <- 32
print(age)
class (age)

# 2. character
my_name <- "Toy"
my_university <- 'Kasetsart University'
print(my_name)
print(my_university)
class(my_name); class(my_university)

# 3. logical
result <- 1 + 1 == 2 
print(result)
class(result)

# 4. factor
animals <-c("Dof", "Cat", "Cat", "Hippo")
class(animals)

animals <- factor(animals)
class(animals)

# 5. date/time
time_now <- Sys.time()
class(time_now)

## Convert Data types

## main functions
## as.numeric()
## as.character()
## as.logical()

x <- 100
class(x)

char_x <- as.character(x)
num_x <- as.numeric(char_x)
class(num_x)

## logical: TRUE/ FALSE
as.logical(0)
as.logical(1)
as.numeric(TRUE)
as.numeric(FALSE)

## Data Structures
## 1. Vector
## 2. Matrix
## 3. List
## 4. DataFrame

## ----------------
## Vector

1:10
16:25

## single data type
gpa <- c(toy = 3.41, bew = 3.95. john = 2.58)

## 3 subsets in R
## position, name, condition 

## vectorization
gpa

## sequence generation
seq(from = 1, to = 100, by = 5)

## help file
help("seq")

## function c
friends <- c("David", "Marry", "Anna", "John", "Willam")
ages <- c(30, 31, 25, 29, 32)
is_male <- c(TRUE, FALSE, FALSE, TRUE, TRUE)

## Matrix
x <- 1:25
length(x)
dim(x) <- c(5,5)

m1 <- matrix(1:25, ncol=5)
m2 <- matrix(1:6, ncol=3, nrow=2, byrow=T)

## element wise computation
m2 + 100
m2 * 4

## List

my_name <- "Toy"
my_friends <- c("Wan", "Ink", "Zue")
m1 <- matrix(1:25, ncol=5)
R_is_cool <- T

my_list <- list(item1 = my_name,
                item2 = my_friends,
                item3 = m1,
                item4 = R_is_cool)

my_list$item3
my_list$item1

## Data Frame

friends <- c("Wan", "Ink", "Aan", 
             "Bee", "Top")
ages <- c(26, 27, 32, 31, 28)
locations <- c("New York", "London",
               "London", "Tokyo",
               "Manchester")
movie_lover <- c(TRUE, TRUE, FALSE,
                 TRUE, TRUE)
### have problem!
df <- data.frame(friends,
                 ages,
                 locations,
                 movie_lover)
View(df)

## create dataframe from list 
my_list <- list(friends = friends,
                ages = ages,
                locations = locations,
                movie = movie_lover)

data.frame(my_list)

## if
## =IF() in google sheets

score <- 25

if (score >= 90) {
  print("Passsed")
} else {
  print("Failed")
}

if (score >= 90) {
  print("Passed")
} else if (score >= 50){
  print("Ok")
} else if (score >= 25){
  print("Almost die")
} else {
  print("Enroll again")
}

# for
friends <- c("Toy", "John", "Mary")

for  (friend in friends) {
  print (paste("Hi", friend))
}

# vectorization

paste("Hi", friends)

nums <- c(5, 10, 12, 20, 25)
nums <- nums + 2

for (num in nums) {
  print(num - 2 )
}

(num <- nums - 2)

## while loop
count <- 0

while (count < 5){
  print("Hi!")
  count <- count + 1
}

## function 
## input -> f() -> output

x <- c(10, 25, 50, 100)

sum(x)
mean(x)
sd(x)

## create our first function 

greating <- function(){
  print("Hoello World")
}

greeting_name <- function(name) {
  print( paste("Hollo", name))
}

func <- function() {
  greating()
  greeting_name("Best")
}

## Function Parameter & Argument
## name age => parameter
## "Toy", 25 => argument
greeting_name <- function(name = "Toy", age = 34) {
  print( paste("Hollo", name))
  print( paste("age :", age))
}

## add_two_nums (function)
add_two_nums <- function(l1, l2) {
  return (l1 + l2)
}

## cube() function
cube <- function (base, power=3) {
  return(base ** power)
}

## Function Kata
## count_ball( function)
balls <- c("red", "pink", "blue", "green", "green", "green", "black", "red")

count_ball <- function(balls, color){
  sum(balls == color)
}

## loop over a dataframe
data()

nrow(USArrests)
ncol(USArrests)
head(USArrests)

cal_mean_by_col <- function(df){
  cal_names <- names(df)
  
  for (i in 1:ncol(df)) {
    avg_col <- mean(df[[i]])
    print(paste(col_name[i], ":", avg_col))}
}

## apply function
avg_by_row_mtcars <- apply(mtcars, MARGIN=1, mean) # by row

apply(mtcars, MARGIN = 2, sum)
apply(mtcars, MARGIN = 2, sd)
apply(mtcars, MARGIN = 2, median)

## install packages
install.packages(c("readr",
                   "readxl",
                   "googlesheets4",
                   "jsonlite",
                   "dplyr",
                   "sqldf",
                   "RSQLite"))

## load library
library(readr)
library(readxl)
library(googlesheet4)
library(jsonlite)
library(dplyr)
library(saldf)
library(RSQLite)


## library(readxl)
## read excel file
econ <- read_excel("students.xlsx", sheet=1)
business <- read_excel("students.xlsx", sheet=2)
data <- read_excel("students.xlsx", sheet=3)

## library(dplyr)
## bind_rows == SQL UNION ALL

list_df <- list(econ, business, data)
full_df <- bind_rows(list_df)

## bind_cols() != JOIN

df1 <- data.frame(
  id = 1:5,
  name = c("John", "Marry", "Anna", 
           "David", "Lisa")
)
df2 <- data.frame(
  city = c(rep("BKK",3), rep("LONDON",2) ),
  country = c( rep("TH", 3), rep("UK", 2) )
  
)

## load library sqldf
library(sqldf)
library(readr)

school <- read_csv("school.csv")

sqldf("select * from school;")

sqldf("select
      avg(student),
      sum(student)
      from school;")

sqldf("select
      school_id,
      school_name,
      country
      from school
      ")

sql_query <- "select * from school
  where country = 'USA' "


## load library
library(RSQLite)

## connect to SQLite database (.de file)
## 1. open
conn <- dbConnect(SQLite(), "chinook.db")

## 2. get data 
dbListTables(conn)
dbListTables(conn, "customers")

df <- dbGetQuery(conn, "select * from customers
                 where country = 'USA'")
df22 <- dbGetQuery(conn, "select * from customers
                 where country = 'United Kingdom'")



## 3. close connection 
dbDisconnect(conn)



