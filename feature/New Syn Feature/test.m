
close all;clear ;clc
addpath('../../SignalProcess')
addpath('../../feature')
load('../../DATA/SynDataU_25');
for i=1:length(SynDataU.EMGR)
    iEMGU{i}=winRMS(SynDataU.EMGR{i},20);
    rU{i}=iEMGU{i}(:,3)./iEMGU{i}(:,2);
    r1U{i}=iEMGU{i}(:,5)./iEMGU{i}(:,6);
    r2U{i}=iEMGU{i}(:,3)./iEMGU{i}(:,4);
    meanU(i,1)=mean(rU{i});
    meanU(i,2)=mean(r1U{i});
    meanU(i,3)=mean(r2U{i});
    meanr(i,:)=mean(iEMGU{i});
end
meanrms=mean(meanr);
fir(:,1)=[1.571100574 3.077517737 0.829177175 1.953162142 1.187963386];
snd(:,1)=[9.129003074 2.164315341 0.477073594 1.304298726 2.009171856];
%[Mdata(:,1),Sdata(:,1),p{1}]=diffAnaly(fir,'��һ��',snd,'�ڶ���','���Ǽ�ǰ����б����ƽ��������',1);
fir(:,2)=[0.997999541 2.711063428 3.012303115 3.4547582 3.957912788];
snd(:,2)=[2.043818529 4.149148762 1.020584235 2.880967268 2.990954308];
%[Mdata(:,2),Sdata(:,2),p{2}]=diffAnaly(fir2,'��һ��',snd2,'Control','���Ǽ�ǰ����б����ƽ��������',1);
fir(:,3)=[145.5941716 23.48151255 102.0077392 36.25192494 65.47168568];
snd(:,3)=[61.26435904 37.6283773 357.0803922 58.31665729 50.76691933];
%[Mdata(:,3),Sdata(:,3),p{3}]=diffAnaly(fir3,'Affected side',snd3,'Control','���Ǽ�ǰ����б����ƽ��������',1);
fir(:,4)=[162.7098645 52.25874252 79.56455343 65.4073951 72.63908719];
snd(:,4)=[151.0340703 72.77729023 149.9075568 64.35356477 90.58776084];
% [Mdata(:,4),Sdata(:,4),p{4}]=diffAnaly(fir4,'Affected side',snd4,'Control','���Ǽ�ǰ����б����ƽ��������',1);
fir(:,5)=[129.6013363 32.15685299 97.63993217 45.05357681 37.97024785];
snd(:,5)=[160.0283364 61.09300563 93.24179025 94.75752967 42.01314663];
% [Mdata(:,5),Sdata(:,5),p{5}]=diffAnaly(fir5,'Affected side',snd5,'Control','���Ǽ�ǰ����б����ƽ��������',1);
fir(:,6)=[59.13212238 22.52923693 74.03761332 47.9805232 60.71158796];
snd(:,6)=[89.36656516 33.82980536 88.17728885 75.91355985 34.95305681];
% [Mdata(:,6),Sdata(:,6),p{6}]=diffAnaly(fir6,'Affected side',snd6,'Control','���Ǽ�ǰ����б����ƽ��������',1);
fir(:,7)=[60.29469618 11.3549035 56.98578113 18.30922588 20.007938];
snd(:,7)=[67.56573198 9.240291927 104.703327 39.65360985 14.787936];
% [Mdata(:,7),Sdata(:,7),p{7}]=diffAnaly(fir7,'Affected side',snd7,'Control','���Ǽ�ǰ����б����ƽ��������',1);
fir(:,8)=[49.88730254 64.94342628 51.15948222 19.04953592 30.57251863];     %�ش�
snd(:,8)=[61.26435904 37.6283773 357.0803922 58.31665729 50.76691933];      %
% [Mdata(:,8),Sdata(:,8),p{8}]=diffAnaly(fir8,'Affected side',snd8,'Control','���Ǽ�ǰ����б����ƽ��������',1);
fir(:,9)=[45.73324843 5.17995476 57.4784478 24.58415931 11.20531324];   %���㼡
snd(:,9)=[62.58651949 3.373624576 85.68483602 34.82326836 12.34520153];
% [Mdata(:,9),Sdata(:,9),p{9}]=diffAnaly(fir9,'Affected side',snd9,'Control','���Ǽ�ǰ����б����ƽ��������',1);
fir(:,10)=[1.483540054 1.801989986 0.809004374 1.56875849 2.09542571];
snd(:,10)=[1.161501254 1.60306408 2.270822767 0.719772081 2.498674848];
% [Mdata(:,10),Sdata(:,10),p{10}]=diffAnaly(fir10,'Affected side',snd10,'Control','���Ǽ�ǰ����б����ƽ��������',1);
[Mdata1,Sdata1,p]=ErrorbarPlot3(fir(:,3:9),'��һ��',snd(:,3:9),'�ڶ���',meanr,'������','ƽ��RMS',1);

[Mdata2,Sdata2,p]=ErrorbarPlot(fir(:,[1 2 10]),'��һ��',snd(:,[1 2 10]),'�ڶ���','ƽ��������',1);
[Mdata3,Sdata3,p]=ErrorbarPlot(fir(:,3:9),'��һ��',snd(:,3:9),'�ڶ���','ƽ��RMS',1);
[Mdata4,Sdata4,p4]=ErrorbarPlot(fir(:,[1 2 10]),'��һ��',snd(:,[1 2 10]),'�ڶ���','ƽ��������',1);