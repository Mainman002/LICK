
lick = require "lick"
lick.reset = true -- reload the love.load everytime you save

function love.load()
    circle = {}
    circle.x = 1

    Font = love.graphics.newFont("Peralta-Regular.ttf", 18)
end

function love.update(dt)
    circle.x = circle.x + dt*1
end

function love.draw(dt)

    love.graphics.setColor(255, 255, 255, 255)
    love.graphics.setFont(Font)
    love.graphics.print("LÖVE2D", 270, 400, 0, 3, 3)

    love.graphics.setColor(255, 255, 255, 255)
    love.graphics.circle("fill", 400+100*math.sin(circle.x), 300, 24, 6)
    love.graphics.circle("line", 400+100*math.sin(circle.x), 300, 45, 6)
    love.graphics.circle("line", 400+100*math.sin(circle.x), 300, 80, 6)
end

