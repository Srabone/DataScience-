mydataa<-read.csv("C:/Users/User/Desktop/Data Science/final/finalAssignment/Temp_and_rain.csv",header=TRUE,sep=",")
mydataa
summary(mydataa)
is.na(mydataa)
View(mydataa)

mydataa_sorted <- mydataa[order(mydataa$Year), ]
print(mydataa_sorted)
mydataa_sorted
View(mydataa_sorted)

temperature <- mydataa_sorted$tem
rainfall <- mydataa_sorted$rain

correlation <- cor(temperature, rainfall, method = "pearson")
print(correlation)

plot(temperature, rainfall, main = "Temperature vs. Rainfall",
     xlab = "Temperature", ylab = "Rainfall")
abline(lm(rainfall ~ temperature), col = "red") 
legend("topleft", legend = c("Trend Line"), col = c("red"), lty = 1:1)

if (correlation > 0) {
  if (correlation > 0.7) {
    print("There is a strong positive linear relationship between temperature and rainfall.")
  } else if (correlation > 0.2) {
    print("There is a moderate positive linear relationship between temperature and rainfall.")
  } else {
    print("There is a weak positive linear relationship between temperature and rainfall.")
  }
} else if (correlation < 0) {
  if (correlation < -0.7) {
    print("There is a strong negative linear relationship between temperature and rainfall.")
  } else if (correlation < -0.2) {
    print("There is a moderate negative linear relationship between temperature and rainfall.")
  } else {
    print("There is a weak negative linear relationship between temperature and rainfall.")
  }
} else {
  print("There is no linear relationship between temperature and rainfall.")
}

