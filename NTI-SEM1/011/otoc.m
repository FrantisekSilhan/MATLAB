function Y = otoc(X, alpha)
    Y = [X(1, :) * cosd(alpha) - X(2, :) * sind(alpha); X(1, :) * sind(alpha) + X(2, :) * cosd(alpha)];
end