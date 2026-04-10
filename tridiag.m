function x = tridiag(A, b)
    for r = 2:size(A, 2)
        w = A(r, r - 1) / A(r - 1, r - 1);
        A(r, (r - 1):r) = A(r, (r - 1):r) - w * A(r - 1, (r - 1):r);
        b(r) = b(r) - w * b(r - 1);
    end
    x = zeros(size(A, 2), 1);
    x(end) = b(end) / A(end, end);
    for r = length(x) - 1:-1:1
        x(r) = (b(r) - A(r, r + 1) * x(r + 1)) / A(r, r);
    end
end
