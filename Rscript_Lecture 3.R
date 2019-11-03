#load magnetic field data

magnetic.field=read.table(file="http://www.stat.osu.edu/~kurtek.1/courses/IntroProbDA/magnetic_field.txt",header=T)

##graphical summaries for each group

#histograms
par(ps=20)
hist(magnetic.field$Weight_gain[magnetic.field$Group==1],main="Group 1",xlab="Weight Gain")

par(ps=20)
hist(magnetic.field$Weight_gain[magnetic.field$Group==2],main="Group 2",xlab="Weight Gain")

#boxplots
par(ps=20)
boxplot(magnetic.field$Weight_gain[magnetic.field$Group==1],main="Group 1",ylab="Weight Gain")

par(ps=20)
boxplot(magnetic.field$Weight_gain[magnetic.field$Group==2],main="Group 2",ylab="Weight Gain")

##numerical summaries for each group

summary(magnetic.field$Weight_gain[magnetic.field$Group==1])

summary(magnetic.field$Weight_gain[magnetic.field$Group==2])

sd(magnetic.field$Weight_gain[magnetic.field$Group==1])

sd(magnetic.field$Weight_gain[magnetic.field$Group==2])

#display two histograms side by side

par(mfrow=c(1,2))

par(ps=20)
hist(magnetic.field$Weight_gain[magnetic.field$Group==1],main="Group 1",xlab="Weight Gain")

par(ps=20)
hist(magnetic.field$Weight_gain[magnetic.field$Group==2],main="Group 2",xlab="Weight Gain")

