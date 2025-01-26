utils = {}
utils.forward = true

function utils.turn()
    if forward then
        turtle.turnLeft()
    else
        turtle.turnRight()
    end
end

function utils.turn_180()
    utils.turn()
    if not turtle.forward() then
        turtle.forward()
    end
    utils.turn()
    utils.forward = not utils.forward
end