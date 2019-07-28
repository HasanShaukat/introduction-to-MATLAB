% %Assignment 3
% 
% A = [3 6 4; 1 5 0; 0 7 7];
% b = [1;2;3];
% X = A\b
% error = abs(A*X-b)
% 
% %Numerical Integration
% 
% y = quad(@(x)x.*exp(-x/3),0,5)
% y1 = -24*exp(-5/30+9)
% Difference = abs(y-y1)
% 
% %Here difference is quite large
% 
% %Computing the Inverse
% 
% A = [1 2;3 4];
% C = inv(A)
% I = C*A

% Fitting Polynomials

% load 'randomData.mat'

% load data here, make two separate row vectors of x and y

p1 = polyfit(x,y,1)
p2 = polyfit(x,y,2)
p3 = polyfit(x,y,3)
p4 = polyfit(x,y,4)
p5 = polyfit(x,y,5)
xmin = min(x);
xmax = max(x);
polyx = xmin:0.01:xmax;
figure
hold on
plot(x,y,'b.');
plot(polyx,polyval(p1,polyx),'y');
plot(polyx,polyval(p2,polyx),'m');
plot(polyx,polyval(p3,polyx),'c');
plot(polyx,polyval(p4,polyx),'r');
plot(polyx,polyval(p5,polyx),'g');
legend('Noisy Data','1st Degree','2nd Degree','3rd Degree','4th Degree','5th Degree');