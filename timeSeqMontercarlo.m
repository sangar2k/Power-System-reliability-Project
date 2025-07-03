% File name: Time Seq monte carlo
clc;clear all;
n=10;
%% Failiure and repair information
Lamda=0.1; %failures per year(exponential distribution)
mu=20; %repairs per year (exponential distribution)

% Average time to fail and repair
T_Fail=1/Lamda; T_Repair=1/mu;

%% Generate random failure and repair times
WhenFail=exprnd(T_Fail,1,n);
WhenComplete=exprnd(T_Repair,1,n);
SystemAvail1=[];
interval=0.001;

for kk=1:10
    
    FailSize = ceil(WhenFail(kk)/interval); 
    RepairSize=ceil(WhenComplete(kk)/interval);
    SystemAvail=[ones(1,FailSize) zeros(1,RepairSize)]
    SystemAvail1=[SystemAvail1 SystemAvail]
    time=interval*FailSize;
    time1
end
plot(SystemAvail1)
