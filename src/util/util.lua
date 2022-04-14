--module
function cloneObject(obj)
  local clone = {}
  setmetatable(clone, obj)
  obj.__index = obj
  return clone
end

function withOn(width1, height1, x1, y1, width2, height2, x2, y2)
  if(x1 < x2 + width2 and x1 + width1 > x2 and y1 < y2 + height2 and x1 + height1 > x2) then
    return true
  end 
  return false
end

function toRadians(number)
  return number * math.pi/180
end

function toDegree(number)
  return number * 180/math.pi
end

function randomSelection(any, any2, change)
  if(math.random() < change)then
    return any
  else
    return any2
  end
 end
