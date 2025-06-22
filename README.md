# My_data_analysis_project_1
This repository contains an exploratory data analysis (EDA) and predictive modeling of a heart failure prediction dataset using MySQL for data querying and RStudio for statistical analysis and visualization.

# Dataset
The heart_failure_prediction.csv dataset contains various medical parameters that can be used to predict the likelihood of heart disease. Key features include:
Age, Sex,ChestPainType, RestingBP, Cholesterol, MaxHR, ExerciseAngina, ST_Slope, HeartDisease (target variable: 0 = No, 1 = Yes)

# SQL Analysis
Repository contains several SQL scripts used to extract specific insights and aggregations from the heart_failure_prediction table.
**Queries Performed :**
1. Calculate the average cholesterol level by gender.
2. Show the distribution of heart disease cases based on ChestPainType.
3. Provide a correlation proxy by grouping age into categories and counting total patients and those with heart disease within each group.
4. Identify patients with high RestingBP (greater than 140) and high Cholesterol (greater than 250).
5. Calculate the average maximum heart rate (MaxHR) grouped by ExerciseAngina (a stress indicator).
6. Compare the average age between individuals with and without heart disease.
7. Retrieve the top 5 highest cholesterol values along with associated patient information (Age, Sex, HeartDisease).
8. Count patients grouped by ST_Slope and HeartDisease status.

# R Analysis
1. **Data Loading and Summary**
  i. Loads the heart_failure_prediction.csv dataset into R.
  ii. Provides a preview of the dataset.
  iii. Generates a summary of key statistics for all variables.
2. **Exploratory Data Analysis (EDA)**
  i. Heart Disease Frequency by Sex: A contingency table showing the distribution of heart disease across genders.
  ii. Boxplot of Cholesterol by Heart Disease status: Visualizes the distribution of cholesterol levels for patients with and without heart disease.
  iii. Correlation Matrix: Calculates and displays the correlation matrix for all numerical features in the dataset, providing insights into relationships between variables.
  iv. Bar chart: Chest Pain Type frequency among heart disease patients: Uses ggplot2 to visualize the frequency of different chest pain types specifically among patients                     diagnosed with heart disease.
  v. Density plot for MaxHR by Sex: Illustrates the distribution of maximum heart rate (MaxHR) separated by gender, using ggplot2 for visualization.
3. **Predictive Modeling**
   i. Logistic Regression Model: Builds a logistic regression model to predict HeartDisease based on Age, Cholesterol, MaxHR, Sex, and ChestPainType.

# Insights & Model
Older individuals, especially those over 60, show a higher incidence of heart disease. Cholesterol levels vary with heart disease status and gender, with the top 5 highest cases identified. Certain chest pain types are more common among heart patients. Exercise-induced angina correlates with lower average MaxHR, which also differs by sex. High blood pressure and cholesterol coexist in specific patients. ST_Slope emerges as a relevant indicator. A logistic regression model using Age, Cholesterol, MaxHR, Sex, and ChestPainType helps predict heart disease likelihood effectively.

# Technologies Used
MySQL: For efficient data querying, aggregation, and initial data exploration.
RStudio: For advanced statistical analysis, data visualization, and building predictive models.
        ggplot2 library: Used for creating high-quality data visualizations.



