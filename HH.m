
for n = 0:10
[t,y] = ode45('huxley',[0 20],[0.5;0.5;0.5;-60+n]);
ySS = [y(:,1) y(:,2) y(:,3) y(:,4)];
if(max(y(:,4))>0)
    plot(t,y(:,4),'r');
else
    plot(t,y(:,4),'k');
end
hold on
end
title('Approaching Steady State');
xlabel('Time (ms)');
ylabel('Transmembrane Voltage (mV)');