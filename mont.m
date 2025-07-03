% File name: Time Seq monte carlo
clc;clear all;
n=10;
%% Failiure and repair information
Lamda=0.1; Lamda=0.15; %failures per year(exponential distribution)
mu=20;mu=2; %repairs per year (exponential distribution)

% Average time to fail and repair
T_Fail1=1/Lamda1; T_Repair1=1/mu1;
T_Fail2=1/Lamda2; T_Repair2=1/mu2;

%% Generate random failure and repair times
WhenFail1=exprnd(T_Fail,1,n);
WhenComplete1=exprnd(T_Repair,1,n);
CompAvail1=[];

WhenFail2=exprnd(T_Fail,1,n);
WhenComplete2=exprnd(T_Repair,1,n);
CompAvail2=[];
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
