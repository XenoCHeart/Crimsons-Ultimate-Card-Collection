--- STEAMODDED HEADER
--- MOD_NAME: MurphyObv Banana
--- MOD_ID: MurphObvBanana
--- MOD_AUTHOR: [CrimsonHeart]
--- MOD_DESCRIPTION: This mod replaces Gros Michel with "Murphy's Law". [Texture Only]

----------------------------------------------
------------MOD CODE -------------------------

function SMODS.INIT.MurphObvBanana()
    sendDebugMessage("Initiating Murpy's Law")

    local MurphObvBanana = SMODS.findModByID("MurphObvBanana")
    local sprite_jkr = SMODS.Sprite:new("Joker", MurphObvBanana.path, "MurphBanana.png", 71, 95, "asset_atli")

    sprite_jkr:register()
end

----------------------------------------------
------------MOD CODE END----------------------