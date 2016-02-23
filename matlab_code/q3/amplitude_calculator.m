function A = amplitude_calculator(time_span, transience_period, ... 
    accuracy, a_vals, P_tolerance)

    K = 108;
    alpha = 5.7;
    gamma = 0.05;
    mu = 0.012;
    R_m = 0.7;

    yStart = rand(1, 2);

    while (a_vals(2) - a_vals(1) > accuracy)
      A = mean(a_vals);
      [~, out_z] = ode45(@(t,y) tbderivs_forced(t,y, A, K, R_m, alpha, ...
          gamma, mu), time_span, yStart);
      maxPVal = max(out_z(transience_period:end, 1));
      if abs(maxPVal - 50) < P_tolerance
          break;
      else
          if (maxPVal > 50)
            a_vals(2) = A;
          else
            a_vals(1) = A;
          end
      end
    end
end

