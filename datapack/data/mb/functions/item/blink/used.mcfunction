############################################################
# Description: Used Blink
############################################################

# Technical
tag @s add blink
scoreboard players operation @s blink.cool = item.cooldown mb.dummy1

summon marker ~ ~ ~ {Tags:["blink.raycast"]}
scoreboard players set @s blink.raycast 0
execute at @s anchored eyes run function mb:item/blink/raycast

# Effects
playsound mb:item.blink.teleport master @s ~ ~ ~ 1 1 1

# Damage player
summon slime ~ 1000 ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Size:1,Tags:["blink.slime"],CustomName:'{"text":"over-teleportation","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',ActiveEffects:[{Id:14b,Amplifier:0b,Duration:999999,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:1}]}
tag @s add blink.damage
schedule function mb:item/blink/damage/tp 1t append

function mb:item/blink/loop