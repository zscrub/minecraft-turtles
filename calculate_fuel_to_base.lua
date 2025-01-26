function caluclate_fuel_to_base(value, base)
    local distance = 0
    if x < -259 then
        distance = distance + (abs(x) - 259) 
    else
        distance = distance + (259 - abs(x))
    end
    if y < -259 then
        distance = distance + (abs(y) - 190) 
    else
        distance = distance + (190 - abs(y))
    end
    -- account for y->skybox->charger traverse
    distance = y_abs_distance * 2
    if z < -259 then
        z_abs_distance = abs(z) - 463 
    else
        z_abs_distance = 463 - abs(z)
    end
end