

setwd('C:/Users/spanport/Desktop/Spring20/R') # run with Ctrl + Enter
library(tidyverse)  # ggplot2, dplyr, tidyr, readr, purr, tiblle, stringr, forcats
# get data 
df2 = read_delim('aresty_L2_dataframe.csv', delim = ',')
View(df2)
df2
df2 %>% # voy a seleccionar algo en una base de datos se tiene que run juntas
  select(monolingual)

df2 %>%
  count()
mylogit = glm(besasp ~ monolingual, data = df2, family = "binomial") # la variable dependiente debe ser binaria 
summary(mylogit)
mylogit2 = glm(besasp ~ parent_score_bi, data = df2, family = "binomial")
summary(mylogit2)