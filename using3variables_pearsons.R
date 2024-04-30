
mydataa<-read.csv("C:/Users/User/Desktop/Data Science/final/finalAssignment/Temp_and_rain.csv",header=TRUE,sep=",")
mydataa

correlation_matrix <- cor(mydataa[c("Year", "tem", "rain")])

cor_Year_tem <- correlation_matrix["Year", "tem"]
cor_Year_rain <- correlation_matrix["Year", "rain"]
cor_tem_rain <- correlation_matrix["tem", "rain"]


print(cor_Year_tem)
print(cor_Year_rain)
print(cor_tem_rain)

plot(mydataa$Year, mydataa$tem, main = "Year vs. Temperature",
     xlab = "Year", ylab = "Temperature")
abline(lm(mydataa$tem ~ mydataa$Year), col = "red")
legend("topleft", legend = c("Trend Line"), col = c("red"), lty = 1:1)
if (cor_Year_tem > 0) {
  if (cor_Year_tem > 0.7) {
    print("There is a strong positive linear relationship between year and temperature.")
  } else if (cor_Year_tem > 0.2) {
    print("There is a moderate positive linear relationship between year and temperature.")
  } else {
    print("There is a weak positive linear relationship between year and temperature.")
  }
} else if (cor_Year_tem < 0) {
  if (cor_Year_tem < -0.7) {
    print("There is a strong negative linear relationship between year and temperature.")
  } else if (cor_Year_tem < -0.2) {
    print("There is a moderate negative linear relationship between year and temperature.")
  } else {
    print("There is a weak negative linear relationship between year and temperature.")
  }
} else {
  print("There is no linear relationship between year and temperature.")
}


plot(mydataa$Year, mydataa$rain, main = "Year vs. Rainfall",
       xlab = "Year", ylab = "Rainfall")
abline(lm(mydataa$rain ~ mydataa$Year), col = "blue")
legend("topleft", legend = c("Trend Line"), col = c("blue"), lty = 1:1)

  if (cor_Year_rain> 0) {
    if (cor_Year_rain > 0.7) {
      print("There is a strong positive linear relationship between year and rainfall.")
    } else if (cor_Year_rain> 0.2) {
      print("There is a moderate positive linear relationship between year and rainfall.")
    } else {
      print("There is a weak positive linear relationship between year and rainfall.")
    }
  } else if (cor_Year_rain < 0) {
    if (cor_Year_rain < -0.7) {
      print("There is a strong negative linear relationship between year and rainfall.")
    } else if (cor_Year_rain < -0.2) {
      print("There is a moderate negative linear relationship between year and rainfall.")
    } else {
      print("There is a weak negative linear relationship between year and rainfall.")
    }
  } else {
    print("There is no linear relationship between year and rainfall.")
  }



plot(mydataa$tem, mydataa$rain, main = "Temperature vs. Rainfall",
       xlab = "Temperature", ylab = "Rainfall")
abline(lm(mydataa$rain ~ mydataa$tem), col = "cyan")
legend("topleft", legend = c("Trend Line"), col = c("cyan"), lty = 1:1)
  if (cor_tem_rain > 0) {
    if (cor_tem_rain > 0.7) {
      print("There is a strong positive linear relationship between temperature and rainfall.")
    } else if (cor_tem_rain > 0.2) {
      print("There is a moderate positive linear relationship between temperature and rainfall.")
    } else {
      print("There is a weak positive linear relationship between temperature and rainfall.")
    }
  } else if (cor_tem_rain < 0) {
    if (cor_tem_rain < -0.7) {
      print("There is a strong negative linear relationship between temperature and rainfall.")
    } else if (cor_tem_rain < -0.2) {
      print("There is a moderate negative linear relationship between temperature and rainfall.")
    } else {
      print("There is a weak negative linear relationship between temperature and rainfall.")
    }
  } else {
    print("There is no linear relationship between temperature and rainfall.")
  }








