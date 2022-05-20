plot_1_TimeSeries <- function(timeseries){
  library(TSstudio)
  library(plotly)
  
  ts_plot(timeseries,
          title = "Série chronologique Trafic voyageurs",
          Xtitle = "Années",
          Ytitle = "Nombre de voyageurs",
          color = "blue",
          width = 2,
          line.mode =  "lines+markers",
          Xgrid = TRUE,
          Ygrid = TRUE) %>%
    layout(paper_bgcolor = "black",
           plot_bgcolor = "black",
           font = list(color = "white"),
           yaxis = list(linecolor = "#6b6b6b",
                        zerolinecolor = "#6b6b6b",
                        gridcolor= "#444444"),
           xaxis = list(linecolor = "#6b6b6b",
                        zerolinecolor = "#6b6b6b",
                        gridcolor= "#444444"))
  
  
  
  
}