title @a title [{"text":"空投已经投放","color":"yellow","bold":true}]
title @a subtitle {"text":"请注意空中发光物体","color":"yellow"}

# 在每个玩家位置上方80格生成一个带有"airdrop"标签的盔甲架
execute as @a at @s run summon minecraft:armor_stand ~ ~80 ~ {Marker:1b,PersistenceRequired:1b,Tags:["airdrop"]}

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

# 播放铃声并通知玩家附近有空投
execute as @e[tag=airdrop2,type=chest_minecart,distance=..150] run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 1 1
execute as @e[tag=airdrop2,type=chest_minecart] run tellraw @a[distance=0..150] {"text":"150格以内有降落空投,请注意发光对象","color":"gold"}

# 杀死所有带有"airdrop"标签的盔甲架
kill @e[tag=airdrop]

# 15分钟后重新运行此函数
schedule function hanhankszz:airboot_time/airboot30min 500s
