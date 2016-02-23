iterations = 100;
A_0s = zeros(iterations,1);
for i=1:iterations
    A_0s(i) = amplitude_calculator(0:(365*3), 500, 10^(-9), [0.1,0.15], ...
        0.0001);
end
average = sum(A_0s)/iterations;
    