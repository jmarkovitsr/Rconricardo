# esto es un ejercicio
setwd('C:/Users/spanport/Desktop/Spring20/R/') # run with Ctrl + Enter

library(ggplot2)


cel_to_fa = function(cel = 32){
  # formula 
  fa = 9 / 5 *cel + 32
  
  # resultado de la function
  return(fa)
  
}
cel = c(1:50)

fa = cel_to_fa(cel)
df = data.frame(x= cel, y = fa)

# scatter plot (wight and mpg) relacion entre dos variables 
ggplot(data = df, aes(x=cel, y=fa)) + 
  geom_point()
