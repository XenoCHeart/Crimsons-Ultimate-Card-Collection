--- STEAMODDED HEADER
--- MOD_NAME: Ortalab
--- MOD_ID: Ortalab
--- PREFIX: ORT
--- MOD_AUTHOR: [Crimson Heart, Balatro Discord]
--- MOD_DESCRIPTION: Every action has an opposite reaction. In another world, in the nation of "Virtue", a simple indie developer created Ortalab, which so happened to be the opposite of our world's Balatro. This mod is intended to port everything from that parallel world to Balatro. Within this demo, it includes 40 Jokers and 3 decks for you to check out.
--- PRIORITY: 0
--- DISPLAY_NAME: Ortalab DEMO
--- BADGE_COLOUR: 990000
--- ICON_ATLAS: ORT_icon

----------------------------------------------
------------MOD CODE -------------------------

local loc_colour_ref = loc_colour
function loc_colour(_c, _default)
    loc_colour_ref(_c, _default) -- toss the return value, we don't need it

    -- Card Types

    G.ARGS.LOC_COLOURS['zodiac'] = HEX('9D3B35')
    G.ARGS.LOC_COLOURS['loteria'] = HEX('B77A91')
    G.ARGS.LOC_COLOURS['cryptid'] = HEX('704F72')

    -- Artist Colors
    G.ARGS.LOC_COLOURS['AlexArt'] = HEX('16db9d')
    G.ARGS.LOC_COLOURS['CheeseArt'] = HEX('a3a616')
    G.ARGS.LOC_COLOURS['CoroArt'] = HEX('9cb3e2')
    G.ARGS.LOC_COLOURS['CrimsonArt'] = HEX('990000')
    G.ARGS.LOC_COLOURS['FlareArt'] = HEX('fd5f55')
    G.ARGS.LOC_COLOURS['FlowweyArt'] = HEX('110663')
    G.ARGS.LOC_COLOURS['GappieArt'] = HEX('7BF2FF')
    G.ARGS.LOC_COLOURS['GoldDiscoArt'] = HEX('e6bb12')
    G.ARGS.LOC_COLOURS['KoszeTraweArt'] = HEX('4ecf21')
    G.ARGS.LOC_COLOURS['LoganArt'] = HEX('ffff00')
    G.ARGS.LOC_COLOURS['SaladArt'] = HEX('0AC400')


    return G.ARGS.LOC_COLOURS[_c] or _default or G.C.UI.TEXT_DARK -- recalculate result
end

--[[
    SMODS.Atlas({
    key = "ORT_icon",
    atlas = "ASSET_ATLAS",
    path = "ORT_icon.png",
    px = 34,
    py = 34
})
]]--

SMODS.Atlas({key = "Ortalab_Jokers", path = "Ortalab_Jokers.png", px = 71, py = 95, atlas_table = "ASSET_ATLAS"})

