--[[
    GD50
    Legend of Zelda

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

PlayerIdleState = Class{__includes = EntityIdleState}

function PlayerIdleState:enter(params)
    
    -- render offset for spaced character sprite (negated in render function of state)
    self.entity.offsetY = 5
    self.entity.offsetX = 0
end

function PlayerIdleState:update(dt)
    if (love.keyboard.isDown('left') or love.keyboard.isDown('right') or
       love.keyboard.isDown('up') or love.keyboard.isDown('down')) then
        if self.entity.hasPot == false then
            self.entity:changeState('walk')
        end
        if self.entity.hasPot == true then
            self.entity:changeState('walk-with-pot')
        end
    end

    if love.keyboard.wasPressed('space') and self.entity.hasPot == false then
        self.entity:changeState('swing-sword')
    end

    if love.keyboard.wasPressed('space') and self.entity.hasPot == true then
        self.entity.potThrown = true
        self.entity.hasPot = false
    end
end