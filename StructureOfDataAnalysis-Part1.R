# load package
library(kernlab)
# load spam data
data(spam)
dim(spam) # [1] 4601   58

#set seed
set.seed(3435)

#generate train indicator for data
trainIndicator = rbinom(4601, size=1, prob=0.5)
table(trainIndicator) # show indicators

# subset train and tes data for predictive analysis
trainSpam = spam[trainIndicator==1, ]
testSpam = spam[trainIndicator==0, ]

dim(trainSpam) #[1] 2287   58

dim(testSpam) # [1] 2314   58
