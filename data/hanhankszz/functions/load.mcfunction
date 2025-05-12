scoreboard objectives add world_setup_status dummy
scoreboard objectives add player_processed dummy
scoreboard objectives add choose_game_mode trigger
scoreboard objectives add choose_game_mode_airboot_time trigger
scoreboard objectives add using_start_item minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add rebirth_player_name dummy

# 初始化记分板
scoreboard objectives add online_players dummy ["§b§l困兽之战§r"]
scoreboard objectives setdisplay sidebar online_players
scoreboard players set §c❤§f·············§4❤§f············§c❤ online_players -1
scoreboard players set §e经典大逃杀玩法 online_players 0
scoreboard players set §7最少玩家2名 online_players 0
scoreboard players set §4❤§f············§c❤§f············§4❤ online_players 10