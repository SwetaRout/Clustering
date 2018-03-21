attach(data)
mydata<-data
d<-data
library(dbscan)
kNNdistplot(mydata, k=3)
p3=7
db <- dbscan(d, eps = p3,MinPts = 3,showplot = TRUE)

print(mean(silhouette(db$cluster,dmatrix = as.matrix(dist(d)))))
plot3d(as.matrix(data),db$cluster,col=c("RED","BLUE")[db$cluster])

scatterplot3d(x=data$V1,y=data$V2,z=data$V3,groups=db,grid=FALSE)

kNNdistplot(d, k=4)
p4=9
db <- dbscan(d, eps = p4, MinPts = 4)
pairs(d, col = db$cluster + 1L)
opt <- optics(d, eps = p4, minPts = 4)
opt <- extractDBSCAN(opt, eps_cl = p4)
library(scatterplot3d)
scatterplot3d(x=data$V1,y=data$V2,z=data$V3,groups=fit,grid=FALSE)

kNNdistplot(d, k=5)
p5=0.7
db <- dbscan(d, eps = p5, minPts = 5)
pairs(d, col = db$cluster + 1L)
opt <- optics(d, eps = p5, minPts = 5)
opt <- extractDBSCAN(opt, eps_cl = p5)
plot(opt)


kNNdistplot(d, k=6)
p6=0.8
db <- dbscan(d, eps = p6, minPts = 6)
pairs(d, col = db$cluster + 1L)
opt <- optics(d, eps = p6, minPts = 6)
opt <- extractDBSCAN(opt, eps_cl = p6)
plot(opt)
