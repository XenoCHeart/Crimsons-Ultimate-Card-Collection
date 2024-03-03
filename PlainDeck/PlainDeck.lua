--- STEAMODDED HEADER
--- MOD_NAME: Crimson's Plain Deck
--- MOD_ID: PlainDeck
--- MOD_AUTHOR: [Crimson Heart]
--- MOD_DESCRIPTION: Includes a deck with no special effects. 

----------------------------------------------
------------MOD CODE -------------------------

function SMODS.INIT.PlainDeck()
local ch_plain_art = SMODS.findModByID("PlainDeck")

local sprite_centers = SMODS.Sprite:new("centers", ch_plain_art.path, "Enhancers.png", 71, 95, "asset_atli")
sprite_centers:register()


local loc_def = {
    ["name"] = "Plain Deck",
    ["text"] = {
        [1] = "Base Deck",    
    },

}

local PlainDeck = SMODS.Deck:new("Plain Deck", "ch_plain", {my_deck_effect = true}, {x = 0, y = 5}, loc_def)
PlainDeck:register()
end
----------------------------------------------
------------MOD CODE END----------------------
