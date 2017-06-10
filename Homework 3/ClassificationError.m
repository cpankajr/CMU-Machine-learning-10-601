function [error] = ClassificationError(yHat, yTruth)
Y=yTruth-yHat;
l=length(find(Y>0));
error=l/length(yTruth);
return
