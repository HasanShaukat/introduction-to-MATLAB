x = -pi:0.1:pi;
y = -pi:0.1:pi;
[X,Y] = meshgrid(x,y);
Z = sin(X).*cos(Y);
surf(X,Y,Z);
shading interp
colormap(cool)
figure
surf(x,y,Z);
figure
contour(X,Y,Z,'LineWidth',2);
hold on
mesh(X,Y,Z)