#' This function takes a list of chemical components and returns a plot with dose response comparison for each selected component
#'
#' @param df  The data frame to summarise
#' @param components the charakter vector of components to be used in analyse
#' @return plot
#' @import tidyverse
#' @import dplyr
#' @import ggplot2
#' @import readxl
#' @import plotly
#' @export
#'
#' @examples
#'
#' components <-c("2,6-diisopropylnaphthalene","S-medium","naphthalene", "decane")
#' dosisresponse(celgenace,components)
#'
#'
dosisresponse <- function(df, components)
{



  compNames_unique <- unique(df$compName)

  # check if the  recieved argument from user is present in list of given components in dataset


  list_components <-  components%in% compNames_unique

  if( !all(list_components) )
  {
    print( paste("the component is not found. Pleas,enter one or more  values from the list below:", compNames_unique))

  }

  else
  {

    # filter out vector components given as argument of function by user
    # calculate response percentage
    # summary and plot data


    title="Dose reponse curve C.Elegans experiment"

    data_ce_df_summary <- df %>% filter(compName %in% components)%>% group_by(compName, compConcentration ) %>%
      summarize( response = mean(RawData, na.rm = TRUE),)   %>% mutate (response_procent = response/max(response) * 100)

    p <-  data_ce_df_summary %>%
      ggplot(aes(x = compConcentration,y = response_procent)) +
      geom_line(aes(group = compName,
                    colour = compName))+
      geom_point()+
      scale_x_continuous( trans= 'log10')+
      labs(title = title, y="response, % ",  x="log10 compounds concentrations(nM)")
    return (ggplotly(p) )  }


}
