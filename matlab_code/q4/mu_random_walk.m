function positions = mu_random_walk(S_0, p, timespan, increment)
%RANDOM_WALK Simulate a 1-D random walk

    positions = zeros(timespan, 2);
    positions(1,:) = [0, S_0];
    for t=2:timespan+1
        switch positions(t-1,2)
            case 0.004
                positions(t,:) = [t-1, 0.008];
            case 0.032
                positions(t,:) = [t-1, 0.028];
            otherwise
                random_value = rand();
                if (random_value < p)
                    positions(t,:) = [t-1, positions(t-1, 2) + increment];
                else
                    positions(t,:) = [t-1, positions(t-1, 2) - increment];
                end
        end
    end
end


