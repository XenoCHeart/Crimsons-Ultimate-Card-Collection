--- STEAMODDED HEADER
--- MOD_NAME: Jimbo Only and Jimboless 
--- MOD_ID: JIMBO
--- MOD_AUTHOR: [Crimson Heart]
--- MOD_DESCRIPTION: Jimbo and Jimboless from Wheelatro


function SMODS.INIT.JIMBO ()
    local challenges = G.CHALLENGES

	G.localization.misc.challenge_names["c_mod_JIMBO_Jimbonly"] = "Jimbo Only"
	G.localization.misc.challenge_names["c_mod_JIMBO_Jimboless"] = "Jimboless"

    table.insert(G.CHALLENGES,#G.CHALLENGES+1,{
        name = 'Jimbo Only',
        id = 'c_mod_JIMBO_Jimbonly',
        rules = {
            custom = {
            },
            modifiers = {
                {id = 'dollars', value = 4},
                {id = 'discards', value = 3},
                {id = 'hands', value = 4},
                {id = 'reroll_cost', value = 5},
                {id = 'joker_slots', value = 5},
                {id = 'consumable_slots', value = 2},
                {id = 'hand_size', value = 8},
            }
        },
        jokers = {
            
        },
        consumeables = {
        },
        vouchers = {
        },
        deck = {
            type = 'Challenge Deck'
        },
        restrictions = {
            banned_cards = {
                {id = 'j_four_fingers'},
                {id = 'j_mime'},
                {id = 'j_credit_card'},
                {id = 'j_ceremonial'},
                {id = 'j_banner'},
                {id = 'j_mystic_summit'},
                {id = 'j_loyalty_card'},
                {id = 'j_8_ball'},
                {id = 'j_dusk'},
                {id = 'j_raised_fist'},
                {id = 'j_fibonacci'},
                {id = 'j_scary_face'},
                {id = 'j_delayed_grat'},
                {id = 'j_hack'},
                {id = 'j_pareidolia'},
                {id = 'j_gros_michel'},
                {id = 'j_business'},
                {id = 'j_supernova'},
                {id = 'j_ride_the_bus'},
                {id = 'j_egg'},
                {id = 'j_ice_cream'},
                {id = 'j_dna'},
                {id = 'j_splash'},
                {id = 'j_superposition'},
                {id = 'j_todo_list'},
                {id = 'j_cavendish'},
                {id = 'j_red_card'},
                {id = 'j_seance'},
                {id = 'j_shortcut'},
                {id = 'j_cloud_9'},
                {id = 'j_rocket'},
                {id = 'j_obelisk'},
                {id = 'j_midas_mask'},
                {id = 'j_gift'},
                {id = 'j_turtle_bean'},
                {id = 'j_erosion'},
                {id = 'j_reserved_parking'},
                {id = 'j_mail'},
                {id = 'j_to_the_moon'},
                {id = 'j_juggler'},
                {id = 'j_drunkard'},
                {id = 'j_lucky_cat'},
                {id = 'j_baseball'},
                {id = 'j_bull'},
                {id = 'j_diet_cola'},
                {id = 'j_popcorn'},
                {id = 'j_trousers'},
                {id = 'j_ancient'},
                {id = 'j_ramen'},
                {id = 'j_walkie_talkie'},
                {id = 'j_selzer'},
                {id = 'j_castle'},
                {id = 'j_smiley'},
                {id = 'j_campfire'},
                {id = 'j_ticket'},
                {id = 'j_acrobat'},
                {id = 'j_sock_and_buskin'},
                {id = 'j_troubadour'},
                {id = 'j_certificate'},
                {id = 'j_hanging_chad'},
                {id = 'j_rough_gem'},
                {id = 'j_bloodstone'},
                {id = 'j_arrowhead'},
                {id = 'j_onyx_agate'},
                {id = 'j_flower_pot'},
                {id = 'j_oops'},
                {id = 'j_idol'},
                {id = 'j_seeing_double'},
                {id = 'j_hit_the_road'},
                {id = 'j_duo'},
                {id = 'j_trio'},
                {id = 'j_family'},
                {id = 'j_order'},
                {id = 'j_tribe'},
                {id = 'j_satellite'},
                {id = 'j_shoot_the_moon'},
                {id = 'j_drivers_license'},
                {id = 'j_bootstraps'},
            },
            banned_tags = {
            },
            banned_other = {
            }
        }
    })

        table.insert(G.CHALLENGES,#G.CHALLENGES+1,{
            name = 'Jimboless',
            id = 'c_mod_JIMBO_Jimboless',
            rules = {
                custom = {
                },
                modifiers = {
                    {id = 'dollars', value = 4},
                    {id = 'discards', value = 3},
                    {id = 'hands', value = 4},
                    {id = 'reroll_cost', value = 5},
                    {id = 'joker_slots', value = 5},
                    {id = 'consumable_slots', value = 2},
                    {id = 'hand_size', value = 8},
                }
            },
            jokers = {
                
            },
            consumeables = {
            },
            vouchers = {
            },
            deck = {
                type = 'Challenge Deck'
            },
            restrictions = {
                banned_cards = {
                    {id = 'j_joker'},
                    {id = 'j_greedy_joker'},
                    {id = 'j_lusty_joker'},
                    {id = 'j_wrathful_joker'},
                    {id = 'j_gluttenous_joker'},
                    {id = 'j_jolly'},
                    {id = 'j_zany'},
                    {id = 'j_mad'},
                    {id = 'j_droll'},
                    {id = 'j_crazy'},
                    {id = 'j_sly'},
                    {id = 'j_wily'},
                    {id = 'j_clever'},
                    {id = 'j_devious'},
                    {id = 'j_crafty'},
                    {id = 'j_half'},
                    {id = 'j_stencil'},
                    {id = 'j_marble'},
                    {id = 'j_misprint'},
                    {id = 'j_chaos'},
                    {id = 'j_steel_joker'},
                    {id = 'j_abstract'},
                    {id = 'j_even_steven'},
                    {id = 'j_odd_todd'},
                    {id = 'j_scholar'},
                    {id = 'j_space'},
                    {id = 'j_burglar'},
                    {id = 'j_blackboard'},
                    {id = 'j_runner'},
                    {id = 'j_blue_joker'},
                    {id = 'j_sixth_sense'},
                    {id = 'j_constellation'},
                    {id = 'j_hiker'},
                    {id = 'j_faceless'},
                    {id = 'j_green_joker'},
                    {id = 'j_card_sharp'},
                    {id = 'j_madness'},
                    {id = 'j_square'},
                    {id = 'j_riff_raff'},
                    {id = 'j_vampire'},
                    {id = 'j_hologram'},
                    {id = 'j_vagabond'},
                    {id = 'j_luchador'},
                    {id = 'j_photograph'},
                    {id = 'j_hallucination'},
                    {id = 'j_fortune_teller'},
                    {id = 'j_stone'},
                    {id = 'j_golden'},
                    {id = 'j_trading'},
                    {id = 'j_flash'},
                    {id = 'j_mr_bones'},
                    {id = 'j_swashbuckler'},
                    {id = 'j_smeared'},
                    {id = 'j_throwback'},
                    {id = 'j_glass'},
                    {id = 'j_ring_master'},
                    {id = 'j_blueprint'},
                    {id = 'j_wee'},
                    {id = 'j_merry_andy'},
                    {id = 'j_matador'},
                    {id = 'j_stuntman'},
                    {id = 'j_invisible'},
                    {id = 'j_brainstorm'},
                    {id = 'j_cartomancer'},
                    {id = 'j_astronomer'},
                    {id = 'j_burnt'},
                    {id = 'j_caino'},
                    {id = 'j_triboulet'},
                    {id = 'j_yorick'},
                    {id = 'j_chicot'},
                    {id = 'j_perkeo'},
                },
                banned_tags = {
                },
                banned_other = {
                }
            }
        })
    end

----------------------------------------------  
------------MOD CODE END----------------------
