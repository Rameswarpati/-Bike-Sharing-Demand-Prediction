setwd("C:/Users/rsrs4/Downloads/Dataset (1)/Dataset")
dir()  

name="pratul"
class(26.6)

class(8)
class(8L)
class(9.9L)

class(TRUE)
class(F)
class(NA)

nam1='orince';age=26;city='pune';inte=6L
nam1
class(nam1)

32%%6
2/3
3-2
2^3

x = 3

y = 3
class(x)

c(T,T,F,F,T,F) & c(F,F,T,T,T,F)
c(T,T,F,F,T,F) | c(F,F,T,T,T,F)
T||F
T&&F


prime_numbers = c(2,3,5,7,11,13,17,19,23,29,31)
class(prime_numbers)


names = c('Kim','Ahmad','@','Anshu', 'Anil')
class(names)

bool = c(T,TRUE,F,FALSE,NA)
class(bool)

mixed<- c(T,8L)
class(mixed)


a = c(11,12,13,14,15,16,17,18)

a[3]
a[5]

a[c(3,7,5)]

seq(1,100,3)


temp = c(12,14,15,16,18,20) #Celsius



temp_f=(9/5*temp+32)

temp[temp>15]


temp_names = c(h1 = 22,h2 = 23,h3 = 24,h4 = 25,h5 = 26,h6 = 27,h7 = 28)
class(temp_names)



temp_names['h5']


temp_names[5]

v1=c(23,100,25,50)
v2 = c(1000,2000)

v3=c(v1,v2)

v3
v4 = c(v1[2],v2[2])



v5 = c(1,2,3,4,5)
v6 = c(10,20,30,40,50)

v5*v6

v7 = c(1,2,3,4,5)
v8 = c(10,20,30,40,50,60,70)
v7*v8



temp_city_1 = c(30,32,33,34,35,12,11)
temp_city_2 = c(30,13,44,45,37,15,18)
temp_city_3 = c(21,22,22,23,38,14,19)
temp_city_4 = c(39,25,37,14,40,33,24)
temp_city_5 = c(30,27,33,34,39,29,27)


r=rbind(temp_city_1,temp_city_2,temp_city_3,temp_city_4,temp_city_5)

r


c = cbind(temp_city_1,temp_city_2,temp_city_3,temp_city_4,temp_city_5)
c

temp_all=c(temp_city_1,temp_city_2,temp_city_3,temp_city_4,temp_city_5)
temp_all


mat=matrix(temp_all,nrow =7,ncol = 5,byrow = F )
mat
mat=matrix(temp_all,nrow =7,ncol = 5,byrow = T )
mat[1,1]

mat[,3]
mat[3,]

mat[c(3,4,5),c(3,4,5)]
class(prime_numbers)

class(as.integer(prime_numbers))
class(as.character(prime_numbers))
class(as.logical(prime_numbers))
class(as.numeric(prime_numbers))



temp_all

temp_mat=matrix(data=temp_all,nrow=5,ncol = 7,
                byrow=T,
                dimnames=list(c('city_1','city_2','city_3','city_4','city_5'),
                              
                              c('Sun','Mon','Tue','Wed','Thu','Fri','Sat')            
                              
                              
                              )
                )

temp_min = temp_mat - 7
temp_max = temp_mat + 5




temp_arr = array(data = c(temp_min,temp_max,temp_mat),
                 dim = c(5,7,3),
                 dimnames = list(c('city_1','city_2','city_3','city_4','city_5'),
                                 c('Sun','Mon','Tue','Wed','Thu','Fri','Sat')))



temp_arr




temp_arr=array(data=c(temp_min,temp_max,temp_mat),
               dim=c(5,7,3),
               dimnames = list(c('city_1','city_2','city_3','city_4','city_5'),
                               c('Sun','Mon','Tue','Wed','Thu','Fri','Sat'))
               )



temp_arr[1,,1]  
temp_arr[,1,1]

temp_arr[3,4,1]

temp_arr[,3:4,1]
temp_arr[,c(3,1,4),1]
temp_arr[c(1,5,3),,3]



name = c('A','B','C','D','E')
age = c(32,34,35,36,37)
sex = c('M','F','F','M','M')
height = c(1.95,1.88,1.81,1.78,1.67)
mem = c(T,F,F,T,T)
int = c(8L,9L,10L,11L,12L)
mix = c('23',8L,32,'M',1.88)

data_example = data.frame(name,age,sex,height,mem,int,mix)

data_example
class(data_example)
class(data_example$age)

class(data_example$name)

class(data_example$sex)

