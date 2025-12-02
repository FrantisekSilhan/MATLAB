function Y = otoc(X, alpha, unit)
    arguments
        X
        alpha
        unit (1,1) string {mustBeMember(unit, ["degrees", "radians"])} = "degrees"
    end
    if (unit == "radians")
        Y = [X(1, :) * cos(alpha) - X(2, :) * sin(alpha); X(1, :) * sin(alpha) + X(2, :) * cos(alpha)];
    end
    if (unit == "degrees")
        Y = [X(1, :) * cosd(alpha) - X(2, :) * sind(alpha); X(1, :) * sind(alpha) + X(2, :) * cosd(alpha)];
    end
end