-- Jokers
local ortalab_jester = SMODS.Joker({
    name = "Jester",
    key = "jester",
    config = {extra = {chips = 25}},
    pos = {x = 0, y = 0},
    loc_txt = {
        name = 'Jester',
        text = {
            "{C:chips}+25{} Chips",
            "{C:inactive}(Artist: {C:CrimsonArt}Crimson Heart{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local generous_joker = SMODS.Joker({
    name = "Generous Joker",
    key = "generous_joker",
    config = {extra = {chips = 30, suit = 'Diamonds'}},
    pos = {x = 6, y = 1},
    loc_txt = {
        name = 'Generous Joker',
        text = {
            "Played cards with {C:diamonds}Diamond{} suit",
            "give {C:chips}+30{} Chips when scored",
            "{C:inactive}(Artist: {C:GoldDiscoArt}GoldenDiscoPig{}{C:inactive}, {C:FlareArt}Flare{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local chastful_joker = SMODS.Joker({
    name = "Chastful Joker",
    key = "chastful_joker",
    config = {extra = {chips = 30, suit = 'Hearts'}},
    pos = {x = 7, y = 1},
    loc_txt = {
        name = 'Chastful Joker',
        text = {
            "Played cards with {C:heartss}Heart{} suit",
            "give {C:chips}+30{} Chips when scored",
            "{C:inactive}(Artist: {C:GoldDiscoArt}GoldenDiscoPig{}{C:inactive}, {C:FlareArt}Flare{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local patient_joker = SMODS.Joker({
    name = "Patient Joker",
    key = "patient_joker",
    config = {extra = {chips = 30, suit = 'Spades'}},
    pos = {x = 8, y = 1},
    loc_txt = {
        name = 'Patient Joker',
        text = {
            "Played cards with {C:spades}Spade{} suit",
            "give {C:chips}+30{} Chips when scored",
            "{C:inactive}(Artist: {C:GoldDiscoArt}GoldenDiscoPig{}{C:inactive}, {C:FlareArt}Flare{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local abstemious_joker  = SMODS.Joker({
    name = "Abstemious Joker",
    key = "abstemious_joker",
    config = {extra = {chips = 30, suit = 'Clubs'}},
    pos = {x = 9, y = 1},
    loc_txt = {
        name = 'Patient Joker',
        text = {
            "Played cards with {C:clubs}Club{} suit",
            "give {C:chips}+30{} Chips when scored",
            "{C:inactive}(Artist: {C:GoldDiscoArt}GoldenDiscoPig{}{C:inactive}, {C:FlareArt}Flare{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local glum_joker  = SMODS.Joker({
    name = "Glum Joker",
    key = "glum_joker",
    config = {},
    pos = {x = 2, y = 0},
    loc_txt = {
        name = 'Glum Joker',
        text = {
            "{C:chips}+100{} Chips if played",
            "hand does not contain",
            "a {C:attention}Pair{}",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
            }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local serious_joker  = SMODS.Joker({
    name = "Serious Joker",
    key = "serious_joker",
    config = {},
    pos = {x = 3, y = 0},
    loc_txt = {
        name = 'Serious Joker',
        text = {
            "{C:chips}+80{} Chips if played",
            "hand does not contain",
            "a {C:attention}Three of a Kind{}",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local ORT_TEMP_MAD  = SMODS.Joker({
    name = "Ortalab Mad Joker",
    key = "ORT_TEMP_MAD",
    config = {},
    pos = {x = 4, y = 0},
    loc_txt = {
        name = 'Ortalab Mad Joker',
        text = {
            "{C:chips}+80{} Chips if played",
            "hand does not contain",
            "a {C:attention}Two Pair{}",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local ORT_TEMP_CRAZY  = SMODS.Joker({
    name = "Ortalab Crazy Joker",
    key = "ORT_TEMP_CRAZY",
    config = {},
    pos = {x = 5, y = 0},
    loc_txt = {
        name = 'Ortalab Crazy Joker',
        text = {
            "{C:chips}+50{} Chips if played",
            "hand does not contain",
            "a {C:attention}Straight{}",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local gnomic_joker  = SMODS.Joker({
    name = "Gnomic Joker",
    key = "Gnomic_joker",
    config = {},
    pos = {x = 6, y = 0},
    loc_txt = {
        name = 'Gnomic Joker',
        text = {
            "{C:chips}+50{} Chips if played",
            "hand does not contain",
            "a {C:attention}Flush{}",
            "{C:inactive}(Artist: {C:CheeseArt}Agentcheese{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local ORT_TEMP_SLY  = SMODS.Joker({
    name = "Ortalab Sly Joker",
    key = "ORT_TEMP_SLY",
    config = {},
    pos = {x = 0, y = 14},
    loc_txt = {
        name = 'Ortalab Sly Joker',
        text = {
            "{C:mult}+12{} Mult if played",
            "hand does not contain",
            "a {C:attention}Pair{}",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local ORT_TEMP_WILY  = SMODS.Joker({
    name = "Ortalab Wily Joker",
    key = "ORT_TEMP_WILY",
    config = {},
    pos = {x = 1, y = 14},
    loc_txt = {
        name = 'Ortalab Wily Joker',
        text = {
            "{C:mult}+10{} Mult if played",
            "hand does not contain",
            "a {C:attention}Three of a Kind{}",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local ORT_TEMP_CLEVER  = SMODS.Joker({
    name = "Ortalab Clever Joker",
    key = "ORT_TEMP_CLEVER",
    config = {},
    pos = {x = 2, y = 14},
    loc_txt = {
        name = 'Ortalab Clever Joker',
        text = {
            "{C:mult}+10{} Mult if played",
            "hand does not contain",
            "a {C:attention}Two Pair{}",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local ORT_TEMP_DEVIOUS  = SMODS.Joker({
    name = "Ortalab Devious Joker",
    key = "ORT_TEMP_DEVIOUS",
    config = {},
    pos = {x = 3, y = 14},
    loc_txt = {
        name = 'Ortalab Devious Joker',
        text = {
            "{C:mult}+8{} Mult if played",
            "hand does not contain",
            "a {C:attention}Straight{}",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local ORT_TEMP_CRAFTY  = SMODS.Joker({
    name = "Ortalab Crafty Joker",
    key = "ORT_TEMP_CRAFTY",
    config = {},
    pos = {x = 4, y = 14},
    loc_txt = {
        name = 'Ortalab Crafty Joker',
        text = {
            "{C:mult}+8{} Mult if played",
            "hand does not contain",
            "a {C:attention}Flush{}",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local other_half_joker  = SMODS.Joker({
    name = "Other Half Joker",
    key = "other_half_joker",
    config = {},
    pos = {x = 7, y = 0},
    loc_txt = {
        name = 'Other Half Joker',
        text = {
            "{C:chips}+150{} Chips if played",
            "hand contains",
            "{C:attention}3{} or fewer cards",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local joker_cutout  = SMODS.Joker({
    name = "Joker Cutout",
    key = "joker_cutout",
    config = {},
    pos = {x = 2, y = 5},
    loc_txt = {
        name = 'Joker Cutout',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local polydactyly  = SMODS.Joker({
    name = "Polydactyly",
    key = "polydactyly",
    config = {},
    pos = {x = 6, y = 6},
    loc_txt = {
        name = 'Polydactyly',
        text = {
            "If played hand contains a {C:attention}Straight{} ",
            "or a {C:attention}Flush{},",
            "Trigger all held in hand", 
            "effects of played cards",
            "{C:inactive}(Artist: {C:inactive}Emerel{}{C:inactive},{} {C:inactive}Grassy{){C:inactive}){}"
        }  
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local wallet  = SMODS.Joker({
    name = "Wallet",
    key = "wallet",
    config = {},
    pos = {x = 4, y = 1},
    loc_txt = {
        name = 'Wallet',
        text = {
            "Held in hand abilities have a",
            "{C:green} 1 in 2 chance{}",
            "to trigger without", 
            "meeting conditions",
            "{C:inactive}(Artist: {C:inactive}Eremel{}{C:inactive}){}"
        }

        
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local bank_loan  = SMODS.Joker({
    name = "Bank Loan",
    key = "bank_loan",
    config = {},
    pos = {x = 5, y = 1},
    loc_txt = {
        name = 'Bank Loan',
        text = {
            "{C:money}+$20{}",
            "{C:red} -$20 sell value{}",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local revolver  = SMODS.Joker({
    name = "Revolver",
    key = "revolver",
    config = {},
    pos = {x = 5, y = 5},
    loc_txt = {
        name = 'Revolver',
        text = {
        "When {C:attention}Blind{} is selected,",
        "destroy the leftmost Joker",
        "and permanently add {C:attention}quintuple",
        "its sell value to this {C:blue}Chips",
        "{C:inactive}(Currently {C:blue}+XX{C:inactive} Chips)",
        "{C:inactive}(Artist: {C:GappieArt}Gappie{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local graffiti  = SMODS.Joker({
    name = "Graffiti",
    key = "graffiti",
    config = {},
    pos = {x = 1, y = 2},
    loc_txt = {
        name = 'Graffiti',
        text = {
            "{C:mult}+#1#{} Mult",
            "per hand remaining",
            "{C:inactive}(Currently {C:mult}+#2#{} Mult){}",
            "{C:inactive}(Artist: {C:FlareArt}Flare{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 5,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local memorial  = SMODS.Joker({
    name = "Memorial",
    key = "memorial",
    config = {},
    pos = {x = 2, y = 2},
    loc_txt = {
        name = 'Memorial',
        text = {
        "Create a death tarot card if hand is played while at maximum discards",
        "{C:inactive}(Artist: {C:FlareArt}Flare{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 5,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local stonehenge  = SMODS.Joker({
    name = "Stonehenge",
    key = "stonehenge",
    config = {},
    pos = {x = 3, y = 2},
    loc_txt = {
        name = 'Stonehenge',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local joker_miles_card  = SMODS.Joker({
    name = "Joker Miles Card",
    key = "joker_miles_card",
    config = {},
    pos = {x = 4, y = 2},
    loc_txt = {
        name = 'Joker Miles Card',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local bbss  = SMODS.Joker({
    name = "Bowling Ball Solar System",
    key = "bbss",
    config = {},
    pos = {x = 0, y = 5},
    loc_txt = {
        name = 'Bowling Ball Solar System',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local artist_proof  = SMODS.Joker({
    name = "Artist Proof",
    key = "artist_proof",
    config = {},
    pos = {x = 6, y = 2},
    loc_txt = {
        name = 'Artist Proof',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local dawn  = SMODS.Joker({
    name = "Dawn",
    key = "dawn",
    config = {},
    pos = {x = 4, y = 7},
    loc_txt = {
        name = 'Dawn',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local open_palm  = SMODS.Joker({
    name = "Open Palm",
    key = "open_palm",
    config = {},
    pos = {x = 8, y = 2},
    loc_txt = {
        name = 'Open Palm',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local business_joker  = SMODS.Joker({
    name = "Business Joker",
    key = "business_joker",
    config = {},
    pos = {x = 1, y = 0},
    loc_txt = {
        name = 'Business Joker',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local collatz_conjecture  = SMODS.Joker({
    name = "Collatz Conjecture",
    key = "collatz_conjecture",
    config = {},
    pos = {x = 1, y = 5},
    loc_txt = {
        name = 'Collatz Conjecture',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local rusty_joker  = SMODS.Joker({
    name = "Rusty Joker",
    key = "rusty_joker",
    config = {},
    pos = {x = 7, y = 2},
    loc_txt = {
        name = 'Rusty Joker',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local scared_face  = SMODS.Joker({
    name = "Scared Face",
    key = "scared_face",
    config = {},
    pos = {x = 2, y = 3},
    loc_txt = {
        name = 'Scared Face',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local art_gallery  = SMODS.Joker({
    name = "Art Gallery",
    key = "art_gallery",
    config = {},
    pos = {x = 3, y = 3},
    loc_txt = {
        name = 'Art Gallery',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local instant_gratification  = SMODS.Joker({
    name = "Instant Gratification",
    key = "instant_gratification",
    config = {},
    pos = {x = 4, y = 3},
    loc_txt = {
        name = 'Instant Gratification',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local crowd_pleaser  = SMODS.Joker({
    name = "Crowd Pleaser",
    key = "crowd_pleaser",
    config = {},
    pos = {x=5,y=2},
    loc_txt = {
        name = 'Crowd Pleaser',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local hypercalculia  = SMODS.Joker({
    name = "Hypercalculia",
    key = "hypercalculia",
    config = {},
    pos = {x=6,y=3},
    loc_txt = {
        name = 'Hypercalculia',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local taliaferro  = SMODS.Joker({
    name = "Taliaferro",
    key = "taliaferro",
    config = {},
    pos = {x=7,y=6},
    loc_txt = {
        name = 'Taliaferro',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local sable_mable  = SMODS.Joker({
    name = "Sable Mable",
    key = "sable_mable",
    config = {},
    pos = {x=8,y=3},
    loc_txt = {
        name = 'Sable Mable',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local pitch_mitch  = SMODS.Joker({
    name = "Pitch Mitch",
    key = "pitch_mitch",
    config = {},
    pos = {x=9,y=3},
    loc_txt = {
        name = 'Pitch Mitch',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local dropout  = SMODS.Joker({
    name = "Dropout",
    key = "dropout",
    config = {},
    pos = {x=0,y=4},
    loc_txt = {
        name = 'Dropout',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local scratch_card  = SMODS.Joker({
    name = "Scratch Card",
    key = "scratch_card",
    config = {},
    pos = {x=1,y=4},
    loc_txt = {
        name = 'Scratch Card',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local protostar  = SMODS.Joker({
    name = "Protostar",
    key = "protostar",
    config = {},
    pos = {x=2,y=4},
    loc_txt = {
        name = 'Protostar',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local crash_the_bus  = SMODS.Joker({
    name = "Crash the Bus",
    key = "crash_the_bus",
    config = {},
    pos = {x=1,y=6},
    loc_txt = {
        name = 'Crash the Bus',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local skydiving  = SMODS.Joker({
    name = "Skydiving",
    key = "skydiving",
    config = {},
    pos = {x=3,y=5},
    loc_txt = {
        name = 'Skydiving',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local sunny_side_up  = SMODS.Joker({
    name = "Sunny Side Up",
    key = "sunny_side_up",
    config = {},
    pos = {x = 0, y = 10},
    loc_txt = {
        name = 'Sunny Side Up',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local policeman  = SMODS.Joker({
    name = "Policeman",
    key = "policeman",
    config = {},
    pos = {x = 1, y = 10},
    loc_txt = {
        name = 'Policeman',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local whiteboard  = SMODS.Joker({
    name = "Whiteboard",
    key = "whiteboard",
    config = {},
    pos = {x = 2, y = 10},
    loc_txt = {
        name = 'Whiteboard',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local driver  = SMODS.Joker({
    name = "Driver",
    key = "driver",
    config = {},
    pos = {x = 3, y = 10},
    loc_txt = {
        name = 'Driver',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local waffle_cone  = SMODS.Joker({
    name = "Waffle Cone",
    key = "waffle_cone",
    config = {},
    pos = {x = 4, y = 10},
    loc_txt = {
        name = 'Waffle Cone',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local virus  = SMODS.Joker({
    name = "Virus",
    key = "virus",
    config = {},
    pos = {x = 5, y = 10},
    loc_txt = {
        name = 'Virus',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local miracle_cure  = SMODS.Joker({
    name = "Miracle Cure",
    key = "miracle_cure",
    config = {},
    pos = {x = 6, y = 10},
    loc_txt = {
        name = 'Miracle Cure',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local yellow_joker  = SMODS.Joker({
    name = "Yellow Joker",
    key = "yellow_joker",
    config = {},
    pos = {x = 7, y = 10},
    loc_txt = {
        name = 'Yellow Joker',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local common_sense  = SMODS.Joker({
    name = "Common Sense",
    key = "common_sense",
    config = {},
    pos = {x = 8, y = 10},
    loc_txt = {
        name = 'Common Sense',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local shrine  = SMODS.Joker({
    name = "Shrine",
    key = "shrine",
    config = {},
    pos = {x = 9, y = 10},
    loc_txt = {
        name = 'Shrine',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local biker  = SMODS.Joker({
    name = "Biker",
    key = "biker",
    config = {},
    pos = {x = 0, y = 11},
    loc_txt = {
        name = 'Biker',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local mathmagician  = SMODS.Joker({
    name = "Mathmagician",
    key = "mathmagician",
    config = {},
    pos = {x = 1, y = 11},
    loc_txt = {
        name = 'Mathmagician',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local purple_joker  = SMODS.Joker({
    name = "Purple Joker",
    key = "purple_joker",
    config = {},
    pos = {x = 2, y = 11},
    loc_txt = {
        name = 'Purple Joker',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local ort_temp_superposition  = SMODS.Joker({
    name = "Ortalab Superposition",
    key = "ort_temp_superposition",
    config = {},
    pos = {x = 3, y = 11},
    loc_txt = {
        name = 'Ortalab Superposition',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local blacklist  = SMODS.Joker({
    name = "Blacklist",
    key = "blacklist",
    config = {},
    pos = {x = 4, y = 11},
    loc_txt = {
        name = 'Blacklist',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local royal_gala  = SMODS.Joker({
    name = "Royal Gala",
    key = "royal_gala",
    config = {},
    pos = {x = 5, y = 11},
    loc_txt = {
        name = 'Royal Gala',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local croupier  = SMODS.Joker({
    name = "Croupier",
    key = "croupier",
    config = {},
    pos = {x = 6, y = 11},
    loc_txt = {
        name = 'Croupier',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local blue_card  = SMODS.Joker({
    name = "Blue Card",
    key = "blue_card",
    config = {},
    pos = {x = 7, y = 11},
    loc_txt = {
        name = 'Blue Card',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local attached  = SMODS.Joker({
    name = "Attached",
    key = "attached",
    config = {},
    pos = {x = 8, y = 11},
    loc_txt = {
        name = 'Attached',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local triangle_joker  = SMODS.Joker({
    name = "Triangle Joker",
    key = "triangle_joker",
    config = {},
    pos = {x = 9, y = 11},
    loc_txt = {
        name = 'Triangle Joker',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local slot_machine  = SMODS.Joker({
    name = "Slot Machine",
    key = "slot_machine",
    config = {},
    pos = {x = 0, y = 12},
    loc_txt = {
        name = 'Slot Machine',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local street_rat  = SMODS.Joker({
    name = "Street Rat",
    key = "street_rat",
    config = {},
    pos = {x = 1, y = 12},
    loc_txt = {
        name = 'Street Rat',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local belmont  = SMODS.Joker({
    name = "Belmont",
    key = "belmont",
    config = {},
    pos = {x = 2, y = 12},
    loc_txt = {
        name = 'Belmont',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local scenic_route  = SMODS.Joker({
    name = "Scenic Route",
    key = "scenic_route",
    config = {},
    pos = {x = 3, y = 12},
    loc_txt = {
        name = 'Scenic Route',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local mirage  = SMODS.Joker({
    name = "Mirage",
    key = "mirage",
    config = {},
    pos = {x = 4, y = 12},
    loc_txt = {
        name = 'Mirage',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local head_honcho  = SMODS.Joker({
    name = "Head Honcho",
    key = "head_honcho",
    config = {},
    pos = {x = 5, y = 12},
    loc_txt = {
        name = 'Head Honcho',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local peasant  = SMODS.Joker({
    name = "Peasant",
    key = "peasant",
    config = {},
    pos = {x = 6, y = 12},
    loc_txt = {
        name = 'Peasant',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local storm_6  = SMODS.Joker({
    name = "Storm 6",
    key = "storm_6",
    config = {},
    pos = {x = 7, y = 12},
    loc_txt = {
        name = 'Storm 6',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local afterburner  = SMODS.Joker({
    name = "Afterburner",
    key = "afterburner",
    config = {},
    pos = {x = 8, y = 12},
    loc_txt = {
        name = 'Afterburner',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local foundation  = SMODS.Joker({
    name = "Foundation",
    key = "foundation",
    config = {},
    pos = {x = 9, y = 12},
    loc_txt = {
        name = 'Foundation',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local beyond_the_mask  = SMODS.Joker({
    name = "Beyond The Mask",
    key = "beyond_the_mask",
    config = {},
    pos = {x = 0, y = 13},
    loc_txt = {
        name = 'Beyond The Mask',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local ort_temp_luchador  = SMODS.Joker({
    name = "Ortalab Luchador",
    key = "ort_temp_luchador",
    config = {},
    pos = {x = 1, y = 13},
    loc_txt = {
        name = 'Ortalab Luchador',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local chain_mail  = SMODS.Joker({
    name = "Chain Mail",
    key = "chain_mail",
    config = {},
    pos = {x = 2, y = 13},
    loc_txt = {
        name = 'Chain Mail',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local black_friday  = SMODS.Joker({
    name = "Black Friday",
    key = "black_friday",
    config = {},
    pos = {x = 3, y = 13},
    loc_txt = {
        name = 'Black Friday',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local fine_wine  = SMODS.Joker({
    name = "Fine Wine",
    key = "fine_wine",
    config = {},
    pos = {x = 4, y = 13},
    loc_txt = {
        name = 'Fine Wine',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

local sedimentation  = SMODS.Joker({
    name = "Sedimentation",
    key = "sedimentation",
    config = {},
    pos = {x = 5, y = 13},
    loc_txt = {
        name = 'Sedimentation',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})


local ort_temp_fortune_teller  = SMODS.Joker({
    name = "Ortalab Fortune Teller",
    key = "ort_temp_fortune_teller",
    config = {},
    pos = {x=7,y=5},
    loc_txt = {
        name = 'Ortalab Fortune Teller',
        text = {
            " ",
            "{C:inactive}(Artist: {C:inactive}INSERT HERE{}{C:inactive}){}"
        }
    },
    rarity = 1,
    cost = 1,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    atlas = "Ortalab_Jokers",
})

















-- Consumable Collections

local test_c = SMODS.Consumable{
    set = "Ortalab_Zodiac",
    name = "Ortalab Zodiac",
    key = "ortalab_zodiac",
    loc_txt = {
        name = "Ortalab_Zodiac",
        text = {
            "This is a test consumeable",
        },
    },
    atlas = 'Tarot',
    raw_atlas_key = true,
    unlocked = true,
    discovered = false,
    pos = { x = 0, y = 0 },
    cost = 3,
    config = {},
    dependencies = {'MoreSpeed'}
}

SMODS.ConsumableType{
    key = "Ortalab_Loteria",
    primary_colour = HEX('B77A91'),
    secondary_colour = HEX('B77A91'),
    collection_rows = { 6, 6 },
    loc_txt = {
        name = 'Ortalab Loteria',
        collection = 'Loteria Cards',
        label = 'Test B',
        undiscovered = {
            name = 'Not Discovered',
            text = {
                "Purchase or use",
                "this card in a",
                "seeded run to",
                "learn what it does"
            }
        }
    },
    shop_rate = 0,
    default = test_c.key
}

SMODS.ConsumableType{
    key = "Ortalab_Zodiac",
    primary_colour = HEX('9D3B35'),
    secondary_colour = HEX('9D3B35'),
    collection_rows = { 6, 6 },
    loc_txt = {
        name = 'Ortalab',
        collection = 'Zodiac Cards',
        label = 'Test A',
        undiscovered = {
            name = 'Not Discovered',
            text = {
                "Purchase or use",
                "this card in a",
                "seeded run to",
                "learn what it does"
            }
        }
    },
    shop_rate = 0,
    default = test_c.key
}

SMODS.ConsumableType{
    key = "Ortalab_Cryptid",
    primary_colour = HEX('704F72'),
    secondary_colour = HEX('704F72'),
    collection_rows = { 5, 5 },
    loc_txt = {
        name = 'Ortalab Cryptid',
        collection = 'Cryptid Cards',
        label = 'Test C',
        undiscovered = {
            name = 'Not Discovered',
            text = {
                "Purchase or use",
                "this card in a",
                "seeded run to",
                "learn what it does"
            }
        }
    },
    shop_rate = 0,
    default = test_c.key
}


----------------------------------------------
------------MOD CODE END----------------------