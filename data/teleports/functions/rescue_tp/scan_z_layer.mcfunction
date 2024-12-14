# this function calls itself till its broken and checks on each z layer, only every 2nd z coord

#start of file check
execute as @s run tellraw @s ["",{"text":"[DEBUG] Entering scan_z_layer.mcfunction: ","color":"yellow"},{"text":"check_z=","color":"white"},{"score":{"name":"@s","objective":"check_z"}},{"text":" z_counter=","color":"white"},{"score":{"name":"@s","objective":"z_counter"}}]


execute as @s unless score @s check_break matches 1 run function teleports:rescue_tp/scan_x_row

execute as @s unless score @s check_break matches 1 run scoreboard players add @s check_z 2
execute as @s unless score @s check_break matches 1 run scoreboard players add @s z_counter 1

scoreboard players operation @s check_x = @s coord_x
scoreboard players remove @s check_x 20

execute as @s unless score @s check_break matches 1 if score @s z_counter matches ..20 run function teleports:rescue_tp/scan_z_layer



#end of file check
execute as @s run tellraw @s ["",{"text":"[DEBUG] Exiting scan_z_layer.mcfunction: ","color":"yellow"},{"text":"check_z=","color":"white"},{"score":{"name":"@s","objective":"check_z"}},{"text":" z_counter=","color":"white"},{"score":{"name":"@s","objective":"z_counter"}}]
