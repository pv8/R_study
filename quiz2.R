# question 2
con <- url('http://simplystatistics.tumblr.com/', 'r')
simplyStats <- readLines(con, 150)
nchar(simplyStats)[c(2,45,122)]

# question 3
fileUrl <- 'https://dl.dropbox.com/u/7710864/data/csv_hid/ss06hid.csv'
download.file(fileUrl,destfile="./housingData.csv",method="curl")
housingData <- read.csv('housingData.csv')
length(which(housingData$VAL == 24))

# question 5
length(which(housingData$BDS == 3 & housingData$RMS == 4))
length(which(housingData$BDS == 2 & housingData$RMS == 5))
length(which(housingData$BDS == 2 & housingData$RMS == 7))

# question 6
agricultureLogical <- housingData$ACR == 3 & housingData$AGS == 6
head(housingData[which(agricultureLogical), 1:2], 3) # show only the two first variables (columns)

# question 7
agricultureLogical <- housingData$ACR == 3 & housingData$AGS == 6
indexes <- which(agricultureLogical)
subsetDataFrame = housingData[indexes, ] 
sum(is.na(subsetDataFrame$MRGX))

# question 8
strsplit(names(housingData), 'wgtp')[123]

# question 9
quantile(housingData$YBL, na.rm=T) 
# wrong values: according to the code book (https://dl.dropbox.com/u/7710864/data/PUMSDataDict06.pdf) YBL variavle shouldn't have value -1

# question 10
fileUrl <- 'https://dl.dropbox.com/u/7710864/data/csv_hid/ss06pid.csv'
download.file(fileUrl2,destfile="./populationData.csv",method="curl")
populationData <- read.csv('populationData.csv')
resultDataSet <- merge(housingData, populationData, by = 'SERIALNO')
dim(resultDataSet)

#optional
head(resultDataSet, 10)


summary(quiz2File$YBL, na.rm=T)
i <- quiz2File$YBL==-1
quiz2File[which(quiz2File$YBL$YBL==-1),]
quiz2File[which(quiz2File$YBL==-1),]
fileUrl <- 'https://dl.dropbox.com/u/7710864/data/csv_hid/ss06hid.csv'
download.file(fileUrl,destfile="./quiz2.csv",method="curl")
fileUrl <- 'https://dl.dropbox.com/u/7710864/data/csv_hid/ss06pid.csv'
download.file(fileUrl2,destfile="./quiz2_10.csv",method="curl")
housingData <- read.csv('quiz2.csv')
populationData <- read.csv('quiz2_10.csv')
?merge
resultDataSet <- merge(housingData, populationData, by.x='SERIALNO', by.y='SERIALNO')
dim(resultDataSet)
head(resultDataSet, 3)
resultDataSet <- merge(housingData, populationData, by = 'SERIALNO')
head(resultDataSet, 3)
dim(resultDataSet)
188+239
resultDataSet <- merge(housingData, populationData)
resultDataSet <- merge(housingData, populationData, by = "SERIALNO")
savehistory("~/workspace/R/quiz2.R")
