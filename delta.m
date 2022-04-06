function x = delta(i,k,MB_dist)
if k == 1
    x = -log(MB_dist(i));
else
    x = k * log(k/(k-1)) + log(k-1) - log(MB_dist(i));
end
return