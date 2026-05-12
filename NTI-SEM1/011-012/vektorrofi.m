function Y = vektorrofi(ro, fi, unit)
    arguments
        ro
        fi
        unit (1,1) string {mustBeMember(unit, ["degrees", "radians"])} = "degrees"
    end
    Y = otoc(zvetsi(jednanula, ro), fi, unit);
end