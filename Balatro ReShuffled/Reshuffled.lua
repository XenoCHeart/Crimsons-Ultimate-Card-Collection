--- STEAMODDED HEADER
--- MOD_NAME: Balatro Re;Shuffled
--- MOD_ID: Reshuffled
--- MOD_AUTHOR: [CrimsonHeart, The Balatro Discord]
--- MOD_DESCRIPTION: A "Games Repainted" Inspired mod that changes every texture

----------------------------------------------
------------MOD CODE -------------------------

function SMODS.INIT.Reshuffled()
    sendDebugMessage("Reshuffled")

    local Reshuffled = SMODS.findModByID("Reshuffled")

    local sprite_booster = SMODS.Sprite:new('Booster', Reshuffled.path, 'RS-Boosters.png', 71,95, "asset_atli")



    local sprite_jkr = SMODS.Sprite:new("Joker", Reshuffled.path, "RS-Jokers.png", 71, 95, "asset_atli")
    local sprite_cards_1 = SMODS.Sprite:new('cards_1', Reshuffled.path, 'RS-8BitDeck.png', 71, 95, 'asset_atli')
    local sprite_enhancers = SMODS.Sprite:new('centers', Reshuffled.path, 'RS-Enhancers.png', 71, 95, 'asset_atli')
    local sprite_tarot = SMODS.Sprite:new('Tarot', Reshuffled.path, 'RS-Tarots.png', 71, 95, 'asset_atli')
    local sprite_vouchers = SMODS.Sprite:new('Voucher', Reshuffled.path, 'RS-Vouchers.png', 71, 95, 'asset_atli')
    local sprite_cards_2 = SMODS.Sprite:new('cards_2', Reshuffled.path, 'RS-8BitDeck_opt2.png', 71, 95, 'asset_atli')
    local sprite_blind_chips = SMODS.Sprite:new('blind_chips', Reshuffled.path, 'RS-BlindChips.png', 34, 34, "animation_atli", 21)
    local sprite_tags = SMODS.Sprite:new('tags', Reshuffled.path, 'RS-tags.png', 34, 34, "asset_atli")
    local sprite_chips = SMODS.Sprite:new('chips', Reshuffled.path, 'RS-chips.png', 29, 29, "asset_atli")
    local sprite_stickers = SMODS.Sprite:new('stickers', Reshuffled.path, 'RS-stickers.png', 71, 95, "asset_atli")
    local sprite_Balatro = SMODS.Sprite:new('balatro', Reshuffled.path, 'balatro.png', 333, 216, "asset_atli")


    sprite_jkr:register()
    sprite_cards_1:register()
    sprite_cards_2:register()
    sprite_enhancers:register()
    sprite_tarot:register()
    sprite_vouchers:register()
    sprite_blind_chips:register()
    sprite_Balatro:register()




    sprite_chips:register()    
    sprite_stickers:register()
    sprite_tags:register()
    sprite_booster:register()


end
----------------------------------------------
------------MOD CODE END----------------------