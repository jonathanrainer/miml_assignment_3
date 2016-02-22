time_span = 0:0.1:365;
A = 0.1;
subplot(2,1,1)
plot_values = r_func(time_span, A, 0.3);
plot(time_span, plot_values, 'r');
xlabel('t');
ylabel('r(t)');
subplot(2,1,2)
plot_values_2 = 1./plot_values .* (A * sin(time_span));
plot(time_span, plot_values_2, 'b');
xlabel('t');
ylabel('1/r(t) * dr/dt');