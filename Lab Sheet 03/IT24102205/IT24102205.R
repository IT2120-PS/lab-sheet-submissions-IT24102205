setwd("C:\\Users\\FixHome\\Desktop\\IT24102205")

student_data <- read.csv("Exercise.csv", header = TRUE)
View(student_data)
summary(student_data$X1)

hist(student_data$X1, 
     main = "Age Distribution of Students", 
     xlab = "Age", 
     col = "lightblue")

gender_table <- table(student_data$X2)
gender_table

barplot(gender_table, 
        main = "Gender Distribution", 
        xlab = "Gender (1=Male, 2=Female)", 
        ylab = "Count",
        col = c("blue", "pink"))

boxplot(X1 ~ X3, 
        data = student_data, 
        main = "Age Distribution by Accommodation Type",
        xlab = "Accommodation Type (1=Home, 2=Boarded, 3=Lodging)",
        ylab = "Age",
        col = c("lightgreen", "orange", "lightblue"))
