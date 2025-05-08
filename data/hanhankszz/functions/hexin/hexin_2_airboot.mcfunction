execute at @e[tag=airdrop2,type=sheep] if block ~ ~-1 ~ minecraft:air run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 100
execute at @e[tag=airdrop2,type=sheep] if block ~ ~-1 ~ minecraft:air run particle minecraft:flame ~ ~ ~ 0 0 0 0.1 10
execute at @e[tag=airdrop2,type=sheep] unless block ~ ~-1 ~ minecraft:air run kill @e[tag=airdrop2,type=sheep]

execute at @e[tag=airdrop2,type=chest_minecart,nbt={Items:[]}] at @s run particle minecraft:smoke ~ ~1 ~ 1 1 1 0.1 100

execute at @e[tag=airdrop2,type=chest_minecart,nbt={Items:[]}] run kill @s


schedule function hanhankszz:hexin/hexin_2_airboot 0.1s