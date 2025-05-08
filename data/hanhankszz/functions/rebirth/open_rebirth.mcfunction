# 初始化玩家重生
scoreboard objectives add rebirth_player_name dummy
scoreboard objectives add juesaiquan_1_start dummy ["§b§l困兽之战§r"]
scoreboard players set 剩余时间 juesaiquan_1_start 200
scoreboard players set @a rebirth_player_name 60
title @a title {"text":"死亡重生已开启","color":"red"}
title @a subtitle {"text":"《困兽之战》","color":"yellow"}
tellraw @a [{"text":"——————————困兽之战————————————————","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a [{"text":"已开启第一个大圈死亡复活模式","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a [{"text":"在第一个大圈死亡将会在5秒后复活","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a [{"text":"不允许关闭，仅对当前玩家生效，后续参加的玩家无效","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a [{"text":"—————————————————————————————————————","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 剩余时间 juesaiquan_1_start matches 200 run function hanhankszz:rebirth/hexin_rebirth

