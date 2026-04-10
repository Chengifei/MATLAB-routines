function s = midpoint(f, tspan, n)
    t = linspace(tspan(1), tspan(2), n + 1);
    h = t(2) - t(1);
    t = t + h / 2;
    t = t(1:end-1);
    s = sum(f(t)) * h;
end