class(data_example$age)

class(data_example$height)

class(data_example$int)

class(data_example$mix)


as.factor(data_example$sex)
levels(as.factor(data_example$sex))


mylist=list(23,name,MAT,temp_arr,data_example)


mylist[5]


current_date<-Sys.Date()
current_time<-Sys.time()

specific_date<-as.Date("2024-05-06")
class(specific_date)

specific_datetime <- as.POSIXct("2024-04-07 15:30:00", tz = "GMT")

specific_datetime

formatted_datetime <- format(Sys.time(), "%Y-%m-%d %H:%M:%S")
Sys.Date()

format(Sys.Date(), '%d')
Sys.Date() -1

Sys.Date() +1


install.packages('lubridate')
library(lubridate)
current_date <- Sys.Date()

pv_m_d<- current_date %m-% months(1)
previous_month<-month(pv_m_d)

previous_year <- year(previous_month_date)


for (teresa in c(1,2,3,4,5,6,7,8,9,10)) {
  {print('chinu')}
  
  num=41
  if (num %% 2==0){
    print('even')
  }else{
    print('odd')
  }
  
}


for (i in 1:5) {
  print(paste("Current number:", i))
}


user_input<- as.numeric(readline('enter here'))

if (user_input %% 2 !=0) {
  print('odd')
  
}else{
  print('even')
}


marks = 10
if(marks >90){
  print('excellent')
}else if(marks >50){
  print('good')
}else {
  print('bad')
}



marks = 10

if (marks >= 90){
  grade = 'A'
}else if (marks >= 75){
  grade = 'B'
}else if (marks >= 55){
  grade = 'C'
}else if (marks >= 35){
  grade = 'D'
}else if (marks >= 20){
  grade = 'F'
}else {
  grade = 'Forfiet Studies' 
}
grade


num=41
st=ifelse(num%%2==0,'even','odd')



grade=ifelse(marks>=90,'A',
             ifelse(marks>=75,'B',
              ifelse(marks>=55,'C',
                     ifelse(marks>=35,'D',
                            ifelse(marks>=20,'F',"for")
                            
                            
                            
                            
                            )
                     
                     
                     )      
                    
                    
                    )
             
             
             )


grade= 'b'

switch(grade,
       a= 'Rs 1lac',
       b=  'rs 35k',c='70k',
       d='rs 15k',fail=' no sc'
       
       )


num = 1
while(num < 11){
  print(paste('2 X', num, '=', 2*num))
  num = num + 1
}

num = 1
while(num<21){
  print(paste('5 x', num, '=', 5*num))
  num = num + 1
}




setwd("C:/Users/rsrs4/Downloads/Dataset (1)/Dataset")
dir() 

dataset = read.csv('data.csv')
View(dataset)



dataset$Age=ifelse(is.na(dataset$Age),
                   
                   ave(dataset$Age,
                                      
                       
                          
                        FUN=function(x)mean(x,na.rm = TRUE)
                                          ),dataset$Age)


dataset$Salary=ifelse(is.na(dataset$Salary),ave(dataset$Salary,FUN=function(x)mean(x,na.rm =TRUE)),dataset$Salary)
View(dataset)

sum(dataset$Age)


dataset$Country=factor(dataset$Country,
                       levels = c('France','Spain','Germany'),
                       labels = c(1,2,3)
                       
                       )


dataset$Purchased = factor(dataset$Purchased,
                           levels = c('No','Yes'),
                           labels = c(0,1))
head(dataset$Purchased)

levels(factor(dataset$Country))
levels(factor(dataset$Purchased))

split_indics<-sample(1:nrow(dataset),size=0.8 * nrow(dataset))
split_indics

training_set<-dataset[split_indics,]
View(training_set)

test_set<-dataset[-split_indics,]
View(test_set)


training_set[,2:3] = scale(training_set[,2:3])
View(training_set)
test_set[,2:3] = scale(test_set[,2:3])
View(test_set)


library(dplyr)
data1 =  read.csv('cars.csv')
View(data1)

colnames(data1)

select(data1,Make,Origin,Model)
summarise(data1)

View(filter(data1,Type=='Sedan',Make=='Audi'))

View(mutate(data1,LWRatio = Length/Weight))
View(mutate(data1, Length = Length/10))
View(arrange(data1,desc(MPG_City)))

View(arrange(data1,(MPG_City))) 



data1[['Total_Mileage']] = data1[['MPG_City']] + data1[['MPG_Highway']]

data1[['Total_Mileage']]

View(data1)

