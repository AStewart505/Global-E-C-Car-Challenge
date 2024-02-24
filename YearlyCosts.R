library(dplyr)
library(readr)
library(reshape2)   
library(ggplot2)
library(readxl)



audi = read_csv("UNI 23-24/Hacathon/Car Challenge/Car Brands/audi.csv");
bmw = read_csv("UNI 23-24/Hacathon/Car Challenge/Car Brands/bmw.csv");
ford = read_csv("UNI 23-24/Hacathon/Car Challenge/Car Brands/ford.csv");
hyundai = read_csv("UNI 23-24/Hacathon/Car Challenge/Car Brands/hyundai.csv")
merc = read_csv("UNI 23-24/Hacathon/Car Challenge/Car Brands/merc.csv")
skoda = read_csv("UNI 23-24/Hacathon/Car Challenge/Car Brands/skoda.csv")
toyota = read_csv("UNI 23-24/Hacathon/Car Challenge/Car Brands/toyota.csv")
vw =read_csv("UNI 23-24/Hacathon/Car Challenge/Car Brands/vw.csv")
Car_Maintenance_Costs <- read_csv("UNI 23-24/Hacathon/Car Challenge/Car Maintenance Costs.csv")

fuelPrices = read_excel("UNI 23-24/Hacathon/Car Challenge/Fuel Prices and Conversions.xlsx")
fuelConversions = read_excel("UNI 23-24/Hacathon/Car Challenge/Fuel Prices and Conversions.xlsx", 
                             sheet = "Conversions")



gallonConversion = fuelConversions$Litres
costPerGallon = gallonConversion * fuelPrices$Cost

calculateCostPerMile = function(costPerGallon, mpg,fuelType){
  if(fuelType == "Diesel"){
    costPerMile = costPerGallon[2] / mpg
  }else{
    costPerMile = costPerGallon[1] / mpg
  }
  return(costPerMile)
}

getMaintenance = function(model,year, Car_Maintenance_Costs){
  for( x in 1:nrow(Car_Maintenance_Costs)){

    
  }
  
}

#finalCost = function(costPerMile, tax, )
 

PerMile = c()
for (x in 1:nrow(audi)){
  PerMile = append(PerMile,calculateCostPerMile(costPerGallon, audi$mpg[x], audi$fuelType[x]))
}
testMillageAudi = data.frame(Model = audi$model, Year = audi$year, Mpg = audi$mpg,CostPerMile = PerMile)


