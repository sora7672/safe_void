# This should setup all the initial scoreboards that maybe are needed for the functions

# maybe not needed, will check later.
execute run scoreboard objectives add world_avg_height dummy
execute run scoreboard players set dim_overworld world_avg_height 64
execute run scoreboard players set dim_nether world_avg_height 48
execute run scoreboard players set dim_end world_avg_height 112

execute run scoreboard objectives add world_min_height dummy
execute run scoreboard players set dim_overworld world_min_height 5
execute run scoreboard players set dim_nether world_min_height 5
execute run scoreboard players set dim_end world_min_height 5

scoreboard objectives add player_y dummy
execute as @a run scoreboard players set @s player_y 64

scoreboard objectives add coord_x dummy
scoreboard objectives add coord_y dummy
scoreboard objectives add coord_z dummy

scoreboard objectives add check_x dummy
scoreboard objectives add check_y dummy
scoreboard objectives add check_z dummy

scoreboard objectives add check_break dummy
scoreboard objectives add check_height dummy
scoreboard objectives add x_counter dummy
scoreboard objectives add z_counter dummy

scoreboard objectives add rescue_tp_x dummy
scoreboard objectives add rescue_tp_y dummy
scoreboard objectives add rescue_tp_z dummy

execute as @a run tellraw @s ["",{"text":"Teleportations DP loaded ","color":"white"}]



