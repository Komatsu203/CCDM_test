function na = algorithm2(n,MB_dist,nc)
na = zeros(1,n);
delta_i = zeros(1,n);

for m = 1:nc
    for i = 1:n
        delta_i(i) = delta(i,na(i)+1,MB_dist);
    end
    [~,ind] = min(delta_i);
    j = min(ind);
    na(j) = na(j) + 1;
end
return
