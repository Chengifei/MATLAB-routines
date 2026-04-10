function [x] = bisect(f, x_span, n)
a = x_span(1);
b = x_span(2);
val = [f(a), f(b)];
for i = 1:n
    c = (a + b) / 2;
    new_val = f(c);
    fprintf('%d & \\SI{%f}{} & \\SI{%.3e}{} & \\SI{%f}{} & \\SI{%.3e}{} & \\SI{%f}{} & \\SI{%.3e}{} & \\SI{%.3e}{}\\\\\n', i - 1, a, f(a), b, f(b), c, f(c), c - a);
    if (val(1) * new_val < 0)
        b = c;
    elseif (new_val == 0)
        x = c;
        break;
    else
        a = c;
    end
end
x = c;
end