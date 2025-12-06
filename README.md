# -Bike-Sharing-Demand-Prediction
Performed exploratory data analysis, handled missing values, converted data types, visualized rentals using Plotly, and built Random Forest regression model to predict daily bike rental counts with performance evaluation (RMSE, R², MSE, MAE).

<img width="941" height="518" alt="Image" src="https://github.com/user-attachments/assets/76552081-18dc-4360-9c4e-701c686fd07b" />



<img width="943" height="514" alt="Image" src="https://github.com/user-attachments/assets/83c6a3cb-ae47-40c6-a50e-a9e9206226ae" />



<img width="933" height="451" alt="Image" src="https://github.com/user-attachments/assets/a98a0339-4d10-45ba-bb48-945be09722e3" />



<img width="967" height="502" alt="Image" src="https://github.com/user-attachments/assets/c6afe65e-997c-45e9-ae6d-5f28ecd331d9" />



Bike Sharing Demand Analysis Project 🚴‍♂️
Project Overview

This project analyzes daily bike rental data to uncover seasonal patterns, user behavior trends, and predictive insights. Using historical bike-sharing data, we explored factors influencing rentals and built a Random Forest regression model to predict daily rental counts.

Tools & Libraries:

R: tidyverse, plotly, caret, randomForest

Data Visualization: plotly (interactive bar charts & boxplots)

Modeling: Random Forest Regression

Dataset Details


Key Features:

dteday: Date of observation

season: Season (1: Winter, 2: Spring, 3: Summer, 4: Fall)

yr: Year (0: 2011, 1: 2012)

mnth: Month (1–12)

holiday: Holiday indicator

weekday: Day of the week (0–6)

workingday: Working day indicator

weathersit: Weather situation (1–3)

temp, atemp: Actual & “feels-like” temperature

hum: Humidity

windspeed: Wind speed

casual: Non-registered user rentals

registered: Registered user rentals

cnt: Total rentals

Data Cleaning:

No missing values were found.

Categorical columns converted to factors.

Exploratory Data Analysis (EDA)
Seasonal & Monthly Trends

Peak Season: Rentals increase steadily from January to August, peaking in August (~350k rentals).

Off-Peak Season: Sharp decline from September to December, December being the lowest.

Yearly Growth:

2011: ~1.25 million rentals

2012: ~2.05 million rentals

Growth: 60%+ increase year-over-year

Visuals: Interactive bar charts for monthly and yearly rentals using plotly.

Outlier & Distribution Analysis

Stable Variables: temp, atemp, hum, windspeed → tight distributions, minimal outliers.

Casual Users: Multiple outliers → occasional spikes due to events, holidays, or weather.

Registered Users & Total Count: Wider ranges but consistent demand.

Visuals: Colored boxplots highlighting weather vs. user variables for outlier detection.

Predictive Modeling: Random Forest Regression

Objective: Predict daily total bike rentals (cnt) using all available features.

Data Split: 80% training, 20% testing

Model Parameters:

Trees (ntree): 500

Variables per split (mtry): 3

Model Performance on Test Set:

R²: 0.979 (Excellent predictive power)

RMSE: 305.6

MAE: 211.3

Insights: Random Forest captured the nonlinear relationship between weather, seasonal factors, and rental demand effectively.

Key Business Insights

Seasonal Demand Planning: Focus marketing & maintenance during peak months (May–August).

Event-based Promotions: Casual user spikes indicate opportunities for targeted campaigns during holidays or special events.

Resource Allocation: Registered users are consistent; plan staffing and bike availability accordingly.

Predictive Forecasting: Accurate daily demand predictions allow efficient bike distribution and reduce shortages.
