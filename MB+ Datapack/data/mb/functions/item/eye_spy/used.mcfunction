############################################################
# Description: Used Eye Spy
############################################################

tag @s add eyeSpy
scoreboard players operation @s eyeSpy.cool = @s MBitemCooldown

playsound mb:item.eye_spy.used master @s ~ ~ ~ 1 1 1
execute at @s run particle minecraft:flash ~ ~ ~ 0 0 0 1 1 normal

execute as @e[type=!#mb:friendly_fire,distance=..5,tag=!global.ignore,nbt=!{NoAI:1b}] at @s run function mb:item/eye_spy/stun/apply
execute store result score stun.count MB.dummy1 if entity @e[distance=..5,tag=eyeSpy.stun]
execute if score stun.count MB.dummy1 matches 10.. run advancement grant @s only mb:minecraft/in_the_headlights

function mb:item/eye_spy/loop
function mb:item/eye_spy/stun/loop