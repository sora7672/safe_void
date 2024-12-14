

# tp player to safe spot
execute as @s at @s run tp @s score @s rescue_tp_x rescue_tp_y rescue_tp_z

# set break score to stop loops
scoreboard players set @s check_break 1
# reset used scores
execute as @s run function teleports:rescue_tp/reset_scores
