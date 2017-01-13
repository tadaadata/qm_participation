# init
# libraries
library(tadaatoolbox)
library(ggplot2)
library(scales)
library(DT)
library(formattable)
library(viridis)
library(dplyr)
library(tidyr)

# get data
cur_user <- as.list(Sys.info())$user

if (cur_user == "Lukas") {
  participation <- readRDS("~/repos/tadaadata/qm-data/final-data/participation.rds")
} else if (cur_user == "Tobi") {

} else {
  stop("Don't know where to get the data :(")
}

# knitr options
knitr::opts_chunk$set(fig.path = "assets/plots/",
                      warning = F, message = F,
                      fig.retina = 2)

# plot options and helpers
theme_set(theme_readthedown())
