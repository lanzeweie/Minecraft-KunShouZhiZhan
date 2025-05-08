scoreboard objectives add world_setup_status dummy
scoreboard objectives add player_processed dummy
scoreboard objectives add choose_game_mode trigger
scoreboard objectives add using_start_item minecraft.used:minecraft.carrot_on_a_stick
# 允许所有玩家使用 choose_game_mode trigger
execute as @a run scoreboard players enable @s choose_game_mode
