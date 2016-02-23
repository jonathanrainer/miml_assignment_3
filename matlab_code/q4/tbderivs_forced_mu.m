function outs = tbderivs_forced_mu(t, pops, r, K, R_m, alpha, gamma)
%TBDERIVS Evaluate derivative in Truscott and Brindley, Eqns (2)+(3)

    holling_function = R_m * pops(2) * ((pops(1)^2)/(alpha^2 + pops(1)^2));

    mu = get_next_mu(t);
    
    dPdt = (r*pops(1) * (1 - (pops(1)/K))) - holling_function;
    dZdt = (gamma * holling_function) - mu*pops(2);

    outs = [dPdt ; dZdt];
end

