## ----setup, include=FALSE, message=FALSE, warning=FALSE-----------------------
knitr::opts_chunk$set(fig.align = "center", 
               out.width = "90%",
               fig.width = 6, fig.height = 5.5)

## ----message=FALSE, warning=FALSE, echo=FALSE---------------------------------
library(dstats)
library(tidyverse)
library(ggplot2)
library(plotly)

## ----message=FALSE, warning=FALSE---------------------------------------------



df <- data.frame(celegance)

components <-c("2,6-diisopropylnaphthalene","S-medium","naphthalene", "decane")

dosisresponse(df,components)



## ----message=FALSE, warning=FALSE---------------------------------------------
basestats(df)

