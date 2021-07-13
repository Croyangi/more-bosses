############################################################
# Description: Flower on a Stick used
############################################################

# Bee mount link
scoreboard players set bee_mount.rng mb.dummy1 0
execute if predicate mb:chance/one_fiftieth run scoreboard players set bee_mount.rng mb.dummy1 1
execute at @s[scores={mb.floweroas.tog=0}] run function mb:item/flower_on_a_stick/link

scoreboard players add @s mb.floweroas.tog 1
execute as @s[scores={mb.floweroas.tog=2..}] run function mb:item/flower_on_a_stick/despawn

playsound mb:item.flower_on_a_stick.used master @s ~ ~ ~ 1 1 1

# Advancment
advancement grant @s only mb:minecraft/flight_of_the_bumblebee
execute if score bee_mount.rng mb.dummy1 matches 1 run advancement grant @s only mb:minecraft/bad_to_the_bee