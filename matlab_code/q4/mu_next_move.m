function new_mu = mu_next_move(old_mu, p, increment)
%MU_NEXT_MOVE Summary of this function goes here
%   Detailed explanation goes here
    switch old_mu
            case 0.004
                new_mu = 0.008;
            case 0.032
                new_mu = 0.028;
            otherwise
                random_value = rand();
                if (random_value < p)
                    new_mu = old_mu + increment;
                else
                    new_mu = old_mu - increment;
                end
    end
end

