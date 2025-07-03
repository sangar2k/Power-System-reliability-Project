clc
clear all

%% User input
req=29.5;
n=10000;
FlagArray=[];

%% System Parameters
alpha = 30;
beta = 520;
%% do the analysis
for k=1:n
%input
year=wblrnd(alpha,beta);

Flag=ParaModel(year, req);
FlagArray=[FlagArray Flag];

end

%% Analyze the output
survive=sum(FlagArray)/n;
display(['my device had ' , num2str(survive), ' chance of being in operation' , num2str(req)])
%%
function Flag =ParaModel(year,req)
if year>=req
    Flag=1;
else
    Flag=0;
end
end


    