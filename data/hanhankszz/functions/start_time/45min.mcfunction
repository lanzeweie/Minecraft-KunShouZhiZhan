scoreboard players reset @a choose_game_mode
worldborder center ~ ~
worldborder damage amount 0.1
worldborder damage buffer 14
worldborder warning distance 4
worldborder set 3000
scoreboard players set 结束游戏 play_end 60

# 设置空投时间 不同的值运行不同的数值 默认0 
# 0=默认函数内置的 1=300s 2=600s 3=900s 4=1200s 5=1500s 6=1800s    
# 并且在开始的时候就会用另一个值来固定值
scoreboard objectives add player_airboot_time dummy
execute as @a[scores={choose_game_mode_airboot_time=0}] run scoreboard players set 空投时间 player_airboot_time 0
execute as @a[scores={choose_game_mode_airboot_time=1}] run scoreboard players set 空投时间 player_airboot_time 1
execute as @a[scores={choose_game_mode_airboot_time=2}] run scoreboard players set 空投时间 player_airboot_time 2
execute as @a[scores={choose_game_mode_airboot_time=3}] run scoreboard players set 空投时间 player_airboot_time 3
execute as @a[scores={choose_game_mode_airboot_time=4}] run scoreboard players set 空投时间 player_airboot_time 4
execute as @a[scores={choose_game_mode_airboot_time=5}] run scoreboard players set 空投时间 player_airboot_time 5
execute as @a[scores={choose_game_mode_airboot_time=6}] run scoreboard players set 空投时间 player_airboot_time 6

