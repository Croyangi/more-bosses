############################################################
# Description: Herobrine summon animation
###########################################################

# Remove excess
setblock ~ ~-1 ~ air replace

setblock ~ ~-1 ~1 air replace
setblock ~ ~-1 ~-1 air replace
setblock ~1 ~-1 ~ air replace
setblock ~-1 ~-1 ~ air replace

setblock ~ ~-2 ~ air replace
setblock ~ ~-2 ~1 air replace
setblock ~ ~-2 ~-1 air replace
setblock ~1 ~-2 ~ air replace
setblock ~-1 ~-2 ~ air replace
setblock ~1 ~-2 ~1 air replace
setblock ~-1 ~-2 ~1 air replace
setblock ~1 ~-2 ~-1 air replace
setblock ~-1 ~-2 ~-1 air replace

kill @e[type=item,predicate=mb:dropcraft/mysterious_doll,limit=1,sort=nearest,distance=..1]

# Technical
summon marker ~ ~ ~ {Tags:["herobrineSummon"]}
function mb:boss/herobrine/technical/summon_herobrine_animation