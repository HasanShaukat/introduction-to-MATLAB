polar(0:0.01:2*pi,cos((0:0.01:2*pi)*2))
figure
bar(1:10,rand(1,10));
figure
[X,Y]=meshgrid(1:10,1:10);
quiver(X,Y,rand(10),rand(10));
figure
stairs(1:10,rand(1,10));
figure
fill([0 1 0.5],[0 0 1],'r');
doc specgraph