#######
#Project: FoDS Homework 2 - the Penguin data set
#Team members: Alona, Karoline, Julio
#Date: 25 April 2026
######

# Data + universal helpers (needed regardless of method)
install.packages(c(

  "tidyverse",        # dplyr, ggplot2, tidyr — used in every part
  "caret",            # train/test split, confusionMatrix, unified model interface
  "rsample",          # alternative for train/test split (initial_split)

  # Methods from lecture (slides 4–6)
  "e1071",            # Naïve Bayes + SVM
  "class",            # KNN (basic version)
  "kknn",             # KNN via caret
  "rpart",            # Decision Tree
  "rpart.plot",       # nice tree visualization
  "randomForest",     # Random Forest
  "gbm",              # Gradient Boosting Trees
  "xgboost",          # alternative gradient boosting (faster, more popular)
  "nnet",             # simple Neural Networks (built-in style)

  # Evaluation extras
  "pROC",             # ROC curves (slide 11 of your lecture)
  "MLmetrics"         # F1 score helper if confusionMatrix isn't enough
))

# Install the package palmerpenguins
install.packages("palmerpenguins")

# Load the package
library(palmerpenguins)
data(package = 'palmerpenguins')
# Shows only first 6 rows of the data frame
head(penguins)

# Number of rows and columns
dim(penguins)  # 344 rows and 8 columns

# Check the data formats
str(penguins)

# Summary statistics
summary(penguins)

#interactive spreadsheet-like display of the data frame in RStudio
View(penguins)

# Handle empty values if there are any (in this dataset, there are no empty values, but we can still run the code to check for them)
penguins[penguins == ""] <- NA

# Check for duplicated values
duplicated_rows <- duplicated(penguins)
# Print the result
if (any(duplicated_rows)) {
  print("There are duplicated rows.")
} else {
  print("No duplicated rows found.")
}

# Summary statistics
summary(penguins)

# Calculate the share of missing values per column
missing_values_share <- colMeans(is.na(penguins))
# Print the result
print(missing_values_share)

######################
# Explorative Analysis
######################


######################
# Classification
######################