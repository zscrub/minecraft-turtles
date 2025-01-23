local x = 50

for i = 1, x do
    if not turtle.forward() then
        turtle.dig()
    end
end