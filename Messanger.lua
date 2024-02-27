rednet.open("back")
while(true) do
msg = io.read()
    if(msg == "inspect") then
        rednet.broadcast(msg)
        id,response, pro = rednet.receive(3)
        print(response)  
        id ,response, pro = rednet.receive(3)
        print(response) 
    else 
        rednet.broadcast(msg)
        id,response, pro = rednet.receive(3)
        
    end  
         
end

 
