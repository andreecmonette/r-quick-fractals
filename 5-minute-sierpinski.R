cornerpoints = matrix(data=c(0,.5,1,0,sqrt(3)/2,0),nrow=3,ncol=2)
thispoint = c(1,.5)
midpoint = function(x1,x2){(x1+x2)/2}
iterations = 100000
whichcorner = sample(c(1,2,3),iterations,replace=T)
fractalpoints = matrix(nrow=iterations,ncol=2)
for (ii in (1:iterations)) {
thispoint=midpoint(thispoint,cornerpoints[whichcorner[ii],])
fractalpoints[ii,]=thispoint
}
plot.new()
points(fractalpoints,pch=".",col=c("green","blue","red")[whichcorner])