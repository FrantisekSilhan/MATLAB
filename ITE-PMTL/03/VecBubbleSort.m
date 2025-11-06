function Y = VecBubbleSort(X)
    s1 = size(X, 2);
    s2 = size(X, 1);
    for i = 1:(s1-1)
        for cn = 1:(s1-1)
            c1 = X(:, cn);
            c2 = X(:, cn+1);
            for rn = 1:s2
                r1 = c1(rn);
                r2 = c2(rn);
                if (r1 > r2)
                    X(:, [cn, cn + 1]) = X(:, [cn + 1; cn]);
                elseif (r1 == r2)
                    continue;
                end
                break;
            end
        end
    end
    Y = X;
end