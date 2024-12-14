# this function is called if no valid block will be found in the 20x20 area and teleports the player away
# with no fall dmg but at max y



# send message to player no safe spot found, therefore sky diving for them
execute as @s run tellraw @s [
    {"text":"No safe spot found! Good luck skydiving! ","color":"gold"},
    {"text":"Feather Falling activated.","color":"yellow"}
]

# tp player 50 xz away and set feather falling effect super high for 20 seconds adn tp them to 255 y

effect give @s minecraft:slow_falling 20 255 true
execute as @s at @s run tp @s ~50 255 ~50

# call reset function
execute as @s run function teleports:rescue_tp/reset_scores