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

Affichage_Prediction <- function(Donnees, Modele){
  library(ggplot2)
  library(ggthemes)
  
  
  p <- ggplot(data =Donnees, aes(x = Annees) ) + 
    
    geom_line(aes(y = trafic ), size = 0.9, alpha = 0.7)+
    
    #geom_line(aes(y = PredictionTendance), size = 0.6, alpha = 0.85,linetype="twodash" )+
    
    geom_line(aes(y = Modele), size = 1.2, alpha = 0.6, color = "blue")+
    labs(x="Années",
         y= "Nombre de Voyageurs")+
    theme_fivethirtyeight()+
    theme(axis.title = element_text(), text = element_text(family = "Rubik")) 
  
  #Prédiction sur l'année 2019
  p2 <- ggplot(data =Donnees, aes(x = Annees) ) + 
    geom_line(aes(y = trafic ), size = 1.2, alpha = 0.7)+
    geom_line(aes(y = Modele), size = 1.4, alpha = 0.6, color = "blue")+
    theme_fivethirtyeight()+
    xlim (2019.0, 2019.583) +
    ylim (435000, 520000) 
  
  
  #Ajout zoom sur 2019
  p + 
    annotation_custom(ggplotGrob(p2), xmin = 2015, xmax = 2020, ymin = 0, ymax = 290000) +
    geom_rect(aes(xmin = 2015, xmax = 2020, ymin = 0, ymax =  290000), color='black', linetype='dashed', alpha=0) 
  
  
  
  
  
  
  
}

