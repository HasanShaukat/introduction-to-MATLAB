function M = julia(zMax,c,N)
Z = zeros(500,500);
x = linspace(-zMax,zMax,500);
y = linspace(-zMax,zMax,500);
[X,Y] = meshgrid(x,y);
Z = X+Y*i;
M = zeros(500,500);
for m = 1:500
    for n = 1:500
        M(m,n) = escapeVelocity(Z(m,n),c,N);
    end
end
imagesc(atan(0.1*M));
axis xy