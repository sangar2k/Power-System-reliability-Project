%% Main
clc;clear all;
count=0;
iter=10000000;
for j= 1:iter
for i=1:3
x=rand(1);
D(i)=dice(x);
end
SumD=sum(D);
if SumD>=15
    count=count+1;
end
end
prob=count/iter



%% function
function D = dice(x)
if x <= 1/6
    D=1;
elseif x <= 2/6
    D=2;
elseif x <= 3/6
    D=3;
elseif x <= 4/6
    D=4;
elseif x <= 5/6
    D=5;
else
    D=6;
end
end