function outs = tbderivs_forced_r(t, pops, A, K, R_m, alpha, gamma, mu)
%TBDERIVS Evaluate derivative in Truscott and Brindley, Eqns (2)+(3)

    holling_function = R_m * pops(2) * ((pops(1)^2)/(alpha^2 + pops(1)^2));

    r = r_func(t, A, 0.3);
    
    dPdt = (r*pops(1) * (1 - (pops(1)/K))) - holling_function;
    dZdt = (gamma * holling_function) - mu*pops(2);

    outs = [dPdt ; dZdt];
end

