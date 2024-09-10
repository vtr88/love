if arg[2] == "debug" then
    require("lldebugger").start()
end

require 'globals'

StartScreen = require "states/start_screen"
GameScreen = require "states/game_screen"
GameOverScreen = require "states/game_over_screen"

function love.load()
    Gamestate.registerEvents()
    Gamestate.switch(StartScreen)
end