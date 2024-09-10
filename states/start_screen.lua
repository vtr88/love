require 'globals'

local startScreen = {}

function startScreen:draw()
    love.graphics.setBackgroundColor(0, 0, 0) -- Black background
    love.graphics.setColor(1, 1, 1) -- White text
    love.graphics.printf("Press Enter to Start Game", 0, love.graphics.getHeight() / 2 - 10, love.graphics.getWidth(), "center")
end

function startScreen:keypressed(key)
    if key == "return" then
        Gamestate.switch(GameScreen)
    end
end

return startScreen