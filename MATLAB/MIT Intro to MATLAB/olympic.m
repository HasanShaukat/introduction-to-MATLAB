%It draws an olympic flag using the getCircle Function
figure
[x1,y1] = getCircle([-1 0],0.4);
[x2,y2] = getCircle([0 0],0.4);
[x3,y3] = getCircle([1 0],0.4);
[x4,y4] = getCircle([-0.5 -0.4],0.4);
[x5,y5] = getCircle([0.5 -0.4],0.4);
hold on;
axis equal;
plot(x1,y1,'LineWidth',3,'Color','b');
plot(x2,y2,'LineWidth',3,'Color','k');
plot(x3,y3,'LineWidth',3,'Color','r');
plot(x4,y4,'LineWidth',3,'Color','y');
plot(x5,y5,'LineWidth',3,'Color','g');