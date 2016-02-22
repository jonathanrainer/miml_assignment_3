function value = r_func(t, A, mean)
%R_FUNC Calculate the value of the function that defines r(t).
    
    period = 2 * pi / 365;
    
    value =  - A * cos(t*period) + mean;
end

