local Fruit = require("src/class/Fruit")

Berry = Fruit:new({
  sprite = atlas:get("berry"),
  createPhysics = function (x, y, rotation)
    local physics = world:newBSGRectangleCollider(x, y, 20, 18, 3)
    physics:setCollisionClass('Fruit')
    physics:setAngle(rotation)
    return physics
  end
})

