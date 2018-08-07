% It analyzes the throwing a ball as a projectile
% But I could not plot a dashed line for the ground
%Furthurmore, I cannot get the distance at which the ball hits the ground
function throwBallf(Vo,theta)
ho = 1.5; g = 9.8;
t = 0:0.01:10;
x = Vo*cos(theta*(pi/180))*t;
y = ho+Vo*sin(theta*(pi/180))*t-(0.5*g*(t.^2));
hmax = y((find(y<0,1))-1);
xmax = x(find(y==0 && t~=0));
disp(['The ball hits the ground at a distance of ' mat2str(xmax) ' meters']);
figure;
plot(x,y,'r');
xlabel('Horizontal Distance');
ylabel('Vertical Distance');
title('Trajectory of Ball');
hold on;
plot(x,0,'--b');
legend('Trajectory of Ball','Ground');