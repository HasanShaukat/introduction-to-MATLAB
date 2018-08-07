mdl_puma560
platform = SerialLink([0 0 0 -pi/2 1;-pi/2 0 0 pi/2 1],'base',troty(pi/2),'name','platform')
platform.fkine([1 2])
p560.links(1).d = 30*0.0254;
p8 = platform*p560
T = transl(0.5,1.0,0.7)*rpy2tr(0,3*pi/4,0)
qi = p8.ikine(T)
p8.plot(qi)
p560.ikine6s(T)
p560.maniplty(qn)
p8.maniplty([0 0 qn])