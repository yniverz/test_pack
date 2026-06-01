# Play footstep sounds a couple of blocks BEHIND the player (along their facing).
# ^ ^ ^-N uses local coordinates: negative "forward" = behind the player.
execute rotated as @s positioned ^ ^ ^-2 run playsound minecraft:block.stone.step player @s ~ ~ ~ 0.7 0.8
execute rotated as @s positioned ^ ^ ^-2.6 run playsound minecraft:block.gravel.step player @s ~ ~ ~ 0.6 0.7

# Sometimes (50% chance) also flash a creepy message above the hotbar.
execute store result score @s tp_rng run random value 1..2
execute if score @s tp_rng matches 1 run function test_pack:scary_message
