############################################################
# Description: Removes all content
############################################################

datapack disable "file/More-Bosses-Datapack"

# Settings scoreboards
scoreboard objectives remove MB.settings

scoreboard objectives remove MB.difficulty

scoreboard objectives remove mb.speedrunTimer
scoreboard objectives remove MB.timer

# Player scoreboards
scoreboard objectives remove MB.deaths
scoreboard objectives remove MBtotalDeaths

scoreboard objectives remove MBplayers

scoreboard objectives remove MBjump

scoreboard objectives remove MB.join.world

scoreboard objectives remove MB.coas

# RNG generate
scoreboard objectives remove MBrngInput
scoreboard objectives remove MBrngOutput

# Boss scoreboards
scoreboard objectives remove MBbossHealth
scoreboard objectives remove MBbossDummy
scoreboard objectives remove MBbossDummy2
scoreboard objectives remove MBbossID

# Drop craft
scoreboard objectives remove MB.itemnbt
scoreboard players set @a MB.itemnbt 0

# scoreboards
scoreboard objectives remove mb.dummy1
scoreboard objectives remove MB.dummy2
scoreboard objectives remove MB.dummy3

# Item scoreboards
scoreboard objectives remove MBrightClic
scoreboard objectives remove MBitemID
scoreboard objectives remove MBitemCooldown

scoreboard objectives remove slimeSpring.fx
scoreboard objectives remove slimeSpring.cool

scoreboard objectives remove royalJello.tog

scoreboard objectives remove shatteredMirror

scoreboard objectives remove etherealm.cool

scoreboard objectives remove beeCloak.anim

scoreboard objectives remove pollinator.cool

scoreboard objectives remove venomQuiver

scoreboard objectives remove royalNectar

scoreboard objectives remove soulLeech.cool
scoreboard objectives remove soulLeech.fx

scoreboard objectives remove mb.soulboun.time

scoreboard objectives remove mb.floweroas.tog
scoreboard objectives remove flowerStick.anim
scoreboard objectives remove flowerStick.alt

scoreboard objectives remove spiritBlade.cool

scoreboard objectives remove UUID.link

# Bossbars
bossbar remove kingslime
bossbar remove queenbee
bossbar remove mb.restless_soul
bossbar remove herobrine

# Teams
team remove MBpets

team remove MB.boss
