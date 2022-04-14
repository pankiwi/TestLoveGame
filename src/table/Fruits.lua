Fruits = {}

function Fruits:update(dt)
  for index, fruit in ipairs(Fruits) do
    if fruit.update then
    fruit:update(dt)
    end
  end
  
  local i = #Fruits
  while i > 0 do
    if Fruits[i].removeObject then
    table.remove(Fruits, i)
    end
    
    i = i - 1
  end
end

function Fruits:draw()
  for index, fruit in ipairs(Fruits) do
    fruit:draw()
    
    if(debug)then 
    fruit:drawDebug()
    end
  end
end
