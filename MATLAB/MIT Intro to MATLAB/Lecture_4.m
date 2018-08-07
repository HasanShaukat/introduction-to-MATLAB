% Symbolic Math

% Equation Solving
syms a b r x y
solve('(x-a)^2+(y-b)^2=r^2','x')
solve('(x-a)^2+(y-b)^2=r^2','y')

% Symbolic Integration
Q = int(x*exp(x),a,b)
subs(Q,{a,b},{0,2})

