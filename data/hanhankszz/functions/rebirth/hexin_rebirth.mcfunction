execute as @a unless score 剩余时间 juesaiquan_1_start matches 0 unless score 剩余时间 juesaiquan_1_start matches -1 if score @s rebirth_player_name matches 60 run scoreboard players set @a[gamemode=spectator] rebirth_player_name 6

execute as @a if score @s rebirth_player_name matches 6 run title @s title {"text":"您已经死亡，将在5秒后重生","color":"red"}
execute as @a if score @s rebirth_player_name matches 6 run title @s subtitle {"text":"《困兽之战》","color":"yellow"}
execute as @a if score @s rebirth_player_name matches 6 run gamemode survival @s
execute as @a if score @s rebirth_player_name matches 6 run effect give @s minecraft:regeneration 9000 20 true
execute as @a if score @s rebirth_player_name matches 6 run effect give @s minecraft:saturation 90000 9 true
execute as @a if score @s rebirth_player_name matches 6 run effect give @s minecraft:invisibility 9000 0 true
execute as @a if score @s rebirth_player_name matches 6 run tp @s ~ ~250 ~
execute as @a if score @s rebirth_player_name matches 5 run title @s title [{"text":"5","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a if score @s rebirth_player_name matches 4 run title @s title [{"text":"4","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a if score @s rebirth_player_name matches 3 run title @a title [{"text":"3","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a if score @s rebirth_player_name matches 3 run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 1 1
execute as @a if score @s rebirth_player_name matches 2 run title @a title [{"text":"2","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a if score @s rebirth_player_name matches 2 run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 1 1
execute as @a if score @s rebirth_player_name matches 1 run title @a title [{"text":"1","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a if score @s rebirth_player_name matches 1 run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 1 1
execute as @a if score @s rebirth_player_name matches 0 run title @a title [{"text":"已重回战场","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a if score @s rebirth_player_name matches 0 run say @s §b已经返回战场§r
execute as @a if score @s rebirth_player_name matches 0 run spreadplayers ~ ~ 300 600 false @s
execute as @a if score @s rebirth_player_name matches 0 run gamemode survival @s
execute as @a if score @s rebirth_player_name matches 0 run effect clear @s
execute as @a if score @s rebirth_player_name matches 0 run clear @a
execute as @a if score @s rebirth_player_name matches 0 run scoreboard players set @s rebirth_player_name 60

execute as @a unless score @s rebirth_player_name matches 0 unless score @s rebirth_player_name matches 60 run scoreboard players remove @s rebirth_player_name 1

execute as @a unless score 剩余时间 juesaiquan_1_start matches 0 unless score 剩余时间 juesaiquan_1_start matches -1 run schedule function hanhankszz:rebirth/hexin_rebirth 1s