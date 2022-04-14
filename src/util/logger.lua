--module
local logger = class("logger")

function logger:initialize(name)
  self.LoggerNameFile = "log_game.txt"
  
  self:clear()
end

function logger:clear()
  love.filesystem.write(self.LoggerNameFile, "-- Logger Game --")
end


function logger:err(txt)
  self:print("\n[E]: " .. txt)
end

function logger:warn(txt)
  self:print("\n[W]: " .. txt)
end

function logger:info(txt)
  self:print("\n[I]: " .. txt)
end

function logger:print(txt)
  love.filesystem.append(self.LoggerNameFile, txt)
end

return logger
