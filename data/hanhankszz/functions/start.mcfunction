#普通玩家
give @a minecraft:written_book{display:{Name:"[{\"text\":\"困兽之战\",\"color\":\"gold\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"困兽之战，世界的边界会持续缩小，你将在其中厮杀并活到最后，只有胜利者，才能得以生存，加油！\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},title:"《困兽之战》",author:"lanzeweie",pages:["[{\"text\":\"《困兽之战》  \",\"color\":\"gold\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"玩法选择  （点击选项即可）  \",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"====================== \",\"color\":\"gold\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"快速对局（15min）  \",\"color\":\"green\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"均速对局（30min） \",\"color\":\"dark_blue\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"持久对局（45min） \",\"color\":\"light_purple\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"史诗对局（60min）   \",\"color\":\"gold\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"马拉松（90min） \",\"color\":\"gray\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"====================== \",\"color\":\"gold\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"您当前非管理员\",\"color\":\"dark_red\",\"bold\":true,\"italic\":false,\"underlined\":true,\"strikethrough\":false,\"obfuscated\":false}]","[{\"text\":\" \",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",]} 1
#管理员
give @s minecraft:written_book{display:{Name:"[{\"text\":\"困兽之战(管理员版本)\",\"color\":\"gold\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"困兽之战，世界的边界会持续缩小，你将在其中厮杀并活到最后，只有胜利者，才能得以生存，加油！\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},title:"《困兽之战》",author:"lanzeweie",pages:["[{\"text\":\"《困兽之战》  \",\"color\":\"gold\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"玩法选择  （点击选项即可）  \",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"====================== \",\"color\":\"gold\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"快速对局（15min）  \",\"color\":\"green\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function hanhankszz:15min\"}},{\"text\":\"均速对局（30min）  \",\"color\":\"dark_blue\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function hanhankszz:30min\"}},{\"text\":\"持久对局（45min  \",\"color\":\"light_purple\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function hanhankszz:45min\"}},{\"text\":\"史诗对局（60min）  \",\"color\":\"gold\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function hanhankszz:60min\"}},{\"text\":\"马拉松（90min）  \",\"color\":\"gray\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function hanhankszz:90min\"}},{\"text\":\"====================== \",\"color\":\"gold\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"持久对局（30min） 额外空投  \",\"color\":\"gray\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function hanhankszz:pure_airdrop/pure_airdrop30min\"}},{\"text\":\"====================== \",\"color\":\"gold\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"开启第一赛圈区死亡复活 （不可取消） 第一赛区结束后关闭\",\"color\":\"red\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function hanhankszz:rebirth/open_rebirth\"}}]"]} 1

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