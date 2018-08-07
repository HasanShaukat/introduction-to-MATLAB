threshold = 0.7;   % determine a suitable threshold empirically
blue = sum(sum(im(:,:,3)));
green = sum(sum(im(:,:,2)));
red = sum(sum(im(:,:,1)));
total = red + green + blue;
if (red / total > threshold)
    disp('red');
elseif (green / total > threshold)
    disp('green');
elseif (blue / total > threshold)
    disp('blue');
else
    disp('indeterminate colour');
end
