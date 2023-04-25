
''' plot the two variables in a scatter plot (age on horizontal, height on vertical)'''


data <- read.csv("data.csv")

x=data$age #x-axis has age
h=data$height #y-axis has height 

w_bar<-mean(x)
#w<-x #age considering child to very old
w<-seq(0,90,length.out=544)

plot(x,h,
     xlab = "Age (Predictor)",
     ylab = "Height (Outcome)",
     main = "Scatter plot of  !Kung people",
     xlim=c(0,90),
     ylim=c(-30,180)
)#scatter plot 