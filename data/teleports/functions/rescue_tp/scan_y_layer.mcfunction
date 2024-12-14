# this function will be looped till its broken by another function
# here the y will be looped till end and counters get initialized
# it will check a 40x40 area, each 2nd block so 400 times per y layer for blocks


#start of file check
execute as @s run tellraw @s ["",{"text":"[DEBUG] Entering scan_y_layer.mcfunction: ","color":"yellow"},{"text":"check_y=","color":"white"},{"score":{"name":"@s","objective":"check_y"}},{"text":" check_height=","color":"white"},{"score":{"name":"@s","objective":"check_height"}}]


# check if y is above where allowed in that dim to set break(function/loop) score
execute as @s if score @s check_y > @s check_height run scoreboard players set @s check_break 1


#init counter for loops
scoreboard players set @s x_counter 0
scoreboard players set @s z_counter 0

#init check x&z each loop
scoreboard players operation @s check_x = @s coord_x
scoreboard players remove @s check_x 20
scoreboard players operation @s check_z = @s coord_z
scoreboard players remove @s check_z 20

# start xz grid search and call tp function in it
execute as @s if score @s check_break matches 1 run function teleports:rescue_tp/scan_z_layer


#if break is set and safe spot is not found use alternate tp
execute as @s if score @s check_break matches 1 unless score @s rescue_tp_y = @s rescue_tp_y run function teleports:rescue_tp/alternate_tp

#execute only if safe_spot_found is not found
# add 1 to y, call this function again
execute as @s unless score @s rescue_tp_y = @s rescue_tp_y run scoreboard players add @s check_y 1

execute as @s unless score @s check_break matches 1 run function teleports:rescue_tp/scan_y_layer



#end of file check
execute as @s run tellraw @s ["",{"text":"[DEBUG] Exiting scan_y_layer.mcfunction: ","color":"yellow"},{"text":"check_y=","color":"white"},{"score":{"name":"@s","objective":"check_y"}},{"text":" check_height=","color":"white"},{"score":{"name":"@s","objective":"check_height"}}]
