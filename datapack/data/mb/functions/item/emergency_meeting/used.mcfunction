############################################################
# Description: Used Emergency Button
############################################################

playsound mb:item.emergency_meeting.used master @a[distance=..16]

scoreboard players set emergency_meeting.rng mb.dummy1 0
execute if predicate mb:chance/one_tenth run scoreboard players set emergency_meeting.rng mb.dummy1 1

tag @e[distance=1..5,sort=nearest,limit=1] add mb.emergency_meeting.tag
execute as @e[tag=mb.emergency_meeting.tag] unless score emergency_meeting.rng mb.dummy1 matches 1 run tellraw @a [{"selector":"@s"},{"text":" was not the impostor..."}]
execute as @e[tag=mb.emergency_meeting.tag] if score emergency_meeting.rng mb.dummy1 matches 1 run tellraw @a [{"selector":"@s"},{"text":" was the impostor...","color":"red"}]
data merge entity @e[tag=mb.emergency_meeting.tag,limit=1] {DeathLootTable:"null"}
kill @e[tag=mb.emergency_meeting.tag]