############################################################
# Description: Summons Springy Slime
############################################################

execute at @e[type=slime,tag=mb.king_slime] run summon slime ~ ~ ~ {Health:2f,Size:2,CustomName:'{"text":"Springy Slime","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.follow_range",Base:100},{Name:"generic.movement_speed",Base:2},{Name:"generic.attack_damage",Base:2}]}

schedule function mb:boss/king_slime/master_mode/attacks/springy_slime 10s