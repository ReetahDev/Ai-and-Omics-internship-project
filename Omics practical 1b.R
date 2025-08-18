
# setting working directory and R project. 
#to check current working directory we use the command : getwd()
getwd()
# we can change our working directory mannually or using a command :setwd("path to your folder)

# creating sub folders under a folder 

dir.create("data")
dir.create("script")
dir.create("results")


# how R codes works
# Every function contains and argument/ input 

print("biotechnology")
gene_expression <- c(2.3, 3.8, 3.9, 5.6, 9.4)


# variable stores values
# in the above e.g the gene expression is the variable name. 
# <- an assignment operator used to store values into the variable 
mean(gene_expression)

# basic visualization

plot(gene_expression)
hist(gene_expression)
barplot(gene_expression)

# check basic stats
summary(gene_expression)




# R data types 
# 1. Numeric with decimal point positive or negative 

x <- 40
class(x)
y<-45
class(y)

# 2 integer/whole number

z <-24L
class(z)

# integer consumes less storage than numeric data 

var_1 <- c(28.4, 23.7, 2.9)
class(var_1)

# converting numeric to integer

var_2<- as.integer(var_1)
class(var_2)
# converting integer to numeric

var_3 <- as.numeric(var_2)
class(var_3)

# 3 character / strings 

var_4 <- c("gene1", "gene2", "gene3")
class(var_4)

var_6 <- c("3.8", "4.6", "5.9")
class(var_6)
mean(var_6)
var_7 <- c(3.8, 4.6, 5.9)
mean(var_7) 

# 4 factor / categorical data 
# is either written as numeric(0, 1) or character (normal, cancer)
disease_status <- c("cancer","normal", "cancer", "cancer", "normal")
class(disease_status)

# convert class into factor 
disease_status <- as.factor(disease_status)
class(disease_status)
disease_status
disease_status <- factor(disease_status,
                         levels = c("normal", "cancer"))
disease_status


age <- c(23,25,28)


# import cvs file 

data <- read.csv(file.choose())
View(data)
str(data)

# convert height into factor
data$height_fac <- as.factor(data$height)
str(data)
# relevel the factors 

data$height_fac <- factor(data$height_fac,
                          levels = c("Tall", "Meduim", "Short"))
data$height_fac


# covert gender to factor 

data$gender_fac <- as.factor(data$gender)

# convert the factor to numeric 

data$gender_num <- ifelse(data$gender_fac == "Female", 1,0)
class(data$gender_fac)
 
data$gender_num <- as.factor(data$gender_num)
class(data$gender_num)


# To save file as cvs format 

write.csv(disease_status,file = "results/patient_details.csv")


# save the entire  workspace
save.image(file = "fullw orkspace.RData")

# to save specific objects 
save(gene_expression,disease_status,file = "fullworkspace.RData" )
 
load(full workspace.RData)
load(full_workspace.RData)
