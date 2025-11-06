function [y] = polynom(x, a)
    y = 0;
    for i = 1 : size(a, 2)
        y = y + a(1, i) * x .^ (size(a, 2)-i);
    end
end