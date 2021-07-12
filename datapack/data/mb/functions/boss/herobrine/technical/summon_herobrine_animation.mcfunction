############################################################
# Description: Summon Herobrine
############################################################

function mb:boss/technical/boss/global_summon_reset

# Bossbar
execute as @a[scores={MB.difficulty=0}] run bossbar set minecraft:herobrine max 400
execute as @a[scores={MB.difficulty=0}] run bossbar set minecraft:herobrine color white

execute as @a[scores={MB.difficulty=1}] run bossbar set minecraft:herobrine max 400
execute as @a[scores={MB.difficulty=1}] run bossbar set minecraft:herobrine color red

bossbar set minecraft:herobrine visible true

# Summon Herobrine
execute at @e[type=marker,tag=herobrineSummon] run summon lightning_bolt ~ ~ ~
execute at @e[type=marker,tag=herobrineSummon] if entity @a[scores={MB.difficulty=0}] run summon wandering_trader ~ ~5 ~ {Silent:1b,Team:"MB.boss",DeathLootTable:"mb:entities/herobrine/death",PersistenceRequired:1b,Health:400f,Tags:["herobrine"],HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:400001}},{}],HandDropChances:[0.000F,0.000F],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:400000}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:19999980,ShowParticles:0b},{Id:28b,Amplifier:0b,Duration:60,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b},{Id:10b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:400},{Name:"generic.follow_range",Base:100},{Name:"generic.knockback_resistance",Base:.5},{Name:"generic.movement_speed",Base:.7},{Name:"generic.attack_damage",Base:8}],Offers:{}}
execute at @e[type=marker,tag=herobrineSummon] if entity @a[scores={MB.difficulty=1}] run summon wandering_trader ~ ~5 ~ {Silent:1b,Team:"MB.boss",DeathLootTable:"mb:entities/herobrine/death",PersistenceRequired:1b,Health:400f,Tags:["herobrine"],HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:400001}},{}],HandDropChances:[0.000F,0.000F],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:400000}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:19999980,ShowParticles:0b},{Id:28b,Amplifier:0b,Duration:60,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b},{Id:10b,Amplifier:2b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:400},{Name:"generic.follow_range",Base:100},{Name:"generic.knockback_resistance",Base:.7},{Name:"generic.movement_speed",Base:.8},{Name:"generic.attack_damage",Base:8}],Offers:{}}
kill @e[type=marker,tag=herobrineSummon]

# Effects
tellraw @a [{"text":"Herobrine ","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"has awoken!","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
playsound mb:entity.boss.spawns master @a ~ ~ ~ 1 1 1
time set night

# Preparing boss fight
scoreboard players set @a MBbossID 4

execute if entity @a[scores={MB.difficulty=0}] run function mb:boss/herobrine/normal_mode/summon_schedule
execute if entity @a[scores={MB.difficulty=1}] run function mb:boss/herobrine/master_mode/summon_schedule
execute if entity @a[scores={mb.speedrunTimer=1}] run function mb:boss/technical/speedrun_timer/schedule

advancement grant @a only mb:boss/herobrine/summon
