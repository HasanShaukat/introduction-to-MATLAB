% Homework 1
% It verifies the convergence formulas
% But I could not place the legend right
figure
p = 0.99;
k = 0:1000;
geomSeries = p.^k
G = 1/(1-p)
plot(k,G,'r')
ylim = G;
xlim = max(k);
hold on;
plot(k,cumsum(geomSeries),'b');
xlabel('k');
ylabel('Value');
title('Converging Series');
legend('Infinite Series','Finite Series');
figure
q = 2;
n = 1:500;
pSeries = 1./n.^q;
P = (pi^2)/6;
plot(n,P,'r');
hold on;
plot(n,cumsum(pSeries),'b');
xlabel('n');
title('P Series');
legend('Infinite Series','Finite Series');