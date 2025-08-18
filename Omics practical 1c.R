# practical module c 
# topics 
# Syntax in R
   # VARIABLES 
   # COMMENTS
   # KEYWORD

# Variables stores values 

gene <- "TP53"

# TO retrive the value 
gene
 
# 2.3, 4.6, 3.6, 7.2, 4.7 
# to store the values into one variable 

expression_levels <- c(2.3, 4.6, 3.6, 7.2, 4.7 )

#  to import data as variables 

raw_data <- read.csv(file.choose())
raw_data

# rules to assigning a  variable name 

# 1. variables must not start with a number but a letter. Although anumber can be a t the middle or the end

1gene <- 25
gene1 <- 25

# 2nd, variable name should not contain space in it. instead of space we use underscore or dot(.)

sample id <- "s01"
sample_id <- "s01"
sample.id <- "s02"
 
# R is a case sensitive , so be careful while working with variable name and 

    # taking note of small and capital letters. 

Glucose_levels <- 110
glucose_levels <- 110

# R overwrites variable without warning 

glucose_levels <- c(110, 90, 120)


data <- raw_data
raw_data$patient_id <- NULL # dis code removes the patient_id column
clean_data <- data[,-1] # dis code deleted the patient_id col and added a new variable 
clean_data

# comments 
# helps us understand our code , R doesnt consider it as a code

# data_2 <- 23

 # okeywords; are reserved words in for specific function
# if, else, TRUE, FALSE, For so on

help("reserved")

help("mean")
# sorting values maybe from accending to descending or vise versa

sorted_age <- sort(raw_data$age, decreasing = TRUE)
sorted_age
raw_data$age

sorted_age <- sort(raw_data$age, decreasing = FALSE)
sorted_age


# if else, helps us create logical condition 

gene_expression <- 30

if(gene_expression >25){
  print("Gene is highly expressed")
}
# in the above statement , if is a keyword that check the condition if gene expression is true.
# in the case where the statement is not true, we have... 

if(gene_expression >50){
  print("Gene is highly expressed")
} else{
  print("Gene expression is low ")
}

# we cant use if keyword as variable

if <- 25


# loop: used to repeat same task multiple times. 
# lets say we want to convert to another data type multiple times. 

# lets say gender is a categorical/ diagnosis, and smoker data type 
# so we need to convert them from character to factor.

# raw_data$gender_fac <- as.factor(raw_data$gender)

# since we have three objects to convert, rather than doing them manually(one by one)
# we could use the loop function to convert the 3 once. 
# but first we need to create a copy of the raw data with the name clean data. 

clean_data <- raw_data

str(clean_data)


# to convert column automatically to factor

# we use the loop function command. 

for (x in 1:ncol(clean_data)) {
  if (is.character(clean_data[[x]])) {
    clean_data[[x]] <- as.factor(clean_data[[x]])
    
  }
  
}

str(clean_data)

data$diagnosis_fac <- factor(data$diagnosis_fac, 
                   levels = c("Normal",Cancer))

dir.create("Result  ")
save.image(file = "full workspace.RData")
