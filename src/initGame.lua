function initGame()
  --globals
  debug = false
  widthScreen, heightScreen = love.graphics.getDimensions()
  
  require("src/requireScripts")
  requireScripts()
  
  local lg = require("src/util/logger")
  logger = lg:new()
  
  local SourceAtlas = require("src/util/SourceAtlas")
  atlas = SourceAtlas:new(love.graphics.newImage("assets/error.png"))
  atlas:load("assets/load")
  
  local windfield = require("libs/windfield")
  world = windfield.newWorld(0, 250, false)
  
  world:addCollisionClass('Ignore', {ignores = {'Ignore'}})
  world:addCollisionClass('Fruit', {ignores = {'Ignore'}})
  world:addCollisionClass('Wall', {ignores = {'Ignore'}})
  
  require("src/content/Type")
  
  love.graphics.setBackgroundColor(105/255, 208/255, 238/255)
  love.graphics.setDefaultFilter("nearest", "nearest")
  
  createLimitScreen()
end


function createLimitScreen()
  createWall(0 - 10, 0, 20, heightScreen)
  createWall(widthScreen - 10, 0, 20, heightScreen)
  createWall(0, heightScreen - 10, widthScreen, 20)
end


function createWall(x, y, width, height)
  local wall = world:newRectangleCollider(x, y, width, height, {collision_class = "Wall"})
  wall:setType('static')
end
