# Give the player a random cooldown the first time we ever see them.
# ("unless score = itself" is true only when the score has no value yet.)
execute unless score @s tp_cool = @s tp_cool run function test_pack:set_cooldown

# Count the cooldown down by one tick.
scoreboard players remove @s tp_cool 1

# When it runs out, start a scare and roll a fresh 2-10 minute cooldown.
execute if score @s tp_cool matches ..0 run function test_pack:scare_start
execute if score @s tp_cool matches ..0 run function test_pack:set_cooldown
