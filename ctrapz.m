% Corrected Trapezoid
function s = ctrapz(f, tspan, n)
t = linspace(tspan(1), tspan(2), n + 1);
s = trapezoid(f, tspan, n);
s = s - ((t(2) - t(1)) / 24) * [3 -4 1 1 -4 3] * [f(t(1:3)) f(t(end-2:end))]';
end
