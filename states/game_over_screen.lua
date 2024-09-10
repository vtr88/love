require 'globals'

local gameOverScreen = {}

function gameOverScreen:enter()
    love.graphics.setBackgroundColor(1, 0, 0) -- Red background
end

function gameOverScreen:draw()
    love.graphics.setColor(1, 1, 1) -- White text
    love.graphics.printf("Game Over! Press Enter to go back to Start Screen", 0, love.graphics.getHeight() / 2 - 10, love.graphics.getWidth(), "center")
end

function gameOverScreen:keypressed(key)
    if key == "return" then
        Gamestate.switch(StartScreen)
    end
end

return gameOverScreen