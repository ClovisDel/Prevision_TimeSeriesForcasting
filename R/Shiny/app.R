library(shiny)
RegressionAnnees <- readRDS(file = "./Shiny/RegressionAnnees.rda")
RegressionMois <- readRDS(file = "./Shiny/RegressionMois.rda")
runApp("Shiny", launch.browser=TRUE)
