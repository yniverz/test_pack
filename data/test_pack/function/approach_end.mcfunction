# The footsteps have reached you. One last, very close step right behind you...
execute rotated as @s positioned ^ ^ ^-1 run playsound minecraft:block.stone.step player @s ~ ~ ~ 1 0.6

# Sometimes (50% chance) flash a creepy message above the hotbar.
execute store result score @s tp_rng run random value 1..2
execute if score @s tp_rng matches 1 run function test_pack:scary_message

# Reset so a brand-new approach can be rolled again later.
scoreboard players set @s tp_appr 0
