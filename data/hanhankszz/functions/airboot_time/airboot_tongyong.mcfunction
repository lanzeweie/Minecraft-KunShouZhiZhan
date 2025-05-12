# 新版空投，改为设定时间
title @a title [{"text":"空投已经投放","color":"yellow","bold":true}]
title @a subtitle {"text":"请注意空中发光物体","color":"yellow"}

# 在每个生存玩家位置上方80格生成一个带有"airdrop"标签的盔甲架
execute as @a[gamemode=survival] at @s run summon minecraft:armor_stand ~ ~80 ~ {Marker:1b,PersistenceRequired:1b,Tags:["airdrop"]}

# 将盔甲架随机分散在每个玩家的周围30到60格范围内
execute as @e[tag=airdrop] at @s run spreadplayers ~ ~ 30 60 false @s

# 确保盔甲架不会出现在水中，如果出现在水中，则重新分散
execute as @e[tag=airdrop] at @s unless block ~ ~-38 ~ water run spreadplayers ~ ~ 30 60 false @s

# 确保盔甲架在玩家上方80格位置
execute as @e[tag=airdrop] at @s run tp @s ~ ~80 ~

# 在盔甲架位置生成一个携带空投箱的羊
execute as @e[tag=airdrop] at @s run summon minecraft:sheep ~ ~ ~ {DeathLootTable:"none",PersistenceRequired:1b,Tags:["airdrop2"],Passengers:[{id:"minecraft:chest_minecart",Tags:["airdrop2"],Glowing:1b,LootTable:"hanhankszz:drop",CustomNameVisible:0b,CustomName:"{\"text\":\"§6困兽之战§r\"}"}]}

# 给予携带空投箱的羊缓降和隐身效果
execute as @e[tag=airdrop2,type=sheep] run effect give @s minecraft:slow_falling 1000 10
execute as @e[tag=airdrop2,type=sheep] run effect give @s minecraft:invisibility 1000 8

# 播放铃声并通知生存玩家附近有空投
execute as @e[tag=airdrop2,type=chest_minecart,distance=..150] run playsound minecraft:entity.ender_dragon.growl master @a[gamemode=survival] ~ ~ ~ 1 1 1
execute as @e[tag=airdrop2,type=chest_minecart] run tellraw @a[gamemode=survival,distance=0..150] {"text":"150格以内有降落空投,请注意发光对象","color":"gold"}

# 杀死所有带有"airdrop"标签的盔甲架
kill @e[tag=airdrop]

# 根据用户设置时间来运行  不同的值运行不同的数值 0=默认(此处不存在，因为不会触发此脚本) 1=300s 2=600s 3=900s 4=1200s 5=1500s 6=1800s 
execute as @p if score 空投时间 player_airboot_time matches 1 run schedule function hanhankszz:airboot_time/airboot_tongyong 300s
execute as @p if score 空投时间 player_airboot_time matches 2 run schedule function hanhankszz:airboot_time/airboot_tongyong 600s
execute as @p if score 空投时间 player_airboot_time matches 3 run schedule function hanhankszz:airboot_time/airboot_tongyong 900s
execute as @p if score 空投时间 player_airboot_time matches 4 run schedule function hanhankszz:airboot_time/airboot_tongyong 1200s
execute as @p if score 空投时间 player_airboot_time matches 5 run schedule function hanhankszz:airboot_time/airboot_tongyong 1500s
execute as @p if score 空投时间 player_airboot_time matches 6 run schedule function hanhankszz:airboot_time/airboot_tongyong 1800s
