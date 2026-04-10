function G = G3(angle)
if length(angle) > 1
    G = zeros(3, 3, length(angle));
    G(1, 1, :) = cos(angle);
    G(1, 2, :) = sin(angle);
    G(2, 1, :) = -sin(angle);
    G(2, 2, :) = cos(angle);
    G(3, 3, :) = 1;
else
    G = [cos(angle) sin(angle) 0; -sin(angle) cos(angle) 0; 0 0 1];
end
end