############################################################
# Description: Summon King Slime
############################################################

tag @a add mb.king_slime.active

function mb:boss/technical/boss/global_summon

execute as @a[scores={MB.difficulty=0}] run bossbar set mb:kingslime max 200
execute as @a[scores={MB.difficulty=0}] run bossbar set mb:kingslime name {"text":"\ub010","font":"mb:boss"}
execute as @a[scores={MB.difficulty=1}] run bossbar set mb:kingslime max 300
execute as @a[scores={MB.difficulty=1}] run bossbar set mb:kingslime name {"text":"\ub011","font":"mb:boss"}
bossbar set mb:kingslime visible true

execute at @s[scores={MB.difficulty=0}] run summon slime ~ 255 ~ {DeathLootTable:"mb:entities/king_slime/death",PersistenceRequired:1b,Health:200f,Size:20,Tags:["mb.king_slime"],Passengers:[{id:"mb:armor_stand",Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["mb.king_slime.crown"],ArmorItems:[{},{},{},{id:"mb:diamond_hoe",Count:1b,tag:{Unbreakable:1b,CustomModelData:100000}}]}],CustomName:'{"text":"King Slime","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',ActiveEffects:[{Id:11b,Amplifier:5b,Duration:160,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:200},{Name:"generic.knockback_resistance",Base:.5},{Name:"generic.follow_range",Base:100},{Name:"generic.movement_speed",Base:.6},{Name:"generic.attack_damage",Base:2}]}
execute at @s[scores={MB.difficulty=1}] run summon slime ~ 255 ~ {DeathLootTable:"mb:entities/king_slime/death",PersistenceRequired:1b,Health:300f,Size:20,Tags:["mb.king_slime"],Passengers:[{id:"mb:armor_stand",Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["mb.king_slime.crown"],ArmorItems:[{},{},{},{id:"mb:diamond_hoe",Count:1b,tag:{Unbreakable:1b,CustomModelData:100000}}]}],CustomName:'{"text":"King Slime","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',ActiveEffects:[{Id:11b,Amplifier:5b,Duration:160,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:300},{Name:"generic.knockback_resistance",Base:.5},{Name:"generic.follow_range",Base:100},{Name:"generic.movement_speed",Base:.8},{Name:"generic.attack_damage",Base:2}]}

tellraw @a [{"translate":"chat.mb.king_slime","color":"green","bold":true},{"text":" "},{"translate":"chat.mb.boss.summon","color":"white"}]
playsound mb:entity.boss.spawns master @a ~ ~ ~ 1 1 1

execute as @s[scores={MB.difficulty=0}] run function mb:boss/king_slime/normal_mode/tick
execute as @s[scores={MB.difficulty=1}] run function mb:boss/king_slime/master_mode/tick

execute as @s[scores={MB.difficulty=0}] run function mb:boss/king_slime/normal_mode/schedule_attacks
execute as @s[scores={MB.difficulty=1}] run function mb:boss/king_slime/master_mode/schedule_attacks

function mb:boss/technical/speedrun_timer/schedule

function mb:boss/king_slime/technical/tick