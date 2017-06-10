function [D] = NB_XGivenY(XTrain, yTrain)
    Eco=yTrain==1;
    teco=length(find(Eco==1));
    Oni=yTrain==2;
    toni=length(find(Oni==1));
    l=XTrain(Eco,:);
    m=XTrain(Oni,:);
    for i=1:length(XTrain)
    D(1,i)=(sum(l(:,i))+1)/(teco+1);
    D(2,i)=(sum(m(:,i))+1)/(toni+1);
    end
    return
    
    
    