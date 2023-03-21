rm(list = ls()) # Clear all

## User input ##
# Set here the working directory of where you have saved the replication folder
setwd("C:/Users/KYM/Desktop/Git/nopasanada/R")

## Loading libraries and functions ##
library(extrafont)
library(readxl)
font_import(pattern = "NanumGothic")
fonttable()
library("ggthemes")
library(tidyverse)
library(scales)
library(ggplot2)
library(gridExtra)
source("theme_publication.R")
source("getshocks.R")
source("hd_ts_plot.R")
source("my_bar.R")
source("my_bar_production.R")
source("getshocks_production.R")
source("getshocks_naics3.R")

## Figures Replication ##
# Figure 2 a): Total Private supply and demand shocks time series excluding COVID-19 months
dic <- read_excel("C:/Users/KYM/Desktop/Git/nopasanada/Data/labels_naics2.xlsx")
sectors_data <- data.frame(sectors = dic$sector_name,
                           codes = dic$bls_code,
                           urls = dic$url)
sector <- sectors_data$sectors[18]
shocks <- getshocks(sector, subsectors=0)
g <- hd_ts_plot(sector, shocks[1:105, ])
ggsave(paste("C:/Users/KYM/Desktop/Git/nopasanada/Paper_Figures/figureTOT.pdf", sep = ""),
       g, units = "mm",
       width = 160,
       height = 90)

##

sector <- sectors_data$sectors[1]
shocks <- getshocks(sector, subsectors=0)
g <- hd_ts_plot(sector, shocks[1:105, ])
ggsave(paste("C:/Users/KYM/Desktop/Git/nopasanada/Paper_Figures/Mine.pdf", sep = ""),
       g, units = "mm",
       width = 160,
       height = 90)
##

sector <- sectors_data$sectors[2]
shocks <- getshocks(sector, subsectors=0)
g <- hd_ts_plot(sector, shocks[1:105, ])
ggsave(paste("C:/Users/KYM/Desktop/Git/nopasanada/Paper_Figures/ManuF.pdf", sep = ""),
       g, units = "mm",
       width = 160,
       height = 90)
##

sector <- sectors_data$sectors[3]
shocks <- getshocks(sector, subsectors=0)
g <- hd_ts_plot(sector, shocks[1:105, ])
ggsave(paste("C:/Users/KYM/Desktop/Git/nopasanada/Paper_Figures/Electric.pdf", sep = ""),
       g, units = "mm",
       width = 160,
       height = 90)
##

sector <- sectors_data$sectors[4]
shocks <- getshocks(sector, subsectors=0)
g <- hd_ts_plot(sector, shocks[1:105, ])
ggsave(paste("C:/Users/KYM/Desktop/Git/nopasanada/Paper_Figures/Water.pdf", sep = ""),
       g, units = "mm",
       width = 160,
       height = 90)
##

sector <- sectors_data$sectors[5]
shocks <- getshocks(sector, subsectors=0)
g <- hd_ts_plot(sector, shocks[1:105, ])
ggsave(paste("C:/Users/KYM/Desktop/Git/nopasanada/Paper_Figures/Construction.pdf", sep = ""),
       g, units = "mm",
       width = 160,
       height = 90)
##

sector <- sectors_data$sectors[6]
shocks <- getshocks(sector, subsectors=0)
g <- hd_ts_plot(sector, shocks[1:105, ])
ggsave(paste("C:/Users/KYM/Desktop/Git/nopasanada/Paper_Figures/Wholesale.pdf", sep = ""),
       g, units = "mm",
       width = 160,
       height = 90)
##

sector <- sectors_data$sectors[7]
shocks <- getshocks(sector, subsectors=0)
g <- hd_ts_plot(sector, shocks[1:105, ])
ggsave(paste("C:/Users/KYM/Desktop/Git/nopasanada/Paper_Figures/Transport.pdf", sep = ""),
       g, units = "mm",
       width = 160,
       height = 90)
##

