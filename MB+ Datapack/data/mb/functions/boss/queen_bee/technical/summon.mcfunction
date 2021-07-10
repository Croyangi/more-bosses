############################################################
# Description: Summon Queen Bee
############################################################

tag @a add mb.queen_bee.active

function mb:boss/technical/boss/global_summon

execute as @a[scores={MB.difficulty=0}] run bossbar set mb:queenbee max 300
execute as @a[scores={MB.difficulty=0}] run bossbar set mb:queenbee name {"text":"\ub030","font":"mb:boss"}
execute as @a[scores={MB.difficulty=1}] run bossbar set mb:queenbee max 400
execute as @a[scores={MB.difficulty=1}] run bossbar set mb:queenbee name {"text":"\ub031","font":"mb:boss"}
bossbar set mb:queenbee visible true

execute at @s[scores={MB.difficulty=0}] run summon bee ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Health:1f,Motion:[0.0,0.5,0.0],Tags:["mb.queen_bee.AI","mb.queen_bee","mb.queen_bee.bee_modify","mb.queen_bee.cleanup"],Passengers:[{id:"minecraft:slime",Silent:1b,DeathLootTable:"mb:entities/queen_bee/death",CustomName:'{"text":"mb.queen_bee.cleanup"}',PersistenceRequired:1b,Health:300f,Size:2,Tags:["mb.queen_bee.hitbox","mb.queen_bee","mb.queen_bee.","mb.queen_bee.bee_modify"],Passengers:[{id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["mb.queen_bee.model","mb.queen_bee","mb.queen_bee.cleanup"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:300000}}]}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:300},{Name:"generic.attack_damage",Base:0}]}],CustomName:'{"text":"Queen Bee","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b},{Id:11b,Amplifier:4b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1},{Name:"generic.follow_range",Base:100},{Name:"generic.knockback_resistance",Base:0.5},{Name:"generic.attack_damage",Base:3}]}
execute at @s[scores={MB.difficulty=1}] run summon bee ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Health:1f,Motion:[0.0,0.5,0.0],Tags:["mb.queen_bee.AI","mb.queen_bee","mb.queen_bee.bee_modify","mb.queen_bee.cleanup"],Passengers:[{id:"minecraft:slime",Silent:1b,DeathLootTable:"mb:entities/queen_bee/death",CustomName:'{"text":"mb.queen_bee.cleanup"}',PersistenceRequired:1b,Health:400f,Size:2,Tags:["mb.queen_bee.hitbox","mb.queen_bee","mb.queen_bee.cleanup","mb.queen_bee.bee_modify"],Passengers:[{id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["mb.queen_bee.model","mb.queen_bee","mb.queen_bee.cleanup"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:300000}}]}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:400},{Name:"generic.attack_damage",Base:0}]}],CustomName:'{"text":"Queen Bee","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b},{Id:11b,Amplifier:4b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1},{Name:"generic.follow_range",Base:100},{Name:"generic.knockback_resistance",Base:0.5},{Name:"generic.attack_damage",Base:3}]}

tellraw @a [{"translate":"chat.mb.queen_bee","color":"yellow","bold":true},{"text":" "},{"translate":"chat.mb.boss.summon","color":"white"}]
playsound mb:entity.boss.spawns master @a ~ ~ ~ 1 1 1

execute as @s[scores={MB.difficulty=0}] run function mb:boss/queen_bee/normal_mode/tick
execute as @s[scores={MB.difficulty=1}] run function mb:boss/queen_bee/master_mode/tick

execute as @s[scores={MB.difficulty=0}] run function mb:boss/queen_bee/normal_mode/schedule_attacks
execute as @s[scores={MB.difficulty=1}] run function mb:boss/queen_bee/master_mode/schedule_attacks

function mb:boss/technical/speedrun_timer/schedule

function mb:boss/queen_bee/technical/tick