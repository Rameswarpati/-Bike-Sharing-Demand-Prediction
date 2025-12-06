
dir()
install.packages("readxl")
 # install only once
library(plotly)
# load every session
library(dplyr)   
library(readxl)
data = read_excel("1657875746_day.xlsx")

library(readxl)



View(data)

str(data)

# 1.Exploratory data analysis
summary(data)
str(data)

data$season <- as.factor(data$season)

data$yr <- as.factor(data$yr)
data$mnth <- as.factor(data$mnth)
data$holiday <- as.factor(data$holiday)
data$weekday <- as.factor(data$weekday)
data$workingday <- as.factor(data$workingday)
data$weathersit <- as.factor(data$weathersit)


colSums(is.na(data))

# 2.Attributes distributions and trends
# Plot monthly distribution of the total number of bikes rented.
library(plotly)

plot_ly(data, x = ~mnth, y = ~cnt, type = 'bar') %>%
  layout(title = "Monthly Distribution of Total Bikes Rented",
         xaxis = list(title = "Month"),
         yaxis = list(title = "Count of Bikes Rented"))

# Plot yearly distribution of the total number of bikes rented

yearly_data <- data %>%
  group_by(yr) %>%
  summarize(total_cnt = sum(cnt))

# Create the bar plot with Plotly
plot_ly(yearly_data, x = ~yr, y = ~total_cnt, type = 'bar') %>%
  layout(title = "Yearly Distribution of Total Bikes Rented",
         xaxis = list(title = "Year"),
         yaxis = list(title = "Total Count of Bikes Rented"))

# Plot boxplot for outliers analysis
boxplot(data[, c('temp', 'atemp', 'hum', 'windspeed', 'casual', 'registered', 'cnt')], main="Boxplot for Outliers Analysis")

# Create a list of box plots for each variable
p <- plot_ly() %>%
  add_trace(y = ~data$temp, type = 'box', name = 'Temperature') %>%
  add_trace(y = ~data$atemp, type = 'box', name = 'Feels-Like Temperature') %>%
  add_trace(y = ~data$hum, type = 'box', name = 'Humidity') %>%
  add_trace(y = ~data$windspeed, type = 'box', name = 'Wind Speed') %>%
  add_trace(y = ~data$casual, type = 'box', name = 'Casual Users') %>%
  add_trace(y = ~data$registered, type = 'box', name = 'Registered Users') %>%
  add_trace(y = ~data$cnt, type = 'box', name = 'Total Count')

# Set the layout for the plot
p <- p %>% layout(title = "Boxplot for Outliers Analysis",
                  yaxis = list(title = "Values"))

# Display the plot
p

# 3. Split the dataset into train and test dataset
library(caret)

set.seed(42)
splitIndex <- createDataPartition(data$cnt, p = 0.8, list = FALSE)
train_data <- data[splitIndex,]
test_data <- data[-splitIndex,]
View(test_data)
View(train_data)

# 4. Create a model using the random forest algorithm
library(randomForest)

rf_model <- randomForest(cnt ~ ., data=train_data, ntree=500, mtry=3, importance=TRUE)

# 5. Predict the performance of the model on the test dataset
# Predicting on the test dataset
y_pred <- predict(rf_model, test_data)
show_test = test_data
show_test['Predicted Cnt'] = y_pred
View(show_test)


# Calculate RMSE
library(Metrics)

rmse_val <- rmse(test_data$cnt, y_pred)


# Calculate R^2
rsq <- cor(test_data$cnt, y_pred)^2

mse_val <- mse(test_data$cnt, y_pred)

mae_val <- mae(test_data$cnt, y_pred)



