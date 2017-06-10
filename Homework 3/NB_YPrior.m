function [p] = NB_YPrior(yTrain)
Eco=yTrain==1;
    teco=length(find(Eco==1));
    tot=length(yTrain);
    p=teco/tot;
    return