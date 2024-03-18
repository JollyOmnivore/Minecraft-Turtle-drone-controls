
block = "[Inspect]"
rednet.open("back")

function drawdesk()
deskImage = paintutils.loadImage("background.nfp")
paintutils.drawImage(deskImage, 1,1)
drawmenu()
forward()
backward()
turnRightAndLeft()
dig()
refuel()
upAndDown()
attack()
inspect()
end

function drawmenu()
term.setBackgroundColor(colors.black)
term.setCursorPos(8,8)
term.clearLine()
print("[Say hello]")
end

function forward()
term.setBackgroundColor(colors.black)
term.setCursorPos(9,9)
term.clearLine()
print("[Forward]")
end
function backward()
term.setBackgroundColor(colors.black)
term.setCursorPos(9,11)
term.clearLine()
print("[Backward]")
end
function turnRightAndLeft()
term.setBackgroundColor(colors.black)
term.setCursorPos(2,10)
term.clearLine()
print("[Turn Left] [Turn Right]")
end
function dig()
term.setBackgroundColor(colors.black)
term.setCursorPos(1,13)
term.clearLine()
print("[Dig] [Dig Down] [Dig Up]")
end

function refuel()
term.setBackgroundColor(colors.black)
term.setCursorPos(1,17)
term.clearLine()
print("[ReFuel]")
end

function upAndDown()
term.setBackgroundColor(colors.black)
term.setCursorPos(8,12)
term.clearLine()
print("[Up] [Down]")
end
function attack()
term.setBackgroundColor(colors.black)
term.setCursorPos(10,14)
term.clearLine()
print("[Attack]")
end
function inspect()
term.setBackgroundColor(colors.black)
term.setCursorPos(1,15)
term.clearLine()
print(block)
end
function showBlockName(name)
term.setBackgroundColor(colors.green)
term.setCursorPos(1,16)
term.clearLine()
print(name)
end


function menu()
end


function main()
event, button, x, y = os.pullEvent("mouse_click")
    if button == 1 then
        if y==8 and x>=8 and x<=19 then
          rednet.broadcast("Hello")
        elseif y==9 and x>=9 and x<=18 then 
          rednet.broadcast("w")
        elseif y== 11 and x>=9 and x<=19 then
          rednet.broadcast("s")
        elseif y==10 and x>=2 and x<=12 then 
          rednet.broadcast("a")
        elseif y==10 and x>=14 and x<=25 then
          rednet.broadcast("d")
        elseif y==13 and x>=1 and x<=5 then          
           rednet.broadcast("dig")
        elseif y==13 and x>=17 and x<=25 then
          rednet.broadcast("digUp")
        elseif y==13 and x>=7 and x<=15 then
          rednet.broadcast("digDown")
        elseif y==17 and x>=1 and x<=8 then
          rednet.broadcast("reFuel") 
        elseif y == 12 and x>=8 and x<=11 then
          rednet.broadcast("up")
        elseif y==12 and x>=13 and x<=18 then
          rednet.broadcast("down")
        elseif y==14 and x>=10 and x<=18 then 
          rednet.broadcast("attack")
        elseif y==15 and x>=1 and x<=9 then
          rednet.broadcast("inspect")
          id, data ,pro = rednet.receive(1)
          showBlockName(data)
          id, data ,pro = rednet.receive(1)
          showBlockName(data)
        end
    end
    
    
main()
end


drawdesk()
main()
