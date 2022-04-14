--module
local SourceAtlas = class("SourceAtlas")

function SourceAtlas:initialize(spriteError)
  self.atlas = {}
  self.default = spriteError
end

function SourceAtlas:getDefault()
  return self.default
end

function SourceAtlas:add(name, sprite)
  self.atlas[name] = sprite
  
  logger:info("Atlas load" .. name .. tostring(self.atlas[name] ~= nil))
end

function SourceAtlas:get(name)
  return self.atlas[name] or self.default
end


function SourceAtlas:load(fileAtlas)
  local data = require(fileAtlas)
  
  for index, dataSprite in pairs(data) do
    self:add(dataSprite.name, love.graphics.newImage(dataSprite.path))
  end
end

return SourceAtlas
