local ObjectGame = require("src/type/ObjectGame")

local Fruit = class("Fruit", ObjectGame)

function Fruit:initialize(conf)
  self.sprite = conf.sprite or atlas:getDefault()
  self.createPhysics = conf.createPhysics or function (x, y, rotation) end
end

function Fruit:init(x, y, rotation)
  self.physics = self.createPhysics(x, y, rotation)
end

function Fruit:draw()
  local x, y = self.physics:getPosition()
  local rotation = self.physics:getAngle()
  
  love.graphics.draw(self.sprite, x, y, rotation, nil, nil, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
end

function Fruit:drawDebug()
  
end

function Fruit:add()
  table.insert(Fruits, self)
end

return Fruit
