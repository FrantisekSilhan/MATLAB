function y = sinus(x)
    N = 9;
    pattern = [0 1 0 -1];
    result = repmat(pattern, 1, N);

    z = floor(x/2/pi);
    x = x - 2*pi * z;
    y = Taylor(x, result);
end