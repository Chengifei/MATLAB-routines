function G = G2(angle)
% if length(angle) > 1
%     G = zeros(3, 3, length(angle));
%     G(1, 1, :) = cos(angle);
%     G(1, 3, :) = -sin(angle);
%     G(3, 1, :) = sin(angle);
%     G(3, 3, :) = cos(angle);
%     G(2, 2, :) = 1;
% else
    G = [cos(angle) 0 -sin(angle); 0 1 0; sin(angle) 0 cos(angle)];
% end
end