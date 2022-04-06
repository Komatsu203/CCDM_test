clear all
n = 4;
MB_dist = [0.268420144*2 0.161062142*2 0.057989612*2 0.012528102*2];
nc_List = [10];

%%Entropy‚ÌŒvŽZ
Entropy = -sum(MB_dist .* log2(MB_dist));

for nc_ind = 1:numel(nc_List)
    na = algorithm2(n,MB_dist,nc_List(nc_ind));
    na_List(:,nc_ind) = algorithm2(n,MB_dist,nc_List(nc_ind));
    
    nc_temp = 0;
    n1_temp = 0;
    n3_temp = 0;
    n5_temp = 0;
    n7_temp = 0;
    
    for i = 1:nc_List(nc_ind)
        nc_temp = nc_temp + log2(i);
    end
    for i = 1:na(1)
        n1_temp = n1_temp + log2(i);
    end
    for i = 1:na(2)
        n3_temp = n3_temp + log2(i);
    end
    for i = 1:na(3)
        n5_temp = n5_temp + log2(i);
    end
    for i = 1:na(4)
        n7_temp = n7_temp + log2(i);
    end
    kc = fix(nc_temp - (n1_temp + n3_temp + n5_temp + n7_temp));
    %%Normalized divergence‚ðD_List‚ÉŠi”[
    D_List(nc_ind) = Entropy - kc / nc_List(nc_ind);
    %%kc/nc‚ðkcnc_List‚ÉŠi”[
    kcnc_List(nc_ind) = kc / nc_List(nc_ind);
end
