# practice Excercise 


# 1. checking the cholesterol level with if statement. 
cholesterol_level <- 230

if (cholesterol_level >240 ) {
  print("high cholesterol")
  
}

# 2. using the if..else statement to check for the blood pressure status 

blood_pressure_status <- 130


if (blood_pressure_status < 120 ) {
  print("Blood pressure is normal")
  
}   else{
  print("Blood pressure is high")
 }

# 3. Automating data type conversion with for loop. 

patients_info <- read.csv(file.choose())

data1 <- patients_info

# converting the character columns into ffactor data. 

for (i in 1:ncol(patients_info)) {
  if (is.character(patients_info[[i]])) {
    patients_info[[i]] <- as.factor(patients_info[[i]])
    
  }
  
}

str(patients_info)

for (i in binary_col) {
  patients_info[[i]] <- ifelse(patients_info$smoker == "Yes",1,0 )
  
}

# 4a converting one of the factor col into a numeric data type (for e.g in smoker)



str(patients_info)

# 3b 

metadata <- read.csv(file.choose())

data2 <- metadata


# converting all the character columns into factor data.

for (x in 2:ncol(metadata)) {
  if ( is.character(metadata[[x]])) {
    metadata[[x]] <- as.factor(metadata[[x]])
    
  }
  
}
str(metadata)
# 4b. converting one of the factor data (gender) in metadata into num.



  
    
