function [yHat] = NB_Classify(D, p, XTest)
 [m,n] = size(XTest);
 
for i=1:m
    K=D(1,:).*XTest(i,:);
    K1=1-XTest(i,:);
    K2=1-D(1,:);
    K3=K2.*K1;
    K4=K+K3;
    y1=log10(K4);
    y2(i,1)=log10(p)+logprod(y1);
    
    P=D(2,:).*XTest(i,:);
    P1=1-XTest(i,:);
    P2=1-D(2,:);
    P3=P2.*P1;
    P4=P+P3;
    Y1=log10(P4);
    Y2(i,1)=log10(1-p)+logprod(Y1);
    
    if y2(i,1)>Y2(i,1)
    yHat(i,1)=1;
else
    yHat(i,1)=2;
end
end
return

    
