% 1)
s1 = round(rand()*30+10);
s2 = round(rand()*30+10);
s3 = round(rand()*30+10);

C = randn(s1, s2, s3);

% 2)a)
prumer1 = 0;
for c1 = 1:s1
    for c2 = 1:s2
        for c3 = 1:s3
            prumer1 = prumer1 + C(c1, c2, c3);
        end
    end
end
prumer1 = prumer1 / (s1 * s2 * s3);

% 2)b)
prumer2 = sum(sum(sum(C))) / (s1 * s2 * s3);

% 3)
C = squeeze(C(1,:,:));

%for i = 1:s2
%    C(i, :) = C(i, :) - (sum(C(i, :)) / s3);
%end

C = C - mean(C, 2);

% 4)
mara(C)
function y = mara(x)
    y = sin(x) .^ 2 .* cos(x);
end