# Runs once when the datapack is (re)loaded.

# Join detection: tp_leave tracks how many times a player has left the game
# (it increments while they are offline and persists), tp_seen stores the
# value we last reacted to. When they differ, the player just logged in.
scoreboard objectives add tp_leave minecraft.custom:minecraft.leave_game
scoreboard objectives add tp_seen dummy

# Haunt system: per-player random rolls so scares are NOT synchronized.
scoreboard objectives add tp_rng dummy
scoreboard objectives add tp_msg dummy

tellraw @a {"text":"[test_pack] loaded successfully!","color":"green","bold":true}
