function x = tridiagv(l, d, u, b)
    assert(length(l) == length(u) && length(l) + 1 == length(d) && length(d) == length(b));
    for k = 2:length(d)
        r = l(k - 1) / d(k - 1);
        d(k) = d(k) - r * u(k - 1);
        b(k) = b(k) - r * b(k - 1);
    end
    x = zeros(length(b), 1);
    x(end) = b(end) / d(end);
    for k = (length(x) - 1):-1:1
        x(k) = (b(k) - u(k) * x(k + 1)) / d(k);
    end
end
