-- XYZ(-259, 64, 463)
local home = vector.new(-259, 64, 463)


function calculate_distance(value, base) 
    return value - base
end

function caluclate_units_to_base(pos, dis)
    dis.y = dis.y + (190-dis.y)
    dis.y = dis.y + (190-home.y)
    return abs(dis.x) + abs(dis.y) + abs(dis.z)
end

-- get current coords
-- calculate X distance to -259
-- calculate Z distance to 463
-- calculate Y distance to 190 (skybox) 

    
while true do
    local current_position = vector.new(gps.locate(3))
    local displacement = current_position - home
    local units_to_base = caluclate_units_to_base(current_position, displacement)
    
    local current_fuel = turtle.getFuelLevel()
    if current_fuel == units_to_base + 5 then
        -- move to skybox (Y=190)
        if current_position.y < 190 t    
        if not turtle.up() then
            turtle.digUp()
        end
        if turtle.getItemSpace(0) then
            turtle.drop(64)
        end
    end

    -- while x value is not -259, 

end
