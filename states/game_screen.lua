require 'globals'

local gameScreen = {}

local player = { x = 400, y = 300, size = 30, speed = 200 }

function gameScreen:enter()
    love.graphics.setBackgroundColor(0, 0, 1) -- Blue background
end

function gameScreen:draw()
    love.graphics.setColor(1, 1, 1) -- White color for the triangle
    love.graphics.polygon("fill", player.x, player.y, player.x - player.size, player.y + player.size, player.x + player.size, player.y + player.size)
end

function gameScreen:update(dt)
    if love.keyboard.isDown("a") then
        player.x = player.x - player.speed * dt
    end
    if love.keyboard.isDown("d") then
        player.x = player.x + player.speed * dt
    end
    if love.keyboard.isDown("w") then
        player.y = player.y - player.speed * dt
    end
    if love.keyboard.isDown("s") then
        player.y = player.y + player.speed * dt
    end
end

function gameScreen:keypressed(key)
    if key == "space" then
        Gamestate.switch(GameOverScreen)
    end
end

return gameScreen