--- STEAMODDED HEADER
--- MOD_NAME: Crimson's Extreme Deck
--- MOD_ID: ExtremeDeck
--- MOD_AUTHOR: [Crimson Heart]
--- MOD_DESCRIPTION: A challenge deck where you only have 1 hand to play and 1 discard.

----------------------------------------------
------------MOD CODE -------------------------

function SMODS.INIT.ExtremeDeck()
local ch_Extreme_art = SMODS.findModByID("ExtremeDeck")

local sprite_centers = SMODS.Sprite:new("centers", ch_Extreme_art.path, "Enhancers.png", 71, 95, "asset_atli")
sprite_centers:register()


local loc_def = {
    ["name"] = "Extreme Deck",
    ["text"] = {
        [1] = "{C:blue}1{} hand",
        [2] = "{C:red}1{} discard",
    },

}

local ExtremeDeck = SMODS.Deck:new("Extreme Deck", "ch_Extreme", {ExtremeEffect = true, hands = -3, discards = -2}, {x = 0, y = 5}, loc_def)
ExtremeDeck:register()
end
----------------------------------------------
------------MOD CODE END----------------------
