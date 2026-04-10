function [dv1, dv2, dT] = hohmann(r1, r2, mu)
% given initial and final radius, gravitational constant mu
% returns the magnitude of two burns and the time between burns
dv1 = sqrt(mu / r1) * (sqrt(2 * r2 / (r1 + r2)) - 1);
dv2 = sqrt(mu / r2) * (1 - sqrt(2 * r1 / (r1 + r2)));
dT = pi * sqrt(((r1 + r2)*0.5)^3 / mu);
end