scoreboard objectives add world_setup_status dummy
scoreboard objectives add player_processed dummy
scoreboard objectives add choose_game_mode trigger
scoreboard objectives add choose_game_mode_airboot_time trigger
scoreboard objectives add using_start_item minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add rebirth_player_name dummy

# 输出加载成功信息
tellraw @a {"text":"困兽之战数据包已加载","color":"gold"}