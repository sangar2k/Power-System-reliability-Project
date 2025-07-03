% File name: Time Seq monte carlo
clc;clear all;
%% Failiure and repair information
Lamda1=0.1; Lamda2=0.15; %failures per year(exponential distribution)
mu1=20;mu2=2; %repairs per year (exponential distribution)

% Average time to fail and repair
T_Fail1=1/Lamda1; T_Repair1=1/mu1;
T_Fail2=1/Lamda2; T_Repair2=1/mu2;
CompAvail1=[];CompAvail2=[];

%% Stopping condition
Time=0;
MaxTime=30;
interval=0.01;
while Time <=30
WhenFail1=exprnd(T_Fail1,1);
WhenComplete1=exprnd(T_Repair1,1);
WhenFail2=exprnd(T_Fail2,1);
WhenComplete2=exprnd(T_Repair2,1);

    FailSize1 = ceil(WhenFail1/interval); 
    RepairSize1=ceil(WhenComplete1/interval);
    CompAvail=[ones(1,FailSize1) zeros(1,RepairSize1)];
    CompAvail1=[CompAvail1 CompAvail];
    
    FailSize2 = ceil(WhenFail2/interval); 
    RepairSize2=ceil(WhenComplete2/interval);
    CompAvail2a=[ones(1,FailSize2) zeros(1,RepairSize2)];
    CompAvail2=[CompAvail2 CompAvail2a];
    
    Time1=(length(CompAvail1) - 1)*interval;
    Time2=(length(CompAvail2) - 1)*interval;
    Time=min(Time1,Time2);
end
samples=MaxTime/interval;

SysAvail=CompAvail1(1:samples)& CompAvail2(1:samples);
plot(SysAvail)