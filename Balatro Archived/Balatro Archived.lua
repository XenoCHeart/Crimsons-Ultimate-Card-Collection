--- STEAMODDED HEADER
--- MOD_NAME: Balatro Archived
--- MOD_ID: BalatroArchived
--- MOD_AUTHOR: [Crimson Heart]
--- MOD_DESCRIPTION: Any generic concepts I (Crimson Heart) make will be in this mod.

----------------------------------------------
------------MOD CODE -------------------------

function SMODS.INIT.BalatroArchived()
    local BalatroArchived_art = SMODS.findModByID("BalatroArchived")
    local sprite_centers = SMODS.Sprite:new("centers", BalatroArchived_art.path, "Enhancers.png", 71, 95, "asset_atli")
    sprite_centers:register()

end




    -- 0.8.8--

        -- Jokers --






        -- Decks --
            

            -- Silver Deck --
                
local Backapply_to_runRef = Back.apply_to_run
function Back.apply_to_run(self)
    Backapply_to_runRef(self)
    
    if self.effect.config.start_joker then
        delay(0.4)
        G.E_MANAGER:add_event(Event({
            func = function()
                local card = create_card('Joker', G.jokers)
                card:add_to_deck()
                card:start_materialize()
                G.jokers:emplace(card)
            return true
            end
        }))
    end
end


                function SMODS.INIT.SilverDeck()
                    local loc_def = {
                        ["name"] = "Silver Deck",
                        ["text"] = {
                            [1] = "Start run with",
                            [2] = "one {C:attention}Joker{}",
                        },
                    
                    }
                        
                    local SilverDeck = SMODS.Deck:new("Silver Deck", "SilverDeck", {start_joker = true}, {x = 2, y = 5}, loc_def)
                    SilverDeck:register()
                end

                function SMODS.INIT.FoilDeck()
                    local loc_def = {
                        ["name"] = "Foil Deck",
                        ["text"] = {
                            [1] = "Add {C:attention}Foil{} to",
                            [2] = "{C:attention}3{} random",
                            [3] = "cards in deck",
                        },
                    
                    }
        
                    local FoilDeck = SMODS.Deck:new("Foil Deck", "FoilDeck", {edition_count = 3, edition = 'foil'}, {x = 1, y = 5}, loc_def)
                    FoilDeck:register()
                end

                function SMODS.INIT.HoloDeck()
                    local loc_def = {
                        ["name"] = "Holographic Deck",
                        ["text"] = {
                            [1] = "Add {C:attention}Holographic{}",
                            [2] = "to {C:attention}2{} random",
                            [3] = "cards in deck",
                        },
                    
                    }
        
                    local HoloDeck = SMODS.Deck:new("Holographic Deck", "HoloDeck", {edition_count = 2, edition = 'holo'}, {x = 0, y = 5}, loc_def)
                    HoloDeck:register()
                end

                function SMODS.INIT.PolyDeck()
                    local loc_def = {
                        ["name"] = "Polychrome Deck",
                        ["text"] = {
                            [1] = "Add {C:attention}Polychrome{}",
                            [2] = "to {C:attention}1{} random",
                            [3] = "card in deck",
                        },
                    
                    }
        
                    local PolyDeck = SMODS.Deck:new("Holographic Deck", "PolyDeck", {edition_count = 1, edition = 'polychrome'}, {x = 3, y = 5}, loc_def)
                    PolyDeck:register()
                end

----------------------------------------------  
------------MOD CODE END----------------------
