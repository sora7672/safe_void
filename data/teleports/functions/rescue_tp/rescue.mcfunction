# main function to start the rescue tp for the player.
# this is only executed if player is below where they are allowed.

# MAYBE i need to check a score here, to see if function is already running to prevent deadlocks /infinity loops

# player will float (so no death) then save the player (scores)coords for the checks and execute the first loop

effect give @s minecraft:levitation 5 1 true


execute store result score @s coord_x run data get entity @s Pos[0] 1
execute store result score @s coord_y run data get entity @s Pos[1] 1
execute store result score @s coord_z run data get entity @s Pos[2] 1

#init y height
scoreboard players operation @s check_y = @s coord_y
scoreboard players add @s check_y 5

# based on player dimension another max y for check will be set,
execute as @s at @s if dimension overworld run scoreboard players operation @s check_height = dim_overworld world_min_height
execute as @s at @s if dimension the_nether run scoreboard players operation @s check_height = dim_netherworld_min_height
execute as @s at @s if dimension the_end run scoreboard players operation @s check_height = dim_end world_min_height
scoreboard players add @s check_height 120

scoreboard players set @s check_break 0
execute as @s run function teleports:rescue_tp/scan_y_layer





