grades = namesAndGrades(1:end,2:end)
meanGrades = nanmean(grades)
meanMatrix = ones(15,1)*meanGrades
curvedGrades = 3.5*(grades./meanMatrix)
nanmean(curvedGrades)
% This could not be done!!! :-(
% curvedGrades(1:end,curvedGrades>5) = 5