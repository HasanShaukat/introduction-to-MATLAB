%This smoothes a given noisy data, by asking width. Greater width gives
%smoother curve, and smaller width gives noisy curve
function smoothed = rectFilt(x,width)
smoothed = x; %This is the initialization of matrix, as a matrix is not suitable to increase in run time
if(mod(width,2) == 0)
    width = width-1
end
N = width-1;
for n = 1:(N/2)
    smoothed(n,2) = mean(x(n:n+1,2));
end
for n = (length(x)-(N/2)):length(x)
    smoothed(n,2) = mean(x(n-1:n,2));
end
for n = (N/2)+1:length(x)-(N/2)
    smoothed(n,2) = mean(x((n-(N/2)):(n+(N/2)),2));
end
plot(x(:,1),x(:,2),'.r');
hold on
plot(smoothed(:,1),smoothed(:,2),'-b');
title('Smoothing Filter');
legend('Noisy Data','Smoothed Curve');
xlabel('Index');
ylabel('Data Value');
