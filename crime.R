crime=read.csv("C:/Users/Hannan Qazi/Desktop/crime1.csv")
str(crime)

x=crime[,3:4]

dx= round(dist(x), digits = 1)

hcl= hclust(dx, method= "single")
plot(hcl, main="Complete Linkage")

hc2= hclust(dx, method= "complete")
plot(hc2, main="Complete Linkage")

hc3= hclust(dx, method= "average")
plot(hc3, main="Complete Linkage")

hc4= hclust(dx, method= "ward")
plot(hc4, main="Complete Linkage")


#Scatter plot
cl.num=2 #number of clusters
colnames(x) = c('Murder', 'Rape')

hcl.result = cutree(hcl, k=cl.num)
hcl.result 

plot(x, pch= hcl.result)
text(x, labels = crime$city)
