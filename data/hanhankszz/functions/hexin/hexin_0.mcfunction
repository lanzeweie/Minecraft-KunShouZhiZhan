# 检查是否只有一个处于生存模式的玩家
execute as @p if score 结束游戏 play_end matches 60 run scoreboard players set #survivorCount survivors 0
execute as @p if score 结束游戏 play_end matches 60 run execute as @a[gamemode=survival] run scoreboard players add #survivorCount survivors 1

execute as @p if score 结束游戏 play_end matches 60 run execute if score #survivorCount survivors matches 1 run scoreboard players set 结束游戏 play_end 59


execute as @p if score 结束游戏 play_end matches 59 run execute if entity @a[gamemode=survival] if entity @a[gamemode=survival] run tp @a @s
execute as @p if score 结束游戏 play_end matches 59 run execute if entity @a[gamemode=survival] if entity @a[gamemode=survival] run worldborder set 2000

execute as @p if score 结束游戏 play_end matches 59 run title @a title [{"text":"困兽生存之站","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 结束游戏 play_end matches 59 run title @a subtitle {"text":"仅剩最后幸存者","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}
execute as @p if score 结束游戏 play_end matches 59 run execute as @a[gamemode=survival] run item replace entity @s armor.chest with minecraft:elytra{display:{Name:'{"text":"你是最终胜利者"}'},Enchantments:[{id:"minecraft:unbreaking",lvl:3}]}
execute as @p if score 结束游戏 play_end matches 54 run title @a subtitle {"text":"生存之战已经结束","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}
execute as @p if score 结束游戏 play_end matches 54 run title @a title {"text":"天选之人已产生","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}
execute as @p if score 结束游戏 play_end matches 59 run effect give @a minecraft:jump_boost 9000 12 true
execute as @p if score 结束游戏 play_end matches 59 run effect give @a minecraft:regeneration 9000 12 true
execute as @p if score 结束游戏 play_end matches 59 run effect give @a minecraft:saturation 90000 9 true
execute as @p if score 结束游戏 play_end matches 59 run effect give @p minecraft:speed 90000 3 true

execute as @p unless score 结束游戏 play_end matches 60 unless score 结束游戏 play_end matches 0 run scoreboard players remove 结束游戏 play_end 1

execute as @p unless score 结束游戏 play_end matches 60 unless score 结束游戏 play_end matches 0 run schedule function hanhankszz:hexin/hexin_0 1s

execute as @p if score 结束游戏 play_end matches 48 run function hanhankszz:hexin/hexin_0_end


execute as @p if score 结束游戏 play_end matches 60 run schedule function hanhankszz:hexin/hexin_0 1s



