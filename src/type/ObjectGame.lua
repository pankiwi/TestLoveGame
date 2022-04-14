local ObjectGame = class('ObjectGame')

ObjectGame.removeObject = false

function ObjectGame:init(...)
  
end
--for draw
function ObjectGame:draw()
  
end

--for update
function ObjectGame:update(dt)
  
end

function ObjectGame:drawDebug()
  
end

function ObjectGame:at(...)
  local obj = cloneObject(self)
  obj:init(...)
  
  obj:add()
end
--insert

function ObjectGame:add()
 --table.insert()
end

--remove

function ObjectGame:remove()
  self.removeObject = true
end

return ObjectGame
