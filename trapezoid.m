function s = trapezoid(f, tspan, n)
t = linspace(tspan(1), tspan(2), n + 1);
s = (t(2) - t(1)) * (sum(f(t(2:end - 1))) + 0.5 * (f(t(1)) + f(t(end))));
end
