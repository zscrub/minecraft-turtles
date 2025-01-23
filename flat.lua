local x = 75
local y = 30
local z = 0
local forward = true

local function dig_and_return()
    if z > 0 then
        while turtle.detectDown() do
            turtle.digDown()
            turtle.down()
            z = z - 1
        end
    else
        while turtle.detectUp() do
            turtle.digUp()
            turtle.up()
            z = z + 1
        end
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
        turtle.forward()
        dig_and_return()
    end
    turn()
    forward = not forward
end

for _ = 1, x do
    for _ = 1, x do
        dig_and_return()
        if not turtle.forward() then
            turtle.dig()
        end
    end
    turn_180()
end
