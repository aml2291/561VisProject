kc <- read.csv("kc_house_data.csv", sep = ",", header = TRUE)
library("ggplot2")
library("zipcode")
library("ggmap")

require(maps)
require(ggmap)
data("zipcode")
par(mfrow=c(2,1))


#Load Map 
seattle <-get_map('seattle', zoom = 10)
SeattleMap <- ggmap(seattle)

#
sizer <- (kc$sqft_living)


ggmap(seattle) + geom_point(aes(kc$long, kc$lat, color=kc$price, size=sizer), data = kc) + scale_color_gradient(low="powderblue", high="midnightblue")
+scale_radius(name=kc$sqft_living, breaks = NULL, limits = NULL, )