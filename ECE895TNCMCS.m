%% Main

% description three components in the system
clc;clear all;
a1=0.72;b1=30;t1=0.8;
a2=0.9;b2=25;t2=0.7;
a3=0.7;b3=33;t3=0.75;

a=[a1 a2 a3];
b=[b1 b2 b3];
t=[t1 t2 t3];
run=10000;
tau=0.00001
SME=10^5;
count=1;
SymRel=[];

while (SME>tau)
for j=1:run;
wbrn=wblrnd(a1,b1);
for i=1:3
    wbrn=wblrnd(a(i),b(i));
if wbrn >= t(i)
    suc(i)=1;
else 
    suc(i)=0;
end 
end 

SumSuc = sum(suc);
if SumSuc>=1
    SysUp(j)=1;
else 
    SysUp(j)=0;
end
end
SymRel=[SymRel sum(SysUp)/run];

if count ==1;
    SME=SME;
else
    MeanSysRel=mean(SymRel);
    SDsymRel=std(SymRel);
    SME=SDsymRel/((count-1)*MeanSysRel);
end
count=count+1;
end
bar(SymRel)