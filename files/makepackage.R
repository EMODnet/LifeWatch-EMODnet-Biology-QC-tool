options(stringsAsFactors=FALSE)
install.packages("devtools")
library("devtools")
library("roxygen2")
getwd()

create("EMODnetBiocheck")
setwd("./EMODnetBiocheck")


## copy functions to folder
document()

setwd("..")

install("EMODnetBiocheck")
library("EMODnetBiocheck")
?REMODnetBioQC



install.packages("devtools") # document that you will need to install this package first!
devtools::install_github("iobis/obistools") # document that you will need to install this package first!


#test2
link <- "http://ipt.iobis.org/training/archive?r=biofun2009_solution"


fitness <- assesfitnessandqc(link)
data <- importiptdata(link)
fitness <- assessfitness(output=data)



IPTreport <- checkIPTdataset (link)



setwd("./test")
link <- "http://ipt.iobis.org/training/resource?r=biofun_2009"

loopcheckIPTdataset (link)

rm(list=ls())
getwd()
setwd("BIOCHECK")

files<- read.csv("wp2.csv")
links<-unique(files$IPT) 
links <- links[(links != "")]


options(stringsAsFactors = FALSE)

link <- "http://ipt.vliz.be/eurobis/archive?r=ices_Stomach_Content_Data"
link <- "http://ipt.vliz.be/eurobis/archive?r=CP-EGGS"
link <- "http://ipt.gbif.pt/ipt/archive.do?r=macrozoobenthos-portugal-2010"

link <- 'http://ipt.nioz.nl/archive.do?r=kom-fyke-mokbaai'
out <-loopfitnessandqc(links)
out <-loopfitnessandqc(link)



Event = NULL
Occurrence = NULL
eMoF = NULL
tree = FALSE

require(dplyr)
require(obistools)

IPTreport <- importiptdata(link)
IPTreport <- checkdataset(IPTreport = IPTreport)

