--[[
    GD50
    Legend of Zelda

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

GAME_OBJECT_DEFS = {
    ['switch'] = {
        type = 'switch',
        texture = 'switches',
        frame = 2,
        width = 16,
        height = 16,
        solid = false,
        defaultState = 'unpressed',
        states = {
            ['unpressed'] = {
                frame = 2
            },
            ['pressed'] = {
                frame = 1
            }
        }
    },
    ['heart'] = {
        type = 'consumable',
        texture = 'hearts',
        frame = 5,
        width = 16,
        height = 16,
        solid = false,
        defaultState = 'heart',
        states = {
            ['heart'] = {
                frame = 5
            }
        }
    },
    ['pot'] = {
        type = 'consumable',
        texture = 'tiles',
        frame = 14,
        width = 16,
        height = 16,
        solid = true,
        defaultState = 'pot',
        states = {
            ['pot'] = {
                frame = 14
            }
        }
    }
}