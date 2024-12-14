# the last function to get the right y height for a tp, it should check on
# the solid block found + 1/2 above are air, if not go higher till one position is valid
# if position is valid set rescue pos
# if rescue pos is set, call tp function (which breaks the loops)


#start of file check
execute as @s run tellraw @s ["",{"text":"[DEBUG] Entering get_safe_y_pos.mcfunction: ","color":"yellow"},{"text":"check_x=","color":"white"},{"score":{"name":"@s","objective":"check_x"}},{"text":" check_y=","color":"white"},{"score":{"name":"@s","objective":"check_y"}},{"text":" check_z=","color":"white"},{"score":{"name":"@s","objective":"check_z"}}]



#execute as @s unless score @s check_break matches 1

# check if pos above +1 and +2 is air set found_rescue_pos to 1
execute positioned as @s positioned score @s check_x check_y check_z if block ~ ~1 ~ minecraft:air if block ~ ~2 ~ minecraft:air run function teleports:rescue_tp/set_rescue_pos

# if found_rescue_pos not set add check y+1 and call itself
execute if score @s rescue_tp_x = @s rescue_tp_x if score @s rescue_tp_y = @s rescue_tp_y if score @s rescue_tp_z = @s rescue_tp_z run function teleports:rescue_tp/tp_to_pos

#execute if y (placeholder for xyz) is not set
execute unless score @s rescue_tp_y = @s rescue_tp_y run scoreboard players add @s check_y 1
execute unless score @s rescue_tp_y = @s rescue_tp_y run function teleports:rescue_tp/safe_y_pos


#end of file check
execute as @s run tellraw @s ["",{"text":"[DEBUG] Exiting get_safe_y_pos.mcfunction: ","color":"yellow"},{"text":"check_x=","color":"white"},{"score":{"name":"@s","objective":"check_x"}},{"text":" check_y=","color":"white"},{"score":{"name":"@s","objective":"check_y"}},{"text":" check_z=","color":"white"},{"score":{"name":"@s","objective":"check_z"}}]

