function x = newton(f, der, x, n)
for i = 1:n
    fprintf('%d & $%f$ & \\SI{%e}{} & \\SI{%f}{}\\\\\n', i - 1, x, f(x), der(x));
    x = x - f(x) / der(x);
end
end