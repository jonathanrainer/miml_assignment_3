function outs = tbderivs(t, pops, r, K, R_m, alpha, gamma, mu)
%TBDERIVS Evaluate derivative in Truscott and Brindley, Eqns (2)+(3)

    holling_function = (pops(1)^2/(alpha^2 + pops(1)^2));

    dPdt = (r*pops(1) * (1 - pops(1)/K)) - ... 
        (R_m * pops(2) * holling_function);
    dZdt = gamma * R_m * pops(2) * holling_function - mu*pops(2);

    outs = [dPdt ; dZdt];
end

