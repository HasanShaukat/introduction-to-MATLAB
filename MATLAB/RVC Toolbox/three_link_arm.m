L(1) = Link([  0      0.025        0       -pi/2          ], 'mod');
L(2) = Link([  0      0      0.155       0          ], 'mod');
L(3) = Link([  0      0           0.095  0       ], 'mod');
three_link = SerialLink(L,'name','three link');
three_link.fkine([0 0 0]);
three_link.plot([0 0 0]);
D = zeros(3,1);
D(1,1) = input('Enter x coordinate: ');
D(2,1) = input('Enter y coordinate: ');
D(3,1) = input('Enter z coordinate: ');
T = transl( D(1,1), D(2,1), D(3,1));
q = three_link.ikine(T,[],[1 1 1 0 0 0])
three_link.fkine(q)
figure
three_link.plot(q)