# Load the dataset
mydataa <- read.csv("C:/Users/User/Desktop/Data Science/final/finalAssignment/Temp_and_rain.csv", header = TRUE, sep = ",")

# Calculate Spearman's rank correlation coefficient
spearman_correlation <- cor(mydataa$tem, mydataa$rain, method = "spearman")

# Interpret the Spearman's correlation coefficient
if (abs(spearman_correlation) > 0.7) {
  if (spearman_correlation > 0) {
    print("There is a strong positive rank correlation between temperature and rainfall.")
  } else if (spearman_correlation < 0) {
    print("There is a strong negative rank correlation between temperature and rainfall.")
  } else {
    print("There is no significant rank correlation between temperature and rainfall.")
  }
} else {
  print("The correlation is not strong enough to be considered significant.")
}

