#'Data was derived from an experiment in which adult C.elegans nematodes were exposed to varying concentrations of different compounds
#' Data was provided by J. Louter
#'
#' @format A tibble with 360 rows and 34 variables:
#' \describe{
#'   \item{compName}{chr the generic name of the compound/chemical, that was used  in this experiment}
#'   \item{compConcentration}{chr concentration in nM }
#'   \item{expResearcher }{chr the name of the person who performed this experiment }
#'   \item{RawData}{num the response recieved}
#'   \item{bacterialVolume}{num  bacterial volume in ul}
#'   \item{expTime}{chr  time of experimental duration in hours}
#'   \item{expType}{ type: experiment, positive controle, negatve conotrle}
#'   \item{expDate}{date   experimental date}
#'
#' }
#' @source \url{https://lesmaterialen.rstudio.hu.nl/workflows-reader/represintro.html}
"celegance"
