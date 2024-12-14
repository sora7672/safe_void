# this function iterates through each line of blocks and calls the check function for the block

#start of file check
execute as @s run tellraw @s ["",{"text":"[DEBUG] Entering scan_x_row.mcfunction: ","color":"yellow"},{"text":"check_x=","color":"white"},{"score":{"name":"@s","objective":"check_x"}},{"text":" x_counter=","color":"white"},{"score":{"name":"@s","objective":"x_counter"}}]


execute as @s unless score @s check_break matches 1 positioned score @s check_x check_y check_z unless block ~ ~ ~ minecraft:air run function teleports:rescue_tp/get_safe_y_pos


execute as @s unless score @s check_break matches 1 run scoreboard players add @s check_x 2
execute as @s unless score @s check_break matches 1 run scoreboard players add @s x_counter 1

execute as @s unless score @s check_break matches 1 if score @s x_counter matches ..20 run function teleports:rescue_tp/scan_x_row



#end of file check
execute as @s run tellraw @s ["",{"text":"[DEBUG] Exiting scan_x_row.mcfunction: ","color":"yellow"},{"text":"check_x=","color":"white"},{"score":{"name":"@s","objective":"check_x"}},{"text":" x_counter=","color":"white"},{"score":{"name":"@s","objective":"x_counter"}}]
