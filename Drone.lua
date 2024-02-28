turtle.refuel()  
rednet.open("left")
 
while(true) do
    id, msg, pro = rednet.receive()
    print(msg) 
    rednet.broadcast("received " .. msg .. " comand") 
    if(msg =="w") then
        turtle.forward()
    elseif(msg == "s") then 
        turtle.back()
    elseif(msg == "a") then
        turtle.turnLeft()
    elseif(msg == "d") then
        turtle.turnRight()
    elseif(msg == "dig") then
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
            rednet.broadcast(textutils.serialise(data.name))  
        else 
            rednet.broadcast("No Block Detected")
        end
    elseif(msg == "Hello") then 
        os.setComputerLabel("Hello")  
    elseif(msg == "digUp") then 
        turtle.digUp()
    elseif(msg == "digDown") then
        turtle.digDown()
    elseif(msg == "reFuel") then
        turtle.refuel(1)
    elseif(msg == "attack") then
        turtle.attack()
    elseif(msg == "clearlabel") then
        os.setComputerLabel("")
        
    end
    
    
end
