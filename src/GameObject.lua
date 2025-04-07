--[[
    GD50
    Legend of Zelda

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

GameObject = Class{}

function GameObject:init(def, x, y)
    
    -- string identifying this object type
    self.type = def.type

    self.texture = def.texture
    self.frame = def.frame or 1

    -- whether it acts as an obstacle or not
    self.solid = def.solid

    self.defaultState = def.defaultState
    self.state = self.defaultState
    self.states = def.states

    -- dimensions
    self.x = x
    self.y = y
    self.width = def.width
    self.height = def.height

    self.throwSpeed = 0
    self.throwDirection = 'down'

    self.consumed = false

    self.initX = 0
    self.initY = 0

    -- default empty collision callback
    self.onCollide = function() end
    
    self.onPickup = function() end
end

function GameObject:update(dt)
    if self.throwDirection == 'left' then
        self.x = self.x - self.throwSpeed
    end
    if self.throwDirection == 'right' then
        self.x = self.x + self.throwSpeed
    end
    if self.throwDirection == 'up' then
        self.y = self.y - self.throwSpeed
    end
    if self.throwDirection == 'down' then
        self.y = self.y + self.throwSpeed
    end
end

function GameObject:render(adjacentOffsetX, adjacentOffsetY)
    love.graphics.draw(gTextures[self.texture], gFrames[self.texture][self.states[self.state].frame or self.frame],
        self.x + adjacentOffsetX, self.y + adjacentOffsetY)
end