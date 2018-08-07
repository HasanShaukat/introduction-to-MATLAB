function n = escapeVelocity(z0,c,N)
Z = zeros(1,N+1);
z(1) = z0;
n = N;
for a = 2:N
    z(a) = (z(a-1))^2+c;
    if(abs(z(a))>2)
        n = a;
        break
    end 
end