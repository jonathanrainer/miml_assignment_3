iterations = 1000;
timespan = 365*2;
transience = 400;
bloom_times = zeros(1, iterations);
for i=1:iterations
    seed = rand_range(1, 1000, 1);
    K = 108;
    alpha = 5.7;
    gamma = 0.05;
    r = 0.3;
    R_m = 0.7;
    [t, pops] = ode45(@(t,pops) tbderivs_forced_mu(t,pops,r,K,R_m,alpha,...
        gamma), 0:timespan, rand(1,2)) ;
    tmp = abs(50 - pops(transience:end, 1));
    if (min(tmp) >= 0)
        [~, id] = min(tmp);
        bloom_times(i) = t(id);
    else
        bloom_times(i) = 0;
    end
end
bloom_times(:, ~any(bloom_times,1)) = [];
bloom_time_average = mean(bloom_times)
