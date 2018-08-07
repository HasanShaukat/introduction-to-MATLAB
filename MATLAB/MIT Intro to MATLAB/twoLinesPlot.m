figure
t = 0:pi/100:2*pi
plot(t,sin(t))
hold on
plot(t,cos(t),'--r')
xlabel('Time');
ylabel('Function');
title('Sine and Cosine Functions');
legend('Sine','Cosine');
xlim([0 2*pi]);
ylim([-1.4 1.4]);