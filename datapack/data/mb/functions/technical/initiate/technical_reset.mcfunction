############################################################
# Description: Initiates and removes all old technicals
############################################################

# Missing Resources
tellraw @a {"translate":"You are missing More Bosses+'s resource pack.","color":"red"}
tellraw @a {"translate":"You can download it here:\nhttps://www.planetminecraft.com/data-pack/more-bosses-4856008/.","color":"red"}

# Scoreboards
scoreboard objectives remove MB.settings
scoreboard objectives remove MB.difficulty
scoreboard objectives remove mb.speedrunTimer
scoreboard objectives remove MB.deaths
scoreboard objectives remove MBtotalDeaths
scoreboard objectives remove MBplayers
scoreboard objectives remove MBjump
scoreboard objectives remove MBrngInput
scoreboard objectives remove MBrngOutput
scoreboard objectives remove MB.timer
scoreboard objectives remove MBdeathDetect
scoreboard objectives remove MB.timer.OF
scoreboard objectives remove MBbossHealth
scoreboard objectives remove MBbossDummy
scoreboard objectives remove MBbossDummy2
scoreboard objectives remove MBbossID
scoreboard objectives remove MB.coas
scoreboard objectives remove MBitemID
scoreboard objectives remove MBitemCooldown
scoreboard objectives remove slimePad
scoreboard objectives remove slimePad.CD
scoreboard objectives remove royalJello
scoreboard objectives remove shatteredMirror
scoreboard objectives remove dimensionRip
scoreboard objectives remove dimensionRip.CD
scoreboard objectives remove boneBuckler
scoreboard objectives remove boneBuckler.CD
scoreboard objectives remove beeCloak
scoreboard objectives remove beeCloakFly
scoreboard objectives remove beeCloakSneak
scoreboard objectives remove pollinator
scoreboard objectives remove pollinator.CD
scoreboard objectives remove venomQuiver
scoreboard objectives remove royalNectar
scoreboard objectives remove soulLeech
scoreboard objectives remove soulLeech.CD
scoreboard objectives remove soulLeechCount

# Bossbars
bossbar remove kingslime
bossbar remove restlesssoul
bossbar remove queenbee
bossbar remove herobrine
bossbar remove impostor

# Teams
team remove MBpets
team remove MB.boss

# Add new technicals
function mb:technical/initiate/technical_add