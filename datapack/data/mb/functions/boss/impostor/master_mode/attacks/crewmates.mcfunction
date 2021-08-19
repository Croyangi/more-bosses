############################################################
# Description: Summons Crewmates
############################################################

tag @a add mb.impostor.rng_generate
scoreboard players set @a[tag=mb.impostor.rng_generate] mb.rng.input 3
execute as @a[tag=mb.impostor.rng_generate] run function mb:technical/rng_generate

execute if score @a[tag=mb.impostor.rng_generate,limit=1] MB.rng.output matches 0 run execute at @e[type=husk,tag=mb.impostor] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run summon husk ~ ~ ~ {PersistenceRequired:1b,Silent:1b,DeathLootTable:"null",Health:40f,IsBaby:0b,CanBreakDoors:1b,Tags:["mb.crewmate","mb.impostor.cleanup","mb.impostor.minion"],CustomName:'{"text":"Crewmate","color":"red"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:133025}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:80},{Name:"generic.follow_range",Base:100},{Name:"generic.knockback_resistance",Base:0.5},{Name:"generic.movement_speed",Base:0.5},{Name:"generic.attack_damage",Base:40}]}
execute if score @a[tag=mb.impostor.rng_generate,limit=1] MB.rng.output matches 1 run execute at @e[type=husk,tag=mb.impostor] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run summon husk ~ ~ ~ {PersistenceRequired:1b,Silent:1b,DeathLootTable:"null",Health:40f,IsBaby:0b,CanBreakDoors:1b,Tags:["mb.crewmate","mb.impostor.cleanup","mb.impostor.minion"],CustomName:'{"text":"Crewmate","color":"red"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:133026}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:80},{Name:"generic.follow_range",Base:100},{Name:"generic.knockback_resistance",Base:0.5},{Name:"generic.movement_speed",Base:0.5},{Name:"generic.attack_damage",Base:40}]}
execute if score @a[tag=mb.impostor.rng_generate,limit=1] MB.rng.output matches 2 run execute at @e[type=husk,tag=mb.impostor] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run summon husk ~ ~ ~ {PersistenceRequired:1b,Silent:1b,DeathLootTable:"null",Health:40f,IsBaby:0b,CanBreakDoors:1b,Tags:["mb.crewmate","mb.impostor.cleanup","mb.impostor.minion"],CustomName:'{"text":"Crewmate","color":"red"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:133027}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:80},{Name:"generic.follow_range",Base:100},{Name:"generic.knockback_resistance",Base:0.5},{Name:"generic.movement_speed",Base:0.5},{Name:"generic.attack_damage",Base:40}]}
execute at @e[type=husk,tag=mb.impostor] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run playsound mb:entity.impostor.cast master @a[distance=..16]

tag @a[tag=mb.impostor.rng_generate] remove mb.impostor.rng_generate

schedule function mb:boss/impostor/master_mode/attacks/crewmates 15s append
