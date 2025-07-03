ArData = load('ArrivalData895');           % Save(fun.mat; a,b,c)
ArTimeData=ArData.Data;
[x y] = size(ArTimeData)

for ii = 1:x
    figure
    hist(ArTimeData(ii,2:y))
    title(['Arrival time Distribution at' num2str(ArTimeData(ii,1))])
end
