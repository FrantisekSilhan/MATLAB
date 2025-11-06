function z = f(x, y)
    if (nargin < 2)
        y = 0;
    end

    z = x .* exp(-x.^2 - y.^2) + tanh(x .* y);
end