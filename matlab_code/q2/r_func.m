function value = r_func(t, A, mean)
%R_FUNC Calculate the value of the function that defines r(t).

    value =  - A * cos(t) + mean;
end

