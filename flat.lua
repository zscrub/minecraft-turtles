local x = 50
local z = 0

local function dig_up_and_return()
    while turtle.detectUp() do
        turtle.digUp()
        turtle.up()
        z = z + 1
    end

    while z > 0 do
        turtle.down()
        z = z - 1
    end
end

for _ = 1, x do
    for _ = 1, x do
        dig_up_and_return()
        if not turtle.forward() then
            turtle.dig()
        end
    end
    -- turn the turtle 180 degrees
    turtle.turnRight()
    turtle.forward()
    turtle.turnRight()
end
