# Runs once when the datapack is (re)loaded.

# Set up a scoreboard objective used by the tick loop.
scoreboard objectives add tp_timer dummy
scoreboard players set #seconds tp_timer 0

tellraw @a {"text":"[test_pack] loaded successfully!","color":"green","bold":true}
