NYCGHGEmissionsInventory <- read.csv("/cloud/project/NYCGHGEmissionsInventory.csv")

install.packages("ggplot2", "dplyr")
library(ggplot2)
library(dplyr)

names(GPCStationaryEnergyEmissions)

GPCStationaryEnergyEmissions <- NYCGHGEmissionsInventory %>%
  filter(Inventory.Type == "GPC" & Sectors.Sector == "Stationary Energy") %>%
  select("CY.2005.tCO2e.20.yr.GWP", "CY.2006.tCO2e.20.yr.GWP", "CY.2007.tCO2e.20.yr.GWP",
         "CY.2008.tCO2e.20.yr.GWP", "CY.2009.tCO2e.20.yr.GWP", "CY.2010.tCO2e.20.yr.GWP",
         "CY.2011.tCO2e.20.yr.GWP", "CY.2012.tCO2e.20.yr.GWP", "CY.2013.tCO2e.20.yr.GWP",
         "CY.2014.tCO2e.20.yr.GWP", "CY.2015.tCO2e.20.yr.GWP", "CY.2016.tCO2e.20.yr.GWP",
         "CY.2017.tCO2e.20.yr.GWP", "CY.2018.tCO2e.20.yr.GWP", "CY.2019.tCO2e.20.yr.GWP",
         "CY.2020.tCO2e.20.yr.GWP", "CY.2021.tCO2e.20.yr.GWP", "CY.2022.tCO2e.20.yr.GWP")

GPCSEETotals <- GPCStationaryEnergyEmissions %>%
  summarize(Total = sum(c(CY.2005.tCO2e.20.yr.GWP)))