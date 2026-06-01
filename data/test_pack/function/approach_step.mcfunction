# Advances an in-progress approach. Runs as @s, at the player's position.

# Count down to the next footstep; if it's not time yet, stop here.
scoreboard players remove @s tp_appt 1
execute if score @s tp_appt matches 1.. run return 0

# Time for a step: wait 4 ticks (0.2s) until the next one.
scoreboard players set @s tp_appt 4

# Copy the current distance into storage so the macro can place the sound there,
# then play a footstep that many blocks behind the player. As tp_appr shrinks,
# the source moves closer, so it naturally gets louder = "walking toward you".
execute store result storage test_pack:macro dist int 1 run scoreboard players get @s tp_appr
function test_pack:play_step with storage test_pack:macro

# Move several blocks closer for the next step, so the whole approach is only
# about 2-3 footsteps before it reaches you.
scoreboard players remove @s tp_appr 5

# When it reaches the player, do the final close scare and end the sequence.
execute if score @s tp_appr matches ..0 run function test_pack:approach_end
