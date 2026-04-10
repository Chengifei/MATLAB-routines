function [t, x] = euler(f, t, x0)
x = zeros(numel(t), numel(x0));
x(1, :) = x0(:)';
for k = 2:length(t)
    x(k, :) = x(k - 1, :)' + (t(k) - t(k - 1)) * f(t(k - 1), x(k - 1, :)');
end
end