abc=data1%>%
  filter(MSRP>35000,Make=='Audi')%>%
  mutate(LWRatio=Length/Weight)%>%
  select(Make, Model, MSRP, MPG_City, MPG_Highway, LWRatio) %>%
  arrange(desc(MSRP))%>%
  filter(MPG_City>17)

  
  abc
  
  
personal = read.csv("Class_pers.csv")
View(personal)
marks = read.csv("Class_marks.csv")
View(marks)
  
cp = personal[c(7,4,12,5,15,18,11),]
cm = marks[c(7,4,10,8,15,11,3),]
cp
row.names(cp) = 1:nrow(cp)
row.names(cm) = 1:nrow(cm)

merge(cp,cm,by= 'Enrol.No.',all=TRUE)
merge(cp,cm,by= 'Enrol.No.',all=FALSE)
merge(cp,cm,by= 'Enrol.No.',all.X=TRUE)
merge(cp,cm,by= 'Enrol.No.',all.Y=TRUE)  

table(data1$Type,data1$Origin)

tab=sort(table(data1$Type),decreasing = F)
tab


library(plotly)

plot_ly(x = names(tab), y = tab, type = "bar", 
        marker = list(color = "#00FF00")) %>%
  layout(title = "Types of Cars",
         xaxis = list(title = "Types"),
         yaxis = list(title = "Frequency"))




# Histogram
hist(data1$MSRP,breaks = 10,axes = T)
plot(density(data1$MSRP),axes = T)

# Adding mean and median lines
abline(v = median(data1$MSRP), col = 'red', lwd = 2)  # Median line in red
abline(v = mean(data1$MSRP), col = 'blue', lwd = 3)  # Mean line in orange

summary(data1)

boxplot(data1$MPG_City,horizontal = T)

library(plotly)

plot_ly(data = data1, y = ~MPG_City, type = "box", quartilemethod="exclusive")

pnorm(40,30,8.2,lower.tail = F)*100

pnorm(40,30,8.2,lower.tail = T)*100
qnorm(0.9, mean = 30, 8.2)
qnorm(0.1, mean = 30, 8.2)




data1 = read.csv('cars.csv')
View(data1)


data1[['MSRP']]

sample = data1[data1$Type == 'Sedan','MSRP']



t.test(sample,mu = 30000,alternative = 'greater',conf.level = 0.95)


sample1 = data1[data1$Make == 'BMW','MSRP']
sample2 = data1[data1$Make == 'Audi','MSRP']



length(sample1)
length(sample2)

t.test(sample1,sample2,alternative = 'greater',paired=F )


t.test(sample2,sample1,alternative = 'less',paired = F) 



sample_data = read.csv("Sample_data.csv")
View(sample_data)

sample1_p = sample_data$Math1

sample2_p =sample_data$Math2

t.test(sample1_p, sample2_p, paired = TRUE)




df1 <- 3
df2 <- 16

# Confidence level
confidence_level <- 0.95

# Critical F value
f_critical <- qf(confidence_level, df1, df2)
f_critical


#ANOVA = Analysis of Variance
#Jab aapko 3 ya usse zyada groups ke means compare karne hote hain.

#Matlab t-test do groups ke liye, ANOVA 3+ groups ke liye.

#Ye check karta hai ki:
  
 # Kya groups ke beech koi significant difference hai ya nahi.

#Jab aapko 3 ya usse zyada groups ke means compare karne hote hain.

#Matlab t-test do groups ke liye, ANOVA 3+ groups ke liye.

#Ye check karta hai ki:
  
  #Kya groups ke beech koi significant difference hai ya nahi.


table(data1$Make)

n = names(sort(table(data1$Make),decreasing = T)[1:5])
n

subdata = data1[data1$Make %in% n,c('Make','MSRP')]

res = aov(MSRP ~ Make,data = subdata) # ~ TILDA

summary(res)


table(data1$Make)


n= names(sort(table(data1$Make),decreasing = T)[1:5])
n


subdata=data1[data1$Make %in% n,c('Make','MSRP') ]
subdata
res= aov(MSRP ~ Make,data=subdata)
res
summary(res)

sample_data = read.csv('Sample_data.csv')
View(sample_data)

obs_table=table(sample_data$Gender,sample_data$Prog)

chisq.test(obs_table)

MAT

results=apply(MAT,2,mean)
apply(MAT,2,sum)


list_data<-list(
  number=1:5,
  letters=LETTERS[1:5],
  matrix=matrix(1:9,nrow=3)
  
)

list_data
square_function <- function(x) {
  if (is.numeric(x)) {
    return(x^2)
  } else {
    return(x)
  }
}

