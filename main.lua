local HC = require "HC"
local STI = require "STI/sti"

STI.path = "maps/"


function love.load()
  windowWidth  = love.graphics.getWidth()
  windowHeight = love.graphics.getHeight()

  love.physics.setMeter(16)
  map=STI("maps/testmap.lua",{"box2d"})
  world = love.physics.newWorld(0, 0)
  map:box2d_init(world)
  map:addCustomLayer("Sprite Layer", 3)

end

function love.update(dt)
  map:update(dt)

end

function love.draw()
map:setDrawRange(0,0,windowWidth,windowHeight)

map:draw()

love.graphics.setColor(255, 255, 255, 255)

end
