# 初始化所有新玩家的 player_processed 分数
execute as @a unless entity @s[scores={player_processed=0..}] run scoreboard players set @s player_processed 0

# 对所有未处理的玩家执行处理逻辑
execute as @a[scores={player_processed=0}] run function hanhankszz:give_first/process_new_player

# 快速对局（15min）
execute as @a[scores={choose_game_mode=15}] run function hanhankszz:start_time/15min
# 均速对局（30min）
execute as @a[scores={choose_game_mode=30}] run function hanhankszz:start_time/30min
# 持久对局（45min）
execute as @a[scores={choose_game_mode=45}] run function hanhankszz:start_time/45min
# 史诗对局（60min）
execute as @a[scores={choose_game_mode=60}] run function hanhankszz:start_time/60min
# 马拉松（90min）
execute as @a[scores={choose_game_mode=90}] run function hanhankszz:start_time/90min
# 额外空投（30min）
execute as @a[scores={choose_game_mode=31}] run function hanhankszz:pure_airdrop/pure_airdrop30min

# 启用触发器
execute as @a run scoreboard players enable @s choose_game_mode
execute as @a run scoreboard players enable @s choose_game_mode_airboot_time

# 监听使用启动棒（CustomModelData=123456）
execute as @a[scores={using_start_item=1..}] if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:123456}}}] run function hanhankszz:start_item_admin
scoreboard players set @a[scores={using_start_item=1..}] using_start_item 0
