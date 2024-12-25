# Stuff in here gets called every tick, thats why we work a lot with timers to minimize the server impact

## rescue_tp stuff

# Check for each player on their position if they need rescue
execute as @a at @s if score rescue_tp enabled_modules matches 1 run function teleports:rescue_tp/height_check
# trigger timer up
execute if score rescue_tp enabled_modules matches 1 run scoreboard players add set_rescue_pos timer 1
# Safe the current position of each player all 60 ticks (3 seconds)
execute as @a at @s if score rescue_tp enabled_modules matches 1 if score set_rescue_pos timer matches 60.. run function teleports:rescue_tp/check_below_solid
# Reset timer
execute if score rescue_tp enabled_modules matches 1 if score set_rescue_pos timer matches 60.. run scoreboard players set set_rescue_pos timer 0


## player_home stuff

# reduce each players home cooldown
execute as @a unless score @s home_cooldown matches 0.. run scoreboard players set @s home_cooldown 0
execute as @a[scores={home_cooldown=1..}] if score player_home enabled_modules matches 1 run scoreboard players remove @s home_cooldown 1
# trigger timer up
execute if score player_home enabled_modules matches 1 run scoreboard players add player_home timer 1
# if trigger timer is rdy trigger gets called
execute if score player_home enabled_modules matches 1 if score player_home timer matches 10.. run function teleports:player_home/trigger_checks
# reset timer
execute if score player_home enabled_modules matches 1 if score player_home timer matches 10.. run scoreboard players set player_home timer 0


execute as @a[scores={home_check_timer=1..}] if score player_home enabled_modules matches 1 unless score @s home_is_set matches 1 run scoreboard players remove @s home_check_timer 1
execute as @a[scores={home_check_timer=..0}] if score player_home enabled_modules matches 1 unless score @s home_is_set matches 1 run function teleports:player_home/info_no_home

## random_tp stuff

# first safety tp, if player is not spawning on island.
execute as @a[tag=!safe_start] run function teleports:random_tp/myfunction



# reduce each players rtp cooldown
execute as @a unless score @s random_tp_cooldown matches 0.. run scoreboard players set @s random_tp_cooldown 0
execute as @a[scores={random_tp_cooldown=1..}] if score random_tp enabled_modules matches 1 run scoreboard players remove @s random_tp_cooldown 1
# trigger timer up
execute if score random_tp enabled_modules matches 1 run scoreboard players add random_tp timer 1
# if trigger timer is rdy trigger gets called
execute if score random_tp enabled_modules matches 1 if score random_tp timer matches 10.. run function teleports:random_tp/trigger_checks
# reset timer
execute if score random_tp enabled_modules matches 1 if score random_tp timer matches 10.. run scoreboard players set random_tp timer 0
