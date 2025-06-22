# Load and preview
heart_failure_prediction <- read.csv('C:/Users/DELL/Desktop/Heart_failure_prediction_dataset/heart_failure_prediction.csv')
View(heart_failure_prediction)

# Summary statistics
summary(heart_failure_prediction)

# Heart Disease frequency by Sex
table(heart_failure_prediction$Sex, heart_failure_prediction$HeartDisease)

# Boxplot of Cholesterol by Heart Disease status
boxplot(Cholesterol ~ HeartDisease, data = heart_failure_prediction,
        main = "Cholesterol vs Heart Disease", col = c("green", "pink"))

# Correlation matrix for numerical features
num_vars <- heart_failure_prediction[sapply(heart_failure_prediction, is.numeric)]
cor_matrix <- cor(num_vars, use = "complete.obs")
round(cor_matrix, 2)

# Logistic Regression Model
heart_failure_prediction$HeartDisease <- as.factor(heart_failure_prediction$HeartDisease)
model <- glm(HeartDisease ~ Age + Cholesterol + MaxHR + Sex + ChestPainType,
             data = heart_failure_prediction, family = binomial)
summary(model)

# Bar chart: Chest Pain Type frequency among heart disease patients
library(ggplot2)
ggplot(subset(heart_failure_prediction, HeartDisease == 1), aes(x = ChestPainType)) +
  geom_bar(fill = "skyblue") +
  ggtitle("Chest Pain Types in Heart Disease Patients") +
  xlab("Chest Pain Type") + ylab("Count")

# Density plot for MaxHR by Sex
ggplot(heart_failure_prediction, aes(x = MaxHR, fill = Sex)) +
  geom_density(alpha = 0.5) +
  ggtitle("Max Heart Rate Distribution by Sex")