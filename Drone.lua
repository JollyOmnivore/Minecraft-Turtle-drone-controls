rednet.open("left")
 
while(true) do
    id, msg, pro = rednet.receive()
    print(msg) 
    rednet.broadcast("received " .. msg .. " comand") 
    if(msg == "w") then
        turtle.forward()
    elseif(msg == "s") then 
        turtle.back()
    elseif(msg == "a") then
        turtle.turnLeft()
    elseif(msg == "d") then
        turtle.turnRight()
    elseif(msg ==  "dig") then
        turtle.dig()
    elseif(msg == "up")then
        turtle.up()
    elseif(msg == "down")then
        turtle.down()
    elseif(msg == "inspect")then
        os.setComputerLabel("inspecting")
        has_block, data = turtle.inspect()
        if has_block then
            print(textutils.serialise(data.name))
            rednet.broadcast("inspected" .. textutils.serialise(data.name))  
        else 
            rednet.broadcast("No Block Detected")
        end
    end
    
    
end
