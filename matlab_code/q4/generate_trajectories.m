clf
iterations = 5;
limits = [0.004, 0.032];
for i=1:iterations
    subplot(iterations,1,i)
    random_walk = mu_random_walk(0.012, 0.5, 100, 0.004);
    plot(random_walk(:,1), random_walk(:,2), 'color', rand(1,3))
    ylim(limits)
end