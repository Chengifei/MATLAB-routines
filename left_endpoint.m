function s = left_endpoint(f, tspan, n)
t = linspace(tspan(1), tspan(2), n + 1);
s = (t(2) - t(1)) * sum(f(t(1:end - 1)));
end
