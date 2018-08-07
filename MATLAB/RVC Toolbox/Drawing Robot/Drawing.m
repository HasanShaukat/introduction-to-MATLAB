% This code makes a 6 DOF Robot draw the letter "E" on paper
mdl_puma560

path = [ 1 0 1; 1 0 0; 0 0 0; 0 2 0; 1 2 0; 1 2 1; 0 1 1; 0 1 0; 1 1 0; 1 1 1];   % These are the points of end effector

plot3(path(:,1), path(:,2), path(:,3), 'color', 'k', 'LineWidth', 2)    %Plots the path

p = mstraj(path, [0.5 0.5 0.3], [], [2 2 2], 0.2,0.2)    % Input arguments are path, maximum xyz accelerations, don't know, initial coordinates, sample interval, acceleration time

about(p)

time_to_run = numrows(p)*0.02     %Time to execute at the 20 ms sample interval

Tp = transl(0.1*p)    % Making the letter of practically writable size and taking xyz values

Tp = homtrans(transl(0.4,0,0), Tp)     % Transferring the origin to (0.4,0,0) coordinate

p560.tool = trotx(pi)    % To make the hand oriented downward, we have to rotate it along x axis by 180 degree

q = p560.ikine6s(Tp)      % Find out the joint angle values at all sampled instants

p560.plot(q)    % See the simulation