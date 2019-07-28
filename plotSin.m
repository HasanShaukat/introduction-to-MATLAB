% I can't make the surf plot!!!! Don't know why!!!
function plotSin(f1,f2);
x = 0:1/(round(f1*16)+1):2*pi;
if nargin == 1
    figure
    plot(x,sin(f1*x),'rs--','Linewidth',2,'MarkerFaceColor','k')
  else if nargin == 2
         y = 0:1/(round(f2*16)+1):2*pi;
         [X,Y] = meshgrid(x,y) 
         z = sin(f1*X)+sin(f2*Y);
         subplot(2,1,1); imagesc(x,y,Z);colorbar;
         colormap hot;axis xy;
         subplot(2,1,2); surf(X,Y,Z);
      end
end
