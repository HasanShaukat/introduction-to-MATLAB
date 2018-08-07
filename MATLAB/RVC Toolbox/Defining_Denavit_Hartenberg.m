L1 = 1      % Define link lengths
L2 = 2
L3 = 1.5
L4 = 2.2
L5 = 1.3
L6 = 0.4
s = 'Tz(L1) Rz(q1) Ry(q2) Ty(L2) Tz(L3) Ry(q3) Tx(L6) Ty(L4) Tz(L5) Rz(q4) Ry(q5) Rz(q6)'   %Define arm structure

dh = DHFactor(s)   % Let MATLAB evaluate the structure

dh.display   % Display the Denavit Hartenberg Parameters

cmd = dh.command('hasan')    % Make a serial link of these links

robot = eval(cmd)    % Make a robot with this serial link