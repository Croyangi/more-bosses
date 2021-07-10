############################################################
# Description: Runs when Herobrine defeated
############################################################

# Cleanup
kill @e[predicate=mb:dropcraft/herobrine,distance=..1,limit=1,sort=nearest]

# Technical
scoreboard players set @a MBbossID 0
scoreboard players set @a MB.deaths 0
scoreboard players set @a MBbossHealth 0

# Effects
function mb:boss/herobrine/technical/dialogue/death/rng
tellraw @a [{"text":"Herobrine ","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"has been defeated!","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
playsound mb:entity.boss.dies master @a ~ ~ ~ 1 1 1

# Speedrun Timer
execute as @a[scores={mb.speedrunTimer=1}] run tellraw @s [{"text":"You've defeated the ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Restless Soul ","color":"dark_purple","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"in ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"name":"seconds","objective":"MB.timer"},"color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":".","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"name":"miliseconds","objective":"MB.timer"},"color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"s!","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

# Advancements
execute as @a[scores={MB.difficulty=0}] run advancement grant @a only mb:minecraft/removed_herobrine
execute as @a[scores={MB.difficulty=1}] run advancement grant @a only mb:minecraft/myth_busted
execute as @a[advancements={mb:technical/player_hurt=false}] run advancement grant @s only mb:minecraft/flawless_herobrine
function mb:boss/technical/boss_advancements

# Boss loot
execute at @a run function mb:commands/summon/herobrine/herobrine_loot_bag

# Reset
function mb:boss/herobrine/technical/reset/reset