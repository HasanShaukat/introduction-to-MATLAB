%It draws concentric circles using the getCircle Function
figure
[x1,y1] = getCircle([0 0],2);
[x2,y2] = getCircle([0 0],4);
[x3,y3] = getCircle([0 0],6);
[x4,y4] = getCircle([0 0],8);
plot(x1,y1,'LineWidth',3,'Color','r');
hold on;
axis equal;
plot(x2,y2,'LineWidth',3,'Color','b');
plot(x3,y3,'LineWIdth',3,'Color','m');
plot(x4,y4,'LineWidth',3,'Color','y');
colormap(jet);