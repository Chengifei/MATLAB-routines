function x = secant(f, x0, x1, res)
f_prev = f(x0);
f_cur = f(x1);
N = 0;
while (abs(f_cur) > res && N < 1e6 && f_prev ~= f_cur)
    fprintf('%i & %f & %f & \\SI{%.6f}{} & \\SI{%.6f}{} \\\\\n', N, x0, x1, f_prev, f_cur);
    x = x1 - (x1 - x0) / (f_cur - f_prev) * f_cur;
    x0 = x1;
    x1 = x;
    f_prev = f_cur;
    f_cur = f(x1);
    N = N + 1;
end
    fprintf('%i & %f & %f & \\SI{%.6f}{} & \\SI{%.6f}{} \\\\\n', N, x0, x1, f_prev, f_cur);
end

