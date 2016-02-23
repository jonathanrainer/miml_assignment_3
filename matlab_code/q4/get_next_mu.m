function mu = get_next_mu(t)
    mu = 0.012;
    p = 0.5;
    increment = 0.004;
    if (t ~= 0)
        for t=1:t
            mu = mu_next_move(mu, p, increment);
        end
    end
end


