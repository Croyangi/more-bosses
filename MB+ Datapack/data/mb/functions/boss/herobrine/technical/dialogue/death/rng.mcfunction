############################################################
# Description: Generates RNG for dialogue
############################################################

scoreboard players set @a MBrngInput 3
execute as @a run function mb:technical/rng_generate

execute as @a run function mb:boss/herobrine/technical/dialogue/death/dialogue