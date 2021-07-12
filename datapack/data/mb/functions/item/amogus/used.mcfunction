############################################################
# Description: Used Amogus
############################################################

playsound mb:item.amogus.used master @a[distance=..16]

# Mini Crewmate despawn
scoreboard players operation .search amogus.UUID = @s amogus.UUID
execute as @e[type=wandering_trader,tag=mb.amogus.mini_crewmate] if score @s amogus.UUID = .search amogus.UUID run tp @s ~ -1000 ~
execute as @e[type=wandering_trader,tag=mb.amogus.mini_crewmate] if score @s amogus.UUID = .search amogus.UUID run kill @s
scoreboard players set amogus.rng MB.dummy1 0
execute if predicate mb:chance/one_third run scoreboard players set amogus.rng MB.dummy1 1
execute as @s[scores={amogus.tog=0}] at @s run function mb:item/amogus/link
item replace entity @s[scores={amogus.tog=0}] weapon.mainhand with carrot_on_a_stick{display:{Name:'{"translate":"item.mb.amogus","color":"yellow","italic":false}',Lore:['{"translate":"item.mb.tag.summon","color":"dark_gray","italic":true}','{"text":" "}','{"translate":"item.mb.amogus.lore","color":"dark_green","italic":false}','{"translate":"item.mb.summon.empty_tag","color":"white","italic":false}','{"translate":"pack.mb","color":"dark_purple","italic":true}']},CustomModelData:133035} 1

# Toggle
scoreboard players add @s amogus.tog 1
item replace entity @s[scores={amogus.tog=2..}] weapon.mainhand with carrot_on_a_stick{display:{Name:'{"translate":"item.mb.amogus","color":"yellow","italic":false}',Lore:['{"translate":"item.mb.tag.summon","color":"dark_gray","italic":true}','{"text":" "}','{"translate":"item.mb.amogus.lore","color":"dark_green","italic":false}','{"translate":"item.mb.summon.full_tag","color":"white","italic":false}','{"translate":"pack.mb","color":"dark_purple","italic":true}']},CustomModelData:133034} 1
execute as @s[scores={amogus.tog=2..}] run scoreboard players set @s amogus.tog 0

function mb:item/amogus/loop