while turtle.getFuelLevel() do
    local _, block_data = turtle.inspect()
    if block_data.name == "minecraft:chest" then
        utils.turn()
    end 
end

term.write("Turtle has ran out of fuel")