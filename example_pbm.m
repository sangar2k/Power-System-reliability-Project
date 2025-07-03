clc; clear all

%% Input parameters
LamdaG=1.0000e-05;Lamda_t1=0.015/1000;Lamda_t2=0.027/1000;Lamda_tr=0.011/1000;
T_FailG=1/LamdaG;T_FailT1=1/Lamda_t1;T_FailT2=1/Lamda_t2;T_FailTr=1/Lamda_tr;
interval=1;

WhenFailG=exprnd(T_FailG,1)
sizeG=ceil(WhenFailG/interval)
sizeG0=(100000-sizeG)
avail=[ones(1,sizeG) zeros(1,sizeG0)];

WhenFailT1=exprnd(T_FailT1,1)
sizeT1=ceil(WhenFailT1/interval)
sizeT10=(100000-sizeT1)
availt1=[ones(1,sizeT1) zeros(1,sizeT10)];

WhenFailT2=exprnd(T_FailT2,1)
sizeT2=ceil(WhenFailT2/interval)
sizeT20=(100000-sizeT2)
availt2=[ones(1,sizeT2) zeros(1,sizeT20)];


WhenFailTr=exprnd(T_FailTr,1)
sizeTr=ceil(WhenFailTr/interval)
sizeTr0=(100000-sizeTr)
availtr=[ones(1,sizeTr) zeros(1,sizeTr0)];

SysAvail=avail(1:100000) & (availt1(1:100000)|availt2(1:100000)) & availtr(1:100000)
