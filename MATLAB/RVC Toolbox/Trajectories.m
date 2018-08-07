T1 = transl(0.4,0.2,0)*trotx(pi)      % Create two poses
T2 = transl(0.4,-0.2,0)*trotx(pi/2)

q1 = p560.ikine6s(T1)   % Find  initial and final joint angles
q2 = p560.ikine6s(T2)

t = [0:0.05:2]'  % Make time values

q = jtraj(q1, q2, t)      % Find joint angles at all time values
[q,qd,qdd] = jtraj(q1, q2, t)   % Also find velocity and acceleration
q = p560.jtraj(T1, T2, t)    %Easier way to do it

p560.plot(q)     % Plot a simulation

figure
plot(t, q(:,2))       % Plot any angle (in this case the 2nd angle) against time
grid on

figure
qplot(t, q);       % Plot all angles against time

T = p560.fkine(q)     % Find all poses corresponding to all joint values
p = transl(T)        % Find the cartesian position from poses
about(p)

figure
plot(p(:,1), p(:,2))     % Plot x against y
axis equal
grid on

figure
plot(t, tr2rpy(T))     % Find change in orientation through RPY curve
grid on

% - - - - - - - - - - - - - -
%Cartesian Space Motion

Ts = ctraj(T1, T2, length(t));    % Find all poses corresponding to each time
figure
plot(t, transl(Ts))      % Plot xyz against time
figure
plot(t, tr2rpy(Ts))       % Plot RPY curve
qc = p560.ikine6s(Ts)

% - - - - - - - - - - - - -
% Motion Through a Singularity

T1 = transl(0.5, 0.3, 0.44) * troty(pi/2)
T2 = transl(0.5, -0.3, 0.44) * troty(pi/2)     %Change the cartesian end points of previous example

Ts = ctraj(T1, T2, length(t))           % Cartesian Poses Path

qc = p560.ikine6s(Ts)      % Convert to Joint Variables

m = p560.maniplty(qc)    % Find manipulatibility of the motion

% - - - - - - - - - - - - - -
% Configuration Change
% If an arm wants to work left handed in one workspace, and right handed in
% the other workspace, this change will be dealt

T = transl(0.4,0.2,0) * trotx(pi);      % Create end pose

qr = p560.ikine6s(T, 'ru')     % See angles for right handed and left handed configuration
ql = p560.ikine6s(T, 'lu')

q = jtraj(qr, ql, t)    % qr and ql are 1-pose angles, and jtraj finds the change
                        % from one pose to another pose
figure                        
p560.plot(q)    % Plot the simulation of configuration change                        