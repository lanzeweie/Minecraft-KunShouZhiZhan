# 初始化所有新玩家的 player_processed 分数
execute as @a unless entity @s[scores={player_processed=0..}] run scoreboard players set @s player_processed 0

# 对所有未处理的玩家执行处理逻辑
execute as @a[scores={player_processed=0}] run function hanhankszz:process_new_player
