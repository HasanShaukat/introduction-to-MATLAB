% This is a 4 Legged Walking Robot
% It's legs have 3 DOF

L1 = 0.1     % Initialize link lengths of legs
L2 = 0.1

s = 'Rz(q1) Rx(q2) Ty(L1) Rx(q3) Tz(L2)'

dh = DHFactor(s)    % Let it calculate the DH Parameters

dh.tool

dh.command('leg')  % Make a serial link and name it

leg = eval(dh.command('leg'))

transl(leg.fkine([0 0 0]))    % Check the sanity of robot

leg.plot([0 0 0], 'nobase', 'noshadow')
set(gca, 'Zdir', 'reverse')
view(137,48)



% Motion of One Leg

xf = 50   % x forward
xb = -xf   %x backward
y = 50      % Distance of foot from body
zu = 20      % z distance when foot is up
zd = 50     % z distance when foot is down

path = [xf y zd; xb y zd; xb y zu; xf y zu; xf y zd] * 1e-3    % Create path by end points

p = mstraj(path, [], [1 3 0.25 0.5 0.25]', path(1,:), 0.1,0)

qcycle = leg.ikine( transl(p), [], [1 1 1 0 0 0]);

leg.plot(qcycle)

W = 0.1    % Height and Width of robot base
L = 0.2

% Now time to make four legs out of this one

legs(1) = SerialLink(leg, 'name', 'leg1')
legs(2) = SerialLink(leg, 'name', 'leg2', 'base', transl(-L, 0, 0) );
legs(3) = SerialLink(leg, 'name', 'leg3', 'base', transl(-L, -W, 0)*trotz(pi))
legs(4) = SerialLink(leg, 'name', 'leg4', 'base', transl(0, -W, 0)*trotz(pi))

% Now, time to move the four legs

k = 1
while 1
     q = qcycle(:,:)
    legs(1).plot( gait(qcycle, k, 0,   0), 'noshadow', 'nobase' );
    legs(2).plot( gait(qcycle, k, 100, 0), 'noshadow', 'nobase' );
    legs(3).plot( gait(qcycle, k, 200, 1), 'noshadow', 'nobase' );
    legs(4).plot( gait(qcycle, k, 300, 1), 'noshadow', 'nobase' );
    drawnow
    k = k+1;
end