%It is a semilog plot, which shows a straight for an exponential plot
figure
y = [15 25 55 115 144];
semilogy(y,'msquare');
xlabel('Course Number');
ylabel('Class Size');
title('Progress of 6.094');