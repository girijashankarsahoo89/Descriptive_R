#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")

airquality <- datasets::airquality

####Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)

######Columns
airquality[,c(1,2)]

df<-airquality[,-6]


summary(airquality[,1])

airquality$Wind

summary(airquality$Wind)

###########Summary of the data#########

summary(airquality)
summary(airquality$Wind) 

#####################
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")
plot(airquality)

# points and lines 
plot(airquality$Wind, type= "l") # p: points, l: lines,b: both

plot(airquality$Wind, xlab = 'Ozone Concentration', 
     ylab = 'No of Instances', main = 'Ozone levels in NY city',
     col = 'blue')


# Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', col= 'blue',horiz = F,axes=T)

#Histogram
hist(airquality$Temp)
hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')


#Single box plot
boxplot(airquality$Wind,main="Boxplot")
boxplot.stats(airquality$Wind)$out



# Multiple box plots
boxplot(airquality[,1:4],main='Multiple')


#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")


plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')






e_quakes<-datasets::quakes
head(e_quakes,10)
tail(e_quakes,10)

plot(e_quakes$mag)
plot(e_quakes$mag,e_quakes$depth,type="p")
plot(e_quakes)


# points and lines 
plot(e_quakes$depth, type= "l") # p: points, l: lines,b: both

plot(e_quakes$depth, xlab = 'Ozone Concentration', 
     ylab = 'No of Instances', main = 'Ozone levels in NY city',
     col = 'blue')

# Horizontal bar plot
barplot(e_quakes$mag, main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', col= 'blue',horiz = T,axes=T)

#Histogram
hist(e_quakes$mag)
hist(e_quakes$depth, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')


#Single box plot
boxplot(e_quakes$mag,main="Boxplot")
boxplot.stats(e_quakes$mag)$out

# Multiple box plots
boxplot(e_quakes[,1:4],main='Multiple')


#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
e_quakes

plot(e_quakes$mag)
plot(e_quakes$mag, e_quakes$Wind)
plot(e_quakes$mag, type= "l")
plot(e_quakes$mag, type= "l")
plot(e_quakes$mag, type= "l")
barplot(e_quakes$mag, main = 'mag Concenteration in air',
        xlab = 'mag levels', col='green',horiz = TRUE)
hist(e_quakes$depth)
boxplot(e_quakes$depth)
boxplot(e_quakes[,0:4], main='Multiple Box plots')


sd(e_quakes$mag)#,na.rm = T)
sd(e_quakes$depth)#,na.rm = T)

var(e_quakes$depth)

skewness(e_quakes$depth)
kurtosis(e_quakes$depth)










