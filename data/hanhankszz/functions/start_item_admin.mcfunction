clear @s
give @s minecraft:written_book{display:{Name:'[{"text":"困兽之战(管理员版本)","color":"gold","bold":true}]',Lore:['{"text":"困兽之战，世界的边界会持续缩小，你将在其中厮杀并活到最后，只有胜利者，才能得以生存，加油！","color":"aqua"}']},title:"《困兽之战》",author:"lanzeweie",pages:['[{"text":"《困兽之战》  ","color":"gold","bold":true},{"text":"玩法选择  （点击选项即可）  "},{"text":"====================== ","color":"gold"},{"text":"快速对局（15min）  ","color":"green","clickEvent":{"action":"run_command","value":"/trigger choose_game_mode set 15"}},{"text":"均速对局（30min）  ","color":"dark_blue","clickEvent":{"action":"run_command","value":"/trigger choose_game_mode set 30"}},{"text":"持久对局（45min）  ","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger choose_game_mode set 45"}},{"text":"史诗对局（60min）  ","color":"gold","clickEvent":{"action":"run_command","value":"/trigger choose_game_mode set 60"}},{"text":"马拉松（90min）  ","color":"gray","clickEvent":{"action":"run_command","value":"/trigger choose_game_mode set 90"}},{"text":"====================== ","color":"gold"},{"text":"\\n空投频率：\\n"},{"text":"（见下一页）","color":"gray","italic":true}]','[{"text":"（空投频率设置）\\n","color":"gray","italic":true},{"text":"默认时间——模式默认时间\\n","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger choose_game_mode_airboot_time set 0"}},{"text":"5分钟——快速版\\n","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger choose_game_mode_airboot_time set 1"}},{"text":"10分钟——30min的默认时间\\n","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger choose_game_mode_airboot_time set 2"}},{"text":"15分钟——均速\\n","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger choose_game_mode_airboot_time set 3"}},{"text":"20分钟——均速延长\\n","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger choose_game_mode_airboot_time set 4"}},{"text":"25分钟——减少空投频率\\n","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger choose_game_mode_airboot_time set 5"}},{"text":"30分钟——苦难等待\\n","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger choose_game_mode_airboot_time set 6"}},{"text":"禁用空投","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger choose_game_mode_airboot_time set 100"}}]']} 1
tellraw @a {"text":"--------------------","color":"white","bold":true}
tellraw @a {"text":"《困兽之战》","color":"gold"}
tellraw @a {"text":"在不断缩小的圈中存活下来，搜索物资，等待空投，击杀其他玩家，当场上只剩下一个存活玩家的时候，获得胜利。","color":"red"}
tellraw @a {"text":"从厮杀中坚持到最后！！！","color":"red","bold":true}
tellraw @a {"text":"--------------------","color":"white","bold":true}
tellraw @s {"text":"您是管理员","color":"gold"}
tellraw @s {"text":"请打开物品栏《困兽之战》管理员版本","color":"white"}
tellraw @s {"text":"选择游戏模式","color":"white"}
tellraw @s {"text":"--------------------","color":"white","bold":true}
setworldspawn ~ ~ ~
spawnpoint @a ~ ~ ~

worldborder center ~ ~
worldborder damage amount 0.25
worldborder damage buffer 14
worldborder warning distance 4
worldborder set 3000

scoreboard objectives add play_start dummy ["§b§l困兽之战§r"]
scoreboard players set 剩余时间 play_start 9999
scoreboard players set §e准备开始 play_start 10000
scoreboard objectives setdisplay sidebar play_start
effect give @a minecraft:regeneration 9000 20 true
effect give @a minecraft:saturation 90000 9 true
effect give @a minecraft:jump_boost 9000 9 true

#游戏规则
gamerule doMobSpawning true
gamerule doDaylightCycle true
difficulty hard
gamerule mobGriefing true
gamerule keepInventory false

#介绍
title @a title [{"text":"困兽生存之站","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
title @a subtitle {"text":"从厮杀中坚持到最后","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}


scoreboard objectives add play_end dummy

function hanhankszz:hexin/hexin_2_airboot
schedule function hanhankszz:hexin/hexin_2_airboot_20s 20s