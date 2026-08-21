library(iNEXT)
data("spider")
summary(spider)
spider
str(spider)
iNEXT(spider, q=0, datatype="abundance")
macki = readRDS("mackibordares.rds")
iNEXT(macki$borda30, q=0, datatype = "abundance")
dadograf = iNEXT(macki$borda30, q=0, datatype = "abundance")
ggiNEXT(dadograf, type=1, se=TRUE, facet.var="None", color.var="Both", grey=FALSE)  
dadograf500 <- iNEXT(macki$borda30, q=0, datatype = "abundance", endpoint = 500)
dadograf1000 <- iNEXT(macki$borda30, q=0, datatype = "abundance", endpoint = 1000)
ggiNEXT(dadograf500, type=1, se=TRUE, facet.var="None", color.var="site", grey=FALSE)  
ggiNEXT(dadograf1000, type=1, se=TRUE, facet.var="None", color.var="site", grey=FALSE)  
dadograf1000

#calcular riqueza estimada e diversidade de especies entre os habitats
#
macki=as.data.frame(abundance_list_co_mackinnon_audiomoth_unedited_data)
iNEXT(macki, q=0, datatype="abundance")
dadograftot = iNEXT(macki, q=0, datatype="abundance", endpoint=5000)
ggiNEXT(dadograftot, type=1, se=TRUE, facet.var="None", color.var="Both", grey=FALSE)
#
dadograftot = iNEXT(macki, q=0, datatype="abundance")
ggiNEXT(dadograftot, type=1, se=TRUE, facet.var="None", color.var="Both", grey=FALSE)
#

countborda = table(macki$bord30)
print(countborda)
countreserv = table(macki$reserv30)
print(countreserv)
