# How to train and test data using Naive Bayes classifier
Train your classifier on the data contained in XTrain and yTrain by running

D = NB_XGivenY(XTrain, yTrain);

p = NB_YPrior(yTrain);

Use the learned classifier to predict the labels for the article feature vectors in XTrain and XTest by
running


yHatTrain = NB_Classify(D, p, XTrain);

yHatTest = NB_Classify(D, p, XTest);

Use the function ClassificationError to measure and report the training and testing error by running

trainError = ClassificationError(yHatTrain, yTrain);

testError = ClassificationError(yHatTest, yTest);
