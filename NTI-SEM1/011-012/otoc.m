function Y = otoc(X, alpha, unit)
    arguments
        X
        alpha
        unit (1,1) string {mustBeMember(unit, ["degrees", "radians"])} = "degrees"
    end
    if (unit == "radians")
        S = [cos(alpha), -sin(alpha); sin(alpha), cos(alpha)];
        Y = S * X;
    end
    if (unit == "degrees")
        S = [cosd(alpha), -sind(alpha); sind(alpha), cosd(alpha)];
        Y = S * X;
    end
end