square_function


result<-lapply(list_data,square_function)


print("Original List:")
print(list_data)
print("List after applying custom function:")
print(result)




results = sapply(temp_all,sqrt)

sapply(MAT, log10)


sapply(temp_all, function(x) x^(1/3))


vector_data <- c(23, 45, 65, 34, 28, 56, 39, 48, 29, 51)

# Create a factor (categorical variable) to group the data
factor_data <- factor(c("Group1", "Group1", "Group2", "Group2", "Group1",
                        "Group2", "Group1", "Group2", "Group1", "Group2"))


result <- tapply(vector_data, factor_data, mean)
tapply(vector_data, factor_data, sum)
tapply(vector_data, factor_data, sd)
tapply(vector_data, factor_data, sqrt)
result



library(mongolite)

url <- "mongodb+srv://Prat02:Loyal123@sandbox.mhx3lgv.mongodb.net/Car_Prices"

mongo_conn <- mongo(collection = "CarPrice", url = url)

result <- mongo_conn$find("{}",limit = 50000)
print(result)
View(result)
library(ggplot2)


average_price_by_make <- aggregate(sellingprice ~ make, data = result, mean)
print(average_price_by_make)

ggplot(result, aes(x = make)) +
  geom_bar() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  labs(title = "Count of Cars by Make", x = "Make", y = "Count")





dataset = read.csv("Salary_Data.csv")
View(dataset)


colSums(is.na(dataset))


set.seed(90)
split_indics=sample(1:nrow(dataset),size=2/3*nrow(dataset))
split_indics

training_set<-dataset[split_indics,]
test_set<-dataset[-split_indics,]
View(test_set)

regressor=lm(formula=Salary ~ YearsExperience,data=training_set)
regressor
y_pred=predict(regressor,newdata = test_set)
summary(y_pred)
show_test = test_set
show_test['predicated salary']=y_pred
View(show_test)

newdata<-data.frame(YearsExperience = 15)
predict(regressor,newdata)

library(plotly)


p<-plot_ly(data = training_set,x=~YearsExperience,y=~Salary,
           
           type='scatter', mode = 'markers', marker = list(color = 'red'), name = 'Actual Salary'
           
           )


p <- add_trace(p, x = ~YearsExperience, y = ~predict(regressor, newdata = training_set), 
               mode = 'lines', line = list(color = 'blue'), name = 'Predicted Salary')



p <- layout(p, title = 'Salary vs Experience (Training Set)', xaxis = list(title = 'Years of Experience'), 
            yaxis = list(title = 'Salary'))

p



# Scatter plot for the test set
p <- plot_ly(data = test_set, x = ~YearsExperience, y = ~Salary, 
             type = 'scatter', mode = 'markers', marker = list(color = 'red'), name = 'Actual Salary (Test Set)')

# Add regression line based on the training set
p <- add_trace(p, data = training_set, x = ~YearsExperience, y = ~predict(regressor, newdata = training_set), 
               mode = 'lines', line = list(color = 'blue'), name = 'Predicted Salary (Training Set)')

# Add titles and labels
p <- layout(p, title = 'Salary vs Experience (Test Set)', xaxis = list(title = 'Years of Experience'), 
            yaxis = list(title = 'Salary'))

# Display the plot
p


# Scatter plot for the test set
p <- plot_ly(data = test_set, x = ~YearsExperience, y = ~Salary, 
             type = 'scatter', mode = 'markers', marker = list(color = 'red'), name = 'Actual Salary (Test Set)')

# Add regression line based on the training set
p <- add_trace(p, data = training_set, x = ~YearsExperience, y = ~predict(regressor, newdata = training_set), 
               mode = 'lines', line = list(color = 'blue'), name = 'Predicted Salary (Training Set)')

# Add titles and labels
p <- layout(p, title = 'Salary vs Experience (Test Set)', xaxis = list(title = 'Years of Experience'), 
            yaxis = list(title = 'Salary'))

# Display the plot
p

# R-squared
summary(regressor)$r.squared


install.packages("Metrics")
# Mean Squared Error and Mean Absolute Error
library(Metrics)

# Actual values
y_actual <- test_set$Salary

mse <- mse(y_actual, y_pred)
print(mse)

# MAE
mae <- mae(y_actual, y_pred)
print(mae)

colnames(show_test)
show_test['Difference'] = show_test['Predicted Salary'] - show_test['Salary']
show_test['Difference'] = round(show_test['Difference'],0)
View(show_test)



dataset = read.csv("50_Startups.csv")

