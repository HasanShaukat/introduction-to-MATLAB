% 3 DOF Arm control first attempt
%             theta   d        a     alpha
clear L
L(1) = Link([  0      0.025        0       -pi/2          ], 'mod');
L(2) = Link([  0      0      0.155       0          ], 'mod');
L(3) = Link([  0      0           0.095  0       ], 'mod');
L(1).m = 0;
L(2).m = 17.4;
L(3).m = 4.8;
L(1).r = [0   0   0 ];
L(2).r = [0.068   0.006   -0.016];
L(3).r = [0   -0.070  0.014 ];
L(1).I = [0   0   0.35    0   0   0];
L(2).I = [.13   .524    .539    0     0   0];
L(3).I = [.066    .0125   .066    0   0   0];
L(1).Jm =  291e-6;
L(2).Jm =  409e-6;
L(3).Jm =  299e-6;
L(1).G =  -62.6111;
L(2).G =  107.815;
L(3).G =  -53.7063;
qz = [0 0 0]; % zero angles, L shaped pose
qr = [0 -pi/2 pi/2]; % ready pose, arm up
qstretch = [0 0 pi/2]; % horizontal along x-axis

arm3dof = SerialLink(L, 'name', 'three link', 'manufacturer', 'Hasan Shaukat', 'comment', 'New Horizons')
clear L