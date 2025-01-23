local x = 65
local z = 0
local forward = true

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

local function turn()
    if forward then
        turtle.turnRight()
    else
        turtle.turnLeft()
    end
end

local function turn_180()
    turn()
    if not turtle.forward() then
        turtle.dig()
    end
    turn()
    forward = not forward
end

for _ = 1, x do
    for _ = 1, x do
        dig_up_and_return()
        if not turtle.forward() then
            turtle.dig()
        end
    end
    turn_180()
end
