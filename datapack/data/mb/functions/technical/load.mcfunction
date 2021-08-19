############################################################
# Description: Runs when downloading the pack
############################################################

# Settings scoreboards
scoreboard objectives add mb.settings trigger
scoreboard players set @a mb.settings 0
scoreboard players enable @a mb.settings

scoreboard objectives add mb.difficulty dummy
scoreboard players set @a mb.difficulty 0

scoreboard objectives add mb.speedrunTimer dummy
scoreboard players set @a mb.speedrunTimer 0
scoreboard objectives add MB.timer dummy
scoreboard players set seconds MB.timer 0
scoreboard players set miliseconds MB.timer 0

# Dummy scoreboards
scoreboard objectives add mb.dummy1 dummy
scoreboard players set @a mb.dummy1 0

scoreboard players set mb.const.1 mb.dummy1 0

# Player scoreboards
scoreboard objectives add mb.deaths deathCount
scoreboard players set @a mb.deaths 0
scoreboard players set total.deaths mb.deaths 0

scoreboard players set player.count mb.dummy1 0

scoreboard objectives add MBjump minecraft.custom:minecraft.jump

scoreboard objectives add mb.join.world minecraft.custom:minecraft.leave_game
scoreboard players set @a mb.join.world 0

# RNG generate
scoreboard objectives add mb.rng.input dummy
scoreboard objectives add MB.rng.output dummy

# Item scoreboards
scoreboard objectives add mb.used_bow minecraft.used:minecraft.bow
scoreboard objectives add mb.coas minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add mb.global_cool dummy
scoreboard players set @a mb.global_cool 0

scoreboard objectives add mb.slimy_s.cool dummy
scoreboard players set @a mb.slimy_s.cool 0

scoreboard objectives add royal_jello.UUID dummy
scoreboard players set @a royal_jello.UUID 0
scoreboard objectives add royal_jello.tog dummy
scoreboard players set @a royal_jello.tog 0

scoreboard objectives add mb.shatter_mirro dummy
scoreboard players set @a mb.shatter_mirro 0

scoreboard objectives add mb.ethereal.cool dummy
scoreboard players set @a mb.ethereal.cool 0

scoreboard objectives add mb.pollinat.cool dummy
scoreboard players set @a mb.pollinat.cool 0

scoreboard objectives add mb.hive_rat.UUID dummy
scoreboard players set @a mb.hive_rat.UUID 0
scoreboard objectives add mb.hive_rat.tog dummy
scoreboard players set @a mb.hive_rat.tog 0

scoreboard objectives add mb.soul_lee.cool dummy
scoreboard players set @a mb.soul_lee.cool 0
scoreboard objectives add mb.soul_lee.time dummy
scoreboard players set @a mb.soul_lee.time 0

scoreboard objectives add mb.wisp_lan.UUID dummy
scoreboard players set @a mb.wisp_lan.UUID 0
scoreboard objectives add mb.wisp_lan.tog dummy
scoreboard players set @a mb.wisp_lan.tog 0

scoreboard objectives add mb.soulboun.time dummy
scoreboard players set @a mb.soulboun.time 0
scoreboard objectives add mb.soulboun.UUID dummy
scoreboard players set @a mb.soulboun.UUID 0

scoreboard objectives add mb.floweroas.tog dummy
scoreboard players set @a mb.floweroas.tog 0

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

scoreboard objectives add mb.amogus.UUID dummy
scoreboard players set @a mb.amogus.UUID 0
scoreboard objectives add mb.amogus.tog dummy
scoreboard players set @a mb.amogus.tog 0

scoreboard objectives add UUID.link dummy

# Bossbars
bossbar add mb:kingslime {"text":"\ub001","font":"mb:boss"}
bossbar set mb:kingslime players @a
bossbar set mb:kingslime style progress
bossbar set mb:kingslime visible false
bossbar set mb:kingslime color green

bossbar add mb:restlesssoul {"text":"\ub003","font":"mb:boss"}
bossbar set mb:restlesssoul players @a
bossbar set mb:restlesssoul style progress
bossbar set mb:restlesssoul visible false
bossbar set mb:restlesssoul color white

bossbar add mb:queenbee {"text":"\ub005","font":"mb:boss"}
bossbar set mb:queenbee players @a
bossbar set mb:queenbee style progress
bossbar set mb:queenbee visible false
bossbar set mb:queenbee color yellow

bossbar add mb:herobrine {"text":"\ub007","font":"mb:boss"}
bossbar set mb:herobrine players @a
bossbar set mb:herobrine style progress
bossbar set mb:herobrine visible false
bossbar set mb:herobrine color white

bossbar add mb:impostor {"text":"\ub010","font":"mb:boss"}
bossbar set mb:impostor players @a
bossbar set mb:impostor style progress
bossbar set mb:impostor visible false
bossbar set mb:impostor color blue

# Teams
team add mb.entity
team modify mb.entity collisionRule never
team modify mb.entity seeFriendlyInvisibles false
team add MB.boss
team join mb.entity @a
