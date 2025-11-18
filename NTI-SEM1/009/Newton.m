function [x] = Newton(x0, g, eps, maxIter, delta)
    iter = 0;
    xi = x0;

    while (iter < maxIter && abs(g(xi)) > eps)
        xi = xi - delta * g(xi) / (g(xi+delta)-g(xi));
        iter = iter + 1;
    end

    if (iter == maxIter)
        x = NaN;
        return;
    end

    x = xi;
end