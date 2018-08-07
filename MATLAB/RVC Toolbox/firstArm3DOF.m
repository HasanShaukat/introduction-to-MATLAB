mdl_arm3dof
arm3dof


figure
arm3dof.plot([-pi/4 -pi/4 pi/4])
arm3dof.fkine([-pi/4 -pi/4 pi/4])
T = transl(0.12,0.13,0.02)
q = arm3dof.ikine(T,[],[1 1 1 0 0 0])
arm3dof.fkine(q)