# 杀死空的空投箱
schedule function hanhankszz:subsidiary/check_airdrop_kill/main 2s
execute as @e[tag=airdrop2,type=chest_minecart] if data entity @s {Items:[]} run particle minecraft:cloud ~ ~ ~ 1 1 1 0.2 20
execute as @e[tag=airdrop2,type=chest_minecart] if data entity @s {Items:[]} run kill @s
