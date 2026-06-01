# Roll a chance to begin a new "walking toward you" sequence.
execute store result score @s tp_rng run random value 1..180
execute if score @s tp_rng matches 1 run function test_pack:scare_start
