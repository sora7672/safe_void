# Datapack Safe Void
![image info](./pack.png)


## About
This pack is designed to work best in a sky/void world.
It helps players to safely find postions to settle down and build.
It's part of [Sora_7672's](https://github.com/sora7672) - [Skyworld Datapack](https://github.com/sora7672/Skyworld).

You get access to custom commands, based in modules.
Every module can be configured to be enabled or not.
1. Rescue TP:
  - If a player falls below a configured y level, they get teleported to the last safe position safed (this means a solid block)
  - You need to set your world height either in the setup.mcfunction or by changing the scores (as explained in admin area)
2. Home setting and teleporting:
  - Players can use `/trigger sethome` to set their home (only 1 per person)
  - Players can use `/trigger home` to teleport back, standard setting is 60 secs cooldown
3. Random teleport:
- Players can use `/trigger random_tp` to teleport random between 100 to 1000 blocks away, standard setting is 60 secs cooldown
- Its possible to disable random_tp, if the player has allready a sethome, standard setting is allways rtp allowed.

## Admin area
You want to configure the pack a lil?
<br>Easy!
<br>Mainly you will look into `main/data/teleports/functions/setup.mcfunction`
<br>where you can set the world height adn enable/disable the modules.
<br>To set rtp off after home got set change the setup to this: `scoreboard players set always_random_tp enabled_modules 0`
<br>You should do that here, so its not making problems on realods/restarts of your server.
<br>You want to change the cooldowns? Also easy! (It's saved in ticks 20=1 sec, 200=10 seconds, 1200=60 seconds)
<br>random tp `data/teleports/functions/random_tp/do_rtp.mcfunction`
<br>home tp `data/teleports/functions/player_home/home.mcfunction`

### Thanks for reading!
Everyone is welcome to DM me on discord(sora7672) or here on github!
<br>Ideas and improvement ideas are always welcome, but not like:
<br>`I want this, can you add that?`, `That is shit. Remove that.`
<br>But:
<br>`I want you to add blah blah, because that would improve abc.`, `Doing blah like this, is shit, because that and that happens.`
<br>is welcome ;) 
