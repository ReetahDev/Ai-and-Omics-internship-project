dir.create("raw_data")
dir.create("script")
dir.create("results")
dir.create("new_data")




data <- read.csv(file.choose())
View(data)
str(data)

data$patient_id_fac <- as.factor(data$patient_id)
class(data$patient_id_fac)

data$gender_fac <- as.factor(data$gender)
class(data$gender_fac)

data$diagnosis_fac <- as.factor(data$diagnosis)
class(data$diagnosis_fac)

data$diagnosis_fac <- factor(data$diagnosis_fac, 
                             levels = c("Cancer","Normal"))
data$diagnosis_fac 


data$smoker_fac <- as.factor(data$smoker)
class(data$smoker_fac)


data$smoker_num <- ifelse(data$smoker_fac == "Yes", 1, 0)
data$smoker_num
class(data$smoker_num)


write.csv(data, file = "new_data/patient_info_clean_csv")

save.image(file="Rita_class_1b_assignment.RData")


