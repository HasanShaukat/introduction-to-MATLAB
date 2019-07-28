%It interpolates a random surface
figure
Z0 = rand(5,5);
[X0,Y0] = meshgrid(1:5);
[X1 Y1] = meshgrid(1:0.1:5);
Z1 = interp2(X0,Y0,Z0,X1,Y1,'cubic');
surf(X1,Y1,Z1);
colormap(hsv);
shading interp;
hold on;
contour(X0,Y0,Z0);
colorbar;
caxis([0 1]);