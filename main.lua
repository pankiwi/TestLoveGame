function love.load()
  require("src/initGame")
  initGame()
  
  logger:info("all is load")
  logger:info("DEBUG: " .. tostring(debug))
  logger:info("Canvas width:" .. widthScreen .. " height:" .. heightScreen)

end

function love.draw()
  Fruits:draw()
  
  if(debug) then
  local fpsText = "FPS: "..tostring(love.timer.getFPS())
  love.graphics.print(fpsText, 0, 0)
  
  world:draw()
  end
end

function love.update(dt)
  world:update(dt)
  Fruits:update(dt)
end

function love.touchreleased(id, x, y, dx, dy, pressure)
  if(withOn(20, 20, 0, 0, 1, 1, x, y))then
    debug = not debug
    logger:info("DEBUG: " .. tostring(debug))
  else
    Berry:at(x, y, math.random(360))
  end
end
--h