sector <- sectors_data$sectors[8]
shocks <- getshocks(sector, subsectors=0)
g <- hd_ts_plot(sector, shocks[1:105, ])
ggsave(paste("C:/Users/KYM/Desktop/Git/nopasanada/Paper_Figures/Accomodation.pdf", sep = ""),
       g, units = "mm",
       width = 160,
       height = 90)
##

sector <- sectors_data$sectors[9]
shocks <- getshocks(sector, subsectors=0)
g <- hd_ts_plot(sector, shocks[1:105, ])
ggsave(paste("C:/Users/KYM/Desktop/Git/nopasanada/Paper_Figures/IT.pdf", sep = ""),
       g, units = "mm",
       width = 160,
       height = 90)
##

sector <- sectors_data$sectors[10]
shocks <- getshocks(sector, subsectors=0)
g <- hd_ts_plot(sector, shocks[1:105, ])
ggsave(paste("C:/Users/KYM/Desktop/Git/nopasanada/Paper_Figures/Finance.pdf", sep = ""),
       g, units = "mm",
       width = 160,
       height = 90)
##

sector <- sectors_data$sectors[11]
shocks <- getshocks(sector, subsectors=0)
g <- hd_ts_plot(sector, shocks[1:105, ])
ggsave(paste("C:/Users/KYM/Desktop/Git/nopasanada/Paper_Figures/RealEstate.pdf", sep = ""),
       g, units = "mm",
       width = 160,
       height = 90)
##

sector <- sectors_data$sectors[12]
shocks <- getshocks(sector, subsectors=0)
g <- hd_ts_plot(sector, shocks[1:105, ])
ggsave(paste("C:/Users/KYM/Desktop/Git/nopasanada/Paper_Figures/ScienceSevice.pdf", sep = ""),
       g, units = "mm",
       width = 160,
       height = 90)
##

sector <- sectors_data$sectors[13]
shocks <- getshocks(sector, subsectors=0)
g <- hd_ts_plot(sector, shocks[1:105, ])
ggsave(paste("C:/Users/KYM/Desktop/Git/nopasanada/Paper_Figures/BFM.pdf", sep = ""),
       g, units = "mm",
       width = 160,
       height = 90)
##

sector <- sectors_data$sectors[14]
shocks <- getshocks(sector, subsectors=0)
g <- hd_ts_plot(sector, shocks[1:105, ])
ggsave(paste("C:/Users/KYM/Desktop/Git/nopasanada/Paper_Figures/Education.pdf", sep = ""),
       g, units = "mm",
       width = 160,
       height = 90)
##

sector <- sectors_data$sectors[15]
shocks <- getshocks(sector, subsectors=0)
g <- hd_ts_plot(sector, shocks[1:105, ])
ggsave(paste("C:/Users/KYM/Desktop/Git/nopasanada/Paper_Figures/HealthandWelfare.pdf", sep = ""),
       g, units = "mm",
       width = 160,
       height = 90)
##

sector <- sectors_data$sectors[16]
shocks <- getshocks(sector, subsectors=0)
g <- hd_ts_plot(sector, shocks[1:105, ])
ggsave(paste("C:/Users/KYM/Desktop/Git/nopasanada/Paper_Figures/Arts_Sports.pdf", sep = ""),
       g, units = "mm",
       width = 160,
       height = 90)
##

sector <- sectors_data$sectors[17]
shocks <- getshocks(sector, subsectors=0)
g <- hd_ts_plot(sector, shocks[1:105, ])
ggsave(paste("C:/Users/KYM/Desktop/Git/nopasanada/Paper_Figures/RepairandOther.pdf", sep = ""),
       g, units = "mm",
       width = 160,
       height = 90)
##

sector <- sectors_data$sectors[8]
shocks <- getshocks(sector, subsectors=0)
g <- hd_ts_plot(sector, shocks[1:105, ])
ggsave(paste("C:/Users/KYM/Desktop/Git/nopasanada/Paper_Figures/figure2b.pdf", sep = ""),
       g, units = "mm",
       width = 160,
       height = 90)

