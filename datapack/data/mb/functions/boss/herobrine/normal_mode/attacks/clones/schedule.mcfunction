############################################################
# Description: Functions with Jumpscare attack
############################################################

# Summons Herobrine clones
summon wandering_trader ~ ~ ~ {Silent:1b,Team:"MB.boss",PersistenceRequired:1b,Health:20f,Tags:["herobrineClone"],HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:400001}},{}],HandDropChances:[0.000F,0.000F],ArmorItems:[{},{},{},{id:'minecraft:leather_horse_armor',Count:1b,tag:{CustomModelData:400000}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:19999980,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.follow_range",Base:200},{Name:"generic.knockback_resistance",Base:0.7},{Name:"generic.movement_speed",Base:0.8}],Offers:{}}
summon wandering_trader ~ ~ ~ {Silent:1b,Team:"MB.boss",PersistenceRequired:1b,Health:20f,Tags:["herobrineClone"],HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:400001}},{}],HandDropChances:[0.000F,0.000F],ArmorItems:[{},{},{},{id:'minecraft:leather_horse_armor',Count:1b,tag:{CustomModelData:400000}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:19999980,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.follow_range",Base:200},{Name:"generic.knockback_resistance",Base:0.7},{Name:"generic.movement_speed",Base:0.8}],Offers:{}}
summon wandering_trader ~ ~ ~ {Silent:1b,Team:"MB.boss",PersistenceRequired:1b,Health:20f,Tags:["herobrineClone"],HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:400001}},{}],HandDropChances:[0.000F,0.000F],ArmorItems:[{},{},{},{id:'minecraft:leather_horse_armor',Count:1b,tag:{CustomModelData:400000}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:19999980,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.follow_range",Base:200},{Name:"generic.knockback_resistance",Base:0.7},{Name:"generic.movement_speed",Base:0.8}],Offers:{}}
summon wandering_trader ~ ~ ~ {Silent:1b,Team:"MB.boss",PersistenceRequired:1b,Health:20f,Tags:["herobrineClone"],HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:400001}},{}],HandDropChances:[0.000F,0.000F],ArmorItems:[{},{},{},{id:'minecraft:leather_horse_armor',Count:1b,tag:{CustomModelData:400000}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:19999980,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.follow_range",Base:200},{Name:"generic.knockback_resistance",Base:0.7},{Name:"generic.movement_speed",Base:0.8}],Offers:{}}

# Technical
function mb:boss/herobrine/normal_mode/attacks/clones/tick
schedule function mb:boss/herobrine/normal_mode/attacks/clones/kill_clones 8s append
schedule function mb:boss/herobrine/normal_mode/attacks/clones/spreadplayers 1t append