#预准备
execute as @p if score 剩余时间 play_start matches 9999 run title @a title [{"text":"《困兽之战》","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 剩余时间 play_start matches 9999 run title @a subtitle [{"text":"45min","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 剩余时间 play_start matches 9999 run scoreboard players set 剩余时间 play_start 15
execute as @p unless score 剩余时间 play_start matches ..0 run scoreboard players remove 剩余时间 play_start 1
execute as @p unless score 剩余时间 play_start matches ..0 run schedule function hanhankszz:start_time/45min 1s
execute as @p unless score 剩余时间 play_start matches ..0 run effect give @a minecraft:regeneration 300 9 true
execute as @p if score 剩余时间 play_start matches 14 run clear @a minecraft:written_book{display:{Name:'{"text":"困兽之战(管理员版本)"}'}}

execute as @p if score 剩余时间 play_start matches 7 run title @a title [{"text":"7","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 剩余时间 play_start matches 6 run title @a title [{"text":"6","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 剩余时间 play_start matches 5 run title @a title [{"text":"5","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 剩余时间 play_start matches 4 run title @a title [{"text":"4","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 剩余时间 play_start matches 3 run title @a title [{"text":"3","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 剩余时间 play_start matches 3 run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 1 1
execute as @p if score 剩余时间 play_start matches 2 run title @a title [{"text":"2","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 剩余时间 play_start matches 2 run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 1 1
execute as @p if score 剩余时间 play_start matches 1 run title @a title [{"text":"1","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 剩余时间 play_start matches 1 run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 1 1

#初始化 
execute as @p if score 剩余时间 play_start matches 0 run effect clear @a
execute as @p if score 剩余时间 play_start matches 0 run title @a title [{"text":"Go","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 剩余时间 play_start matches 0 run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 1 1
#计分板  
execute as @p if score 剩余时间 play_start matches 0 run scoreboard objectives add worldtimeliushi dummy ["§b§l困兽之战§r"]
execute as @p if score 剩余时间 play_start matches 0 run scoreboard players set 剩余时间 worldtimeliushi 2700
execute as @p if score 剩余时间 play_start matches 0 run scoreboard players set §e第一赛圈 worldtimeliushi 10000
execute as @p if score 剩余时间 play_start matches 0 run scoreboard objectives setdisplay sidebar worldtimeliushi


execute as @p if score 剩余时间 play_start matches 0 run tellraw @a [{"text":"——————————当前版本 45分钟————————————————","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 剩余时间 play_start matches 0 run tellraw @a [{"text":"你需要持下去！并且存活！杀死看见的有人！相信你自己，活到最后吧！！！！","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 剩余时间 play_start matches 0 run tellraw @a [{"text":"你需要持下去！并且存活！杀死看见的有人！相信你自己，活到最后到吧！！！！","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 剩余时间 play_start matches 0 run tellraw @a [{"text":"你需要持下去！并且存活！杀死看见的有人！相信你自己，活到最后到吧！！！！","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 剩余时间 play_start matches 0 run tellraw @a [{"text":"—————————————————————————————————————","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 剩余时间 play_start matches 0 if score 空投时间 player_airboot_time matches 0 run tellraw @a [{"text":"空投频率/默认时间","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 剩余时间 play_start matches 0 if score 空投时间 player_airboot_time matches 1 run tellraw @a [{"text":"空投频率/5分钟","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 剩余时间 play_start matches 0 if score 空投时间 player_airboot_time matches 2 run tellraw @a [{"text":"空投频率/10分钟","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 剩余时间 play_start matches 0 if score 空投时间 player_airboot_time matches 3 run tellraw @a [{"text":"空投频率/15分钟","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 剩余时间 play_start matches 0 if score 空投时间 player_airboot_time matches 4 run tellraw @a [{"text":"空投频率/20分钟","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 剩余时间 play_start matches 0 if score 空投时间 player_airboot_time matches 5 run tellraw @a [{"text":"空投频率/25分钟","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 剩余时间 play_start matches 0 if score 空投时间 player_airboot_time matches 6 run tellraw @a [{"text":"空投频率/30分钟","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @p if score 剩余时间 play_start matches 0 if score 空投时间 player_airboot_time matches 100 run tellraw @a [{"text":"空投频率/禁用空投","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

#开始
execute as @p if score 剩余时间 play_start matches 0 run gamemode survival @a[gamemode=!survival]
execute as @p if score 剩余时间 play_start matches 0 run clear @a
execute as @p if score 剩余时间 play_start matches 0 run spreadplayers ~ ~ 600 1100 false @a
execute as @p if score 剩余时间 play_start matches 0 run give @a minecraft:stone_sword 1
execute as @p if score 剩余时间 play_start matches 0 run give @a minecraft:stone_pickaxe 1
execute as @p if score 剩余时间 play_start matches 0 run give @a minecraft:stone_axe 1
execute as @p if score 剩余时间 play_start matches 0 run give @a minecraft:stone_shovel 1
execute as @p if score 剩余时间 play_start matches 0 run time set day

execute as @p if score 剩余时间 play_start matches 0 run worldborder set 200 2700
execute as @p if score 剩余时间 play_start matches 0 run schedule function hanhankszz:hexin/hexin_0 1s
execute as @p if score 剩余时间 play_start matches 0 run schedule function hanhankszz:hexin/hexin_1 1s

#空投时间
execute as @p if score 剩余时间 play_start matches 0 if score 空投时间 player_airboot_time matches 0 run schedule function hanhankszz:airboot_time/airboot45min 720s
execute as @p if score 剩余时间 play_start matches 0 if score 空投时间 player_airboot_time matches 1 run schedule function hanhankszz:airboot_time/airboot_tongyong 300s
execute as @p if score 剩余时间 play_start matches 0 if score 空投时间 player_airboot_time matches 2 run schedule function hanhankszz:airboot_time/airboot_tongyong 600s
execute as @p if score 剩余时间 play_start matches 0 if score 空投时间 player_airboot_time matches 3 run schedule function hanhankszz:airboot_time/airboot_tongyong 900s
execute as @p if score 剩余时间 play_start matches 0 if score 空投时间 player_airboot_time matches 4 run schedule function hanhankszz:airboot_time/airboot_tongyong 1200s
execute as @p if score 剩余时间 play_start matches 0 if score 空投时间 player_airboot_time matches 5 run schedule function hanhankszz:airboot_time/airboot_tongyong 1500s
execute as @p if score 剩余时间 play_start matches 0 if score 空投时间 player_airboot_time matches 6 run schedule function hanhankszz:airboot_time/airboot_tongyong 1800s

execute as @p if score 剩余时间 play_start matches 0 run scoreboard objectives add survivors dummy

#抛弃上一个判断点
execute as @p if score 剩余时间 play_start matches 0 run scoreboard players set 剩余时间 play_start -1
