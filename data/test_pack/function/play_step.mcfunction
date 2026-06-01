# Macro: play a layered footstep $(dist) blocks BEHIND the player.
# Volume 1.0 lets distance attenuation do the work, so far steps sound faint
# and near steps sound loud. Two sounds layered = more natural footfall.
$execute rotated as @s positioned ^ ^ ^-$(dist) run playsound minecraft:block.stone.step player @s ~ ~ ~ 1 0.8
$execute rotated as @s positioned ^ ^ ^-$(dist) run playsound minecraft:block.gravel.step player @s ~ ~ ~ 0.8 0.7
