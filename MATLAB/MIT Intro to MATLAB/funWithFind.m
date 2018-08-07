function ind = findNearest(x,desiredVal)
ind = find(x<(desiredVal+(desiredVal/100))& x>(desiredVal-(desiredVal/100)))
