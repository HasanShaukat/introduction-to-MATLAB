%Question 1
a = 10
b = 2.5e23
c = 2+3i
d = exp(2j*pi/3)

%Question 2
aVec = [3.14 15 9 26]
bVec = [2.71;8;28;182]
cVec = 5:-0.2:-5
dVec = logspace(0,1,100);

%Question 3
aMat = 2*ones(9)
bMat = diag([1 2 3 4 5 4 3 2 1],0)
cMat = reshape(1:100,10,10)
dMat = nan(3,4)
eMat = [13 -1 5;-22 10 -87]
fMat = floor(-3+6.*rand(5,3))

%Question 4
x = 1/(1+exp(-(a-15)/6))
y = (sqrt(a)+nthroot(b,21))
z = (log(real((c+d)*(c-d))*sin(a*pi/3)))/c*conj(c)

%Question 5
xVec = (exp((cVec.^2)/(2.*(2.5^2))))/sqrt(2*pi.*(2.5^2))
yVec = sqrt(((aVec').^2)+bVec.^2)
zVec = log10(1./dVec)

%Question 6
xMat = (aVec*bVec)*aMat^2
yMat = bVec*aVec
zMat = det(cMat)*(aMat*bMat)'

%Question 7
cSum = sum(cMat)
eMean = mean(eMat,2)
eMat(1,:) = [1 1 1]
cSub = cMat(2:9,2:9)
lin = 1:20
lin(1,2:2:20) = lin(1,2:2:20).*-1
r = rand(1,5)
r(1,r<0.5) = 0

