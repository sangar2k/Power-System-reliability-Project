% Montercarlo discussion
% visualization 
clc;
clear all;
x=-0.5:0.001:0.5;
yp=sqrt(0.25-x.^2);
yn=-sqrt(0.25-x.^2);
plot(x,yp,'r',x,yn,'r')
axis([-0.6,0.6,-0.6,0.6])
hold on
%plot square
plot([0.5 0.5],[-0.5,0.5],'b')
plot([-0.5 -0.5],[-0.5,0.5],'b')
plot([-0.5 0.5],[-0.5,-0.5],'b')
plot([-0.5 0.5],[0.5,0.5],'b')

% define points inside the circle
%% Monte carlo 


radius = 0.5;
count =0;
TotalExp=5000;
for jj =1:TotalExp    
Point = rand(1,2)-0.5;  
distance = sqrt (Point(1)^2+Point(2)^2);
if distance <= radius 
    count = count+1;
else 
    count = count + 0;
end 
plot(Point(1),Point(2),'*')
end
ratio =count/TotalExp

