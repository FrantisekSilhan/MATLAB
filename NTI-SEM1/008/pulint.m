function [x, i] = pulint(g, a, b, eps)
    i = 0;

    if (g(a) * g(b) > 0) || (eps <= 0)
        i = -1;
        x = NaN;
        return;
    end

    while (abs(b - a) > eps)
        s = (a + b) / 2;
        i = i + 1;
        if g(a) * g(s) > 0
            a = s;
        else
            b = s;
        end
    end
    x = (a+b)/2;
end