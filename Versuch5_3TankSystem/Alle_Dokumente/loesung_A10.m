netgrund=feedforwardnet(10);
netgrund.divideFcn='';
netgrund.layers{1}.transferFcn='tansig';
netgrund.layers{2}.transferFcn='purelin';
netgrund.trainparam.goal=0.01;
netgrund.trainparam.epochs=100;
netgrund.trainparam.show=1;
net_train=train(netgrund,Te,Ta);
%net_ttrain=train(net_train,Te,Ta);
netzanzeige(net_train);
