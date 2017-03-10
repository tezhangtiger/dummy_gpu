library(MicrosoftML)
normData <- data.frame(matrix(rnorm(r*c,0,1),r,c))
label = sample(c(0, 1), r, replace = T)
normData=cbind(normData, label=as.factor(label))
modelNN=rxNeuralNet(formula=label~., data = normData, type = "binary", acceleration = 'gpu',
                    numIterations = 100, miniBatchSize = 256, reportProgress = 0)
modelNN=rxNeuralNet(formula=label~., data = normData, type = "binary", acceleration = 'sse',
                    numIterations = 100, miniBatchSize = 1, reportProgress = 0)