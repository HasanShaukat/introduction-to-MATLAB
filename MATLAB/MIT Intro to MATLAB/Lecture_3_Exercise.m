%Example Polynomial Fitting

X = [-1 0 2];
Y = [0 -1 3];
p2 = polyfit(X,Y,2);
figure;
plot(X,Y,'o','MarkerSize',10);
hold on;
x = -3:0.01:3;
plot(x,polyval(p2,x),'r--');


%Exercise Polynomial Fitting
x = -4:0.1:4;
y = x.^2;
figure
plot(x,y);
hold on;
y = y+((max(y)./10).*randn(size(y)));
plot(x,y,'.');


hold on
p = polyfit(x,y,2);
plot(x,polyval(p,x),'r');
legend('Equation','Noise','Fitted Polynomial');

% Exercise Min Finding

x0 = fminbnd('myfun',-pi,pi)
x = -pi:pi/25:pi;
figure
plot(x,myfun(x));

%Differentiation and Integration
x = 0:0.01:2*pi;
y = sin(x);
dydx = diff(y)./diff(x);

% Differential Equations
% Chemical Reaction ODE Code


[t,y] = ode45('chem',[0 0.5],[0 1]);
plot(t,y(:,1),'k','LineWidth',1.5);
hold on;
plot(t,y(:,2),'r','LineWidth',1.5);
legend('A','B');
xlabel('Time(s)');
ylabel('Amount of Chemical');
title('Chemical Reaction');

% ODE Exercise
[t,y]=ode45(@(t,y) (-1*t*y/10),[0 10],10);
figure
plot(t,y);xlabel('Time');ylabel('y(t)');