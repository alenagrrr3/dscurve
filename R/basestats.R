#'  Creates a basic summary of the raw data and density plot raw data
#'
#' @param df The data frame to summarise
#'
#' @return  plot with density for raw data
#'
#' @import tidyverse
#' @import dplyr
#' @import ggplot2
#' @import readxl
#' @import plotly
#' @export
#'
#' @examples
#' basestats(celegance)
#'
basestats <-  function(df)
{


  # general summary

  data_summary <- df %>%  group_by(compName ) %>%
    summarize( MeanResponse = mean(RawData, na.rm = TRUE), MaxResponse = max(RawData, na.rm = TRUE),
               MinResonse=min(RawData, na.rm = TRUE))


    print("general summary :")
    #print( data_summary )

    print( knitr::kable(data_summary) )

  # density plot
    plot <-  ggplot(df,
         aes(x = RawData, fill = compName)) +
    geom_density(alpha = 0.5)+
    labs(title = "Density (raw data) treatment components")




    return ( ggplotly(plot))


  #ggplotly(p)

 #components_vector <-c("2,6-diisopropylnaphthalene","S-medium","naphthalene", "decane")



}
