#set your working directory, import data into R
setwd("C:/STA5206")
students <-read.table("students.txt", header =T)
attach(students)
names(students)
students

#univariate descriptive - Categorical Variable 
# Frequence tables with counts, proportions 
table (Gender)
prop.table((table(Gender)))
table(SES)
prop.table(table(SES))
table (Prog_Type)

prop.table(table(Prog_Type))


#Bar and Pie Charts
barplot(table(Gender))
barplot(table(SES), col = c("red"))
pie(table(Gender))


# Dispersion or spread measures
var(Read_Score)
mad(Read_Score)
sd(Read_Score)

#six number summaries
summary(Read_Score)
summary(students)

#take :ID: variable out and do summary of the remaining variables
summary(students[, -1])

#all quantiles from a to b by an increment of k
quantile(Read_Score, seq(0,1,0.01))

#some selected quantiles 
p <- c( .1, .21, .325 , .7 , .8 , .99)
quantile(Read_Score, p)



# commonly used plots
plot(Read_Score)
hist(Read_Score)
stem(Read_Score)
boxplot(Read_Score)

#Bivariate Descriptive - Two Categorical Variables
table(Gender, SES)
prop.table(table(Gender, SES), 1)
prop.table(table(Gender, SES), 2)
barplot(table(Gender, SES), col =c("blue", "red"), legend=rownames(table(Gender, SES)), beside = T)
barplot(table(Gender, SES), col =c("blue", "red"), legend=rownames(table(Gender, SES)))


#one categorical and one quantitative variable
by(Read_Score, Gender, mean)
by(Read_Score, Gender, var)
tapply(Read_Score, Gender, mean)
barplot(tapply(Read_Score, SES, mean))
tapply(Read_Score, SES, var)

#boxplot of Read_score by the categorical variable SES
  boxplot(SES, Read_Score)
  plot(SES, Read_Score, notch =T, range =1)



#create a dataframe of numerical variables only, then find means of all variables

#Bivariate Descriptive - two Quantitative variables
  plot(Read_Score, Write_Score)  
  


