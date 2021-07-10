############################################################
# Description: Runs this every reload
############################################################

# Reload tellraw
function mb:settings/reload_page

# Settings scoreboards
scoreboard objectives add MB.settings trigger
scoreboard players set @a MB.settings 0
scoreboard players enable @a MB.settings

scoreboard objectives add MB.difficulty dummy
scoreboard players set @a MB.difficulty 0

scoreboard objectives add mb.speedrunTimer dummy
scoreboard players set @a mb.speedrunTimer 0
scoreboard objectives add MB.timer dummy
scoreboard players set seconds MB.timer 0
scoreboard players set miliseconds MB.timer 0

# Dummy scoreboards
scoreboard objectives add MB.dummy1 dummy
scoreboard objectives add MB.dummy2 dummy
scoreboard objectives add MB.dummy3 dummy
scoreboard players set @a MB.dummy1 0
scoreboard players set @a MB.dummy2 0
scoreboard players set @a MB.dummy3 0

# Player scoreboards
scoreboard objectives add MB.deaths deathCount
scoreboard players set @a MB.deaths 0
scoreboard players set total.deaths MB.deaths 0

scoreboard players set player.count MB.dummy1 0

scoreboard objectives add MBjump minecraft.custom:minecraft.jump

scoreboard objectives add MB.join.world minecraft.custom:minecraft.leave_game
scoreboard players set @a MB.join.world 0

# RNG generate
scoreboard objectives add MB.rng.input dummy
scoreboard objectives add MB.rng.output dummy

# Drop craft
scoreboard objectives add MB.itemnbt dummy
scoreboard players set @a MB.itemnbt 0

# Boss scoreboards

# Item scoreboards
scoreboard objectives add MB.used_bow minecraft.used:minecraft.bow

scoreboard objectives add MB.coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add MBitemID dummy
scoreboard objectives add MBitemCooldown dummy

scoreboard objectives add slimeSpring.fx dummy
scoreboard players set @a slimeSpring.fx 0
scoreboard objectives add slimeSpring.cool dummy
scoreboard players set @a slimeSpring.cool 0

scoreboard objectives add royal_jello.UUID dummy
scoreboard players set @a royal_jello.UUID 0
scoreboard objectives add royal_jello.tog dummy
scoreboard players set @a royal_jello.tog 0

scoreboard objectives add shatteredMirror dummy
scoreboard players set @a shatteredMirror 0

scoreboard objectives add etherealm.cool dummy
scoreboard players set @a etherealm.cool 0

scoreboard objectives add beeCloak.anim dummy
scoreboard players set @a beeCloak.anim 0

scoreboard objectives add pollinator.cool dummy
scoreboard players set @a pollinator.cool 0

scoreboard objectives add royalNectar dummy
scoreboard players set @a royalNectar 0

scoreboard objectives add hive_rattle.UUID dummy
scoreboard players set @a hive_rattle.UUID 0
scoreboard objectives add hive_rattle.tog dummy
scoreboard players set @a hive_rattle.tog 0

scoreboard objectives add soulLeech.cool dummy
scoreboard players set @a soulLeech.cool 0
scoreboard objectives add soulLeech.fx dummy
scoreboard players set @a soulLeech.fx 0

scoreboard objectives add wisp_lan.UUID dummy
scoreboard players set @a wisp_lan.UUID 0
scoreboard objectives add wisp_lan.tog dummy
scoreboard players set @a wisp_lan.tog 0

scoreboard objectives add soulbound.time dummy
scoreboard players set @a soulbound.time 0

scoreboard objectives add flowerStick.tog dummy
scoreboard players set @a flowerStick.tog 0
scoreboard objectives add flowerStick.rng dummy
scoreboard players set @a flowerStick.rng 0

scoreboard objectives add spiritBlade.cool dummy
scoreboard players set @a spiritBlade.cool 0

scoreboard objectives add eyeSpy.cool dummy
scoreboard players set @a eyeSpy.cool 0
scoreboard objectives add eyeSpy.stun dummy

scoreboard objectives add blink.cool dummy
scoreboard players set @a blink.cool 0
scoreboard objectives add blink.raycast dummy
scoreboard players set @a blink.raycast 0

scoreboard objectives add smite.cool dummy
scoreboard players set @a smite.cool 0
scoreboard objectives add smite.raycast dummy
scoreboard players set @a smite.raycast 0

scoreboard objectives add voodoo.cool dummy
scoreboard players set @a voodoo.cool 0
scoreboard objectives add voodoo.raycast dummy
scoreboard players set @a voodoo.raycast 0
scoreboard objectives add voodoo.health dummy
scoreboard players set @a voodoo.health 0

scoreboard objectives add amogus.UUID dummy
scoreboard players set @a amogus.UUID 0
scoreboard objectives add amogus.tog dummy
scoreboard players set @a amogus.tog 0

scoreboard objectives add UUID.link dummy

# Bossbars
bossbar add mb:kingslime {"text":"\ub010","font":"mb:boss"}
bossbar set mb:kingslime players @a
bossbar set mb:kingslime style progress
bossbar set mb:kingslime visible false
bossbar set mb:kingslime color green

bossbar add mb:restlesssoul {"text":"\ub020","font":"mb:boss"}
bossbar set mb:restlesssoul players @a
bossbar set mb:restlesssoul style progress
bossbar set mb:restlesssoul visible false
bossbar set mb:restlesssoul color white

bossbar add mb:queenbee {"text":"\ub030","font":"mb:boss"}
bossbar set mb:queenbee players @a
bossbar set mb:queenbee style progress
bossbar set mb:queenbee visible false
bossbar set mb:queenbee color yellow

bossbar add mb:herobrine {"text":"\ub040","font":"mb:boss"}
bossbar set mb:herobrine players @a
bossbar set mb:herobrine style progress
bossbar set mb:herobrine visible false
bossbar set mb:herobrine color white

bossbar add mb:impostor {"text":"\ub050","font":"mb:boss"}
bossbar set mb:impostor players @a
bossbar set mb:impostor style progress
bossbar set mb:impostor visible false
bossbar set mb:impostor color blue

# Teams
team add MB.pets
team modify MB.pets collisionRule never
team modify MB.pets seeFriendlyInvisibles false
team add MB.boss
team join MB.pets @a