View(dataset)

colSums(is.na(dataset))

dataset$State=factor(dataset$State,
                     levels = c('New York','California','Florida'),
                     labels = c(1,2,3))




View(dataset)

set.seed(90)
split_indics=sample(1:nrow(dataset),size=4/5 * nrow(dataset))

training_set=dataset[split_indics,]
test_set=dataset[-split_indics,]
View(test_set)


regressor=lm(formula=Profit~.,data=training_set)
regressor
summary(regressor)

regressor=lm(formula = Profit~ R.D.Spend+Administration +Marketing.Spend,data=training_set)
summary(regressor)



regressor = lm(formula = Profit ~ R.D.Spend  +Marketing.Spend,
               data = training_set)

summary(regressor)


regressor = lm(formula = Profit ~ R.D.Spend,
               data = training_set)

summary(regressor)


y_pred=predict(regressor,newdata = test_set)
y_pred

new_data<-data.frame(R.D.Spend=30000)

predict(regressor,new_data)

summary(regressor)$r.squared


library(Metrics)

y_actual<-test_set$Profit

mse<-mse(y_actual,y_pred)
print(mse)

mae <- mae(y_actual, y_pred)
print(mae)


Identify numeric columns
numeric_columns <- sapply(dataset, is.numeric)

# Subset the dataset to include only numeric columns
numeric_dataset <- dataset[, numeric_columns]

# Calculate the correlation matrix
correlation_matrix <- cor(numeric_dataset, use = "complete.obs")

print(correlation_matrix)
library(corrplot)

# Plot the correlation matrix
corrplot(correlation_matrix, method = "circle")



dataset = read.csv("Social_Network_Ads.csv")

View(dataset)

colSums(is.na(dataset))


set.seed(90)


split_indices<-sample(1:nrow(dataset),size=3/4 * nrow(dataset))

training_set<-dataset[split_indics,]
test_set<-dataset[-split_indices,]


training_set[-3]<- scale(training_set[-3])
View(training_set)
test_set[-3] = scale(test_set[-3])
View(test_set)


clasifier=glm(formula = Purchased ~. ,
              family = binomial,
              data=training_set
              
              )

prob_pred=predict(clasifier,type='response',data=test_set[-3])


prob_pred

y_pred=ifelse(prob_pred>0.5,1,0)
y_pred
show_test = test_set

show_test['Predicted Probability'] = prob_pred
show_test['Prediction'] = y_pred 

View(show_test)

dataset=read.csv("Social_Network_Ads.csv")
View(dataset)

colSums(is.na(dataset))

set.seed(90)
split_indices<-sample(1:nrow(dataset),size=3/4 * nrow(dataset))
training_set<-dataset[split_indices,]
test_set<-dataset[-split_indices,]
training_set[-3]<-scale(training_set[-3])
test_set[-3]<-scale(test_set[-3])

library(e1071)

classifier<-naiveBayes(x=training_set[-3],y=training_set$Purchased)
y_pred=predict(classifier,newdata=test_set[-3])

cm=table(test_set[,3],y_pred)
cm

TP <- cm[2, 2]  # True Positives
TN <- cm[1, 1]  # True Negatives
FP <- cm[1, 2]  # False Positives
FN <- cm[2, 1]

accuracy<-(TP+TN) /(TP+TN+FP+FN)
accuracy



dataset <- read.csv('Social_Network_Ads.csv')
View(dataset)

dataset$Age=round(ifelse(is.na(dataset$Age),ave(dataset$Age,fun=function(x) mean(x,na.rm=TRUE)),dataset$Age),0)
View(dataset$Age)

dataset$EstimatedSalary = round(ifelse(is.na(dataset$EstimatedSalary),ave(dataset$EstimatedSalary,
                                                                          FUN = function(x) mean(x,na.rm = TRUE)),dataset$EstimatedSalary),0)
View(dataset)


set.seed(30)

split_indics<-sample(1:nrow(dataset),size=3/4 * nrow(dataset))

df <- data.frame(
  Name = c("Ram", "Shyam", "Geeta", "Sita"),
  Age = c(25, NA, 30, 28),
  Salary = c(40000, 50000, NA, 45000)
)

sum(is.na(df))
colSums(is.na(df))
dfc<-na.omit(df)
dfc
df$Age[is.na(df$Age)]<-mean(df$Age,na.rm=T)
View(df)
df$Age[is.na(df$Age)] <- median(df$Age, na.rm = TRUE)
View(df)
df$Salary[is.na(df$Salary)] <- mean(df$Salary, na.rm = TRUE)
