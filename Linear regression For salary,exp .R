Salary_Data=read.csv("Salary_Data")
View(Salary_Data)
head(Salary_Data)
data.frame(Salary_Data)
summary(Salary_Data)

#To Check Normality test (Q Q test) whether data is normally distributed or not 
attach(Salary_Data)
qqnorm(YearsExperience)
qqline(YearsExperience)

qqnorm(Salary)
qqline(Salary)

# Checking Histogram & boxPlot Graphs 
hist(YearsExperience)
hist(Salary)

boxplot(YearsExperience)
boxplot(Salary)

# Scatter Plot 
plot(YearsExperience,Salary,main = "AMARON BATTARIES SALARY FOR EXPERIENCE",col="blue", col.main="orange", col.lab="red", xlab="Years Of Experience",ylab="salary",pch=20)

cor(YearsExperience,Salary) # # Correlation Coefficient value is 0.978 , strenth is strong, direction positive


# Simple Linear Model 
model1=lm(Salary~YearsExperience,data = Salary_Data)
summary(model1)
# R^2 Value is 0.957
confint(model1,level=0.95)
predict(model1,interval="predict")






