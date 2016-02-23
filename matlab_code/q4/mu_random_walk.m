function positions = mu_random_walk(S_0, timespan, p, increment)
%RANDOM_WALK Simulate a 1-D random walk

    positions = zeros(timespan, 2);
    positions(1,:) = [0, S_0];
    for t=2:timespan+1
        positions(t,:) = [t-1, mu_next_move(positions(t-1, 2), p, ...
            increment)];
    end
end


