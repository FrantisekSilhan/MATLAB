function z = zintegruj(x, y, c)
  if nargin < 3
    c = 0;
  end
  z = c * ones(length(x) - 1, 1);
  for i = 1: length(x) - 1
    z(i+1) = z(i) + .5 * (x(i+1) - x(i)) * (y(i) + y(i+1));
  end
end