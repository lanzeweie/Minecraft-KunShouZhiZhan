#execute as @a[scores={worldtimeliushi=-1..}] unless score 剩余时间 worldtimeliushi matches 0 run scoreboard players remove 剩余时间 worldtimeliushi 1

#------------------------缩第一个大圈----------------------------------
#1s减少时间，循环，除非时间=0，否则一直循环下去
execute as @p unless score 剩余时间 worldtimeliushi matches ..0 run scoreboard players remove 剩余时间 worldtimeliushi 1
execute as @p unless score 剩余时间 worldtimeliushi matches ..0 run schedule function hanhankszz:hexin/hexin_1 1s

#-----------------------第一个决赛圈后-----------------------------------
#当缩到第一个决赛圈时
execute as @p if score 剩余时间 worldtimeliushi matches 0 run scoreboard objectives add juesaiquan_1_end dummy ["§b§l困兽之战§r"]
#先等待120s
#初始化第一赛圈整顿时间
execute as @p unless score 剩余时间 worldtimeliushi matches ..0 run scoreboard players remove 剩余时间 juesaiquan_1_end 1
execute as @p if score 剩余时间 worldtimeliushi matches 0 run scoreboard players set 剩余时间 juesaiquan_1_end 120
execute as @p if score 剩余时间 worldtimeliushi matches 0 run scoreboard players set §e第一赛圈 juesaiquan_1_end 10000
execute as @p if score 剩余时间 worldtimeliushi matches 0 run scoreboard players set 整顿时刻 juesaiquan_1_end 9999
execute as @p if score 剩余时间 worldtimeliushi matches 0 run title @a title [{"text":"第一赛圈已经停止","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]a
execute as @p if score 剩余时间 worldtimeliushi matches 0 run title @a subtitle {"text":"120秒后开始缩圈","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}a
execute as @p if score 剩余时间 worldtimeliushi matches 0 run scoreboard objectives setdisplay sidebar juesaiquan_1_end
execute as @p if score 剩余时间 worldtimeliushi matches 0 run worldborder damage amount 0.5
execute as @p if score 剩余时间 worldtimeliushi matches 0 run worldborder damage buffer 10
#抛弃上一个判断点
execute as @p if score 剩余时间 worldtimeliushi matches 0 run scoreboard players set 剩余时间 worldtimeliushi -1
#循环
execute as @p unless score 剩余时间 juesaiquan_1_end matches ..0 run scoreboard players remove 剩余时间 juesaiquan_1_end 1
execute as @p unless score 剩余时间 juesaiquan_1_end matches ..0 run schedule function hanhankszz:hexin/hexin_1 1s
#整顿时间结束
execute as @p if score 剩余时间 juesaiquan_1_end matches 0 run scoreboard objectives add juesaiquan_1_start dummy ["§b§l困兽之战§r"]

#-----------------------第一个决赛圈整顿结束-----------------------------------
#开始第二缩圈
execute as @p if score 剩余时间 juesaiquan_1_end matches 0 run title @a title {"text":"开始缩圈","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}a
execute as @p if score 剩余时间 juesaiquan_1_end matches 0 run title @a subtitle {"text":"范围80方格","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}a
execute as @p if score 剩余时间 juesaiquan_1_end matches 0 run scoreboard players set 剩余时间 juesaiquan_1_start 200
execute as @p if score 剩余时间 juesaiquan_1_end matches 0 run scoreboard players set §e第二赛圈 juesaiquan_1_start 10000
execute as @p if score 剩余时间 juesaiquan_1_end matches 0 run scoreboard objectives setdisplay sidebar juesaiquan_1_start
execute as @p if score 剩余时间 juesaiquan_1_end matches 0 run worldborder set 80 205
#抛弃上一个判断点
execute as @p if score 剩余时间 juesaiquan_1_end matches 0 run scoreboard players set 剩余时间 juesaiquan_1_end -1
#循环
execute as @p unless score 剩余时间 juesaiquan_1_start matches ..0 run scoreboard players remove 剩余时间 juesaiquan_1_start 1
execute as @p unless score 剩余时间 juesaiquan_1_start matches ..0 run schedule function hanhankszz:hexin/hexin_1 1s

#-----------------------第二个决赛圈后-----------------------------------
#开始第二缩圈整顿
execute as @p if score 剩余时间 juesaiquan_1_start matches 0 run scoreboard objectives add juesaiquan_2_end dummy ["§b§l困兽之战§r"]
#先等待120s
#初始化第二赛圈整顿时间
execute as @p unless score 剩余时间 juesaiquan_1_start matches ..0 run scoreboard players remove 剩余时间 juesaiquan_2_end 1
execute as @p if score 剩余时间 juesaiquan_1_start matches 0 run scoreboard players set 剩余时间 juesaiquan_2_end 120
execute as @p if score 剩余时间 juesaiquan_1_start matches 0 run scoreboard players set §e第二赛圈 juesaiquan_2_end 10000
execute as @p if score 剩余时间 juesaiquan_1_start matches 0 run scoreboard players set 整顿时刻 juesaiquan_2_end 9999
execute as @p if score 剩余时间 juesaiquan_1_start matches 0 run title @a title {"text":"第二赛圈已经停止","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}a
execute as @p if score 剩余时间 juesaiquan_1_start matches 0 run title @a subtitle {"text":"120秒后开始缩圈","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}a
execute as @p if score 剩余时间 juesaiquan_1_start matches 0 run scoreboard objectives setdisplay sidebar juesaiquan_2_end
execute as @p if score 剩余时间 juesaiquan_1_start matches 0 run worldborder damage amount 0.75
execute as @p if score 剩余时间 juesaiquan_1_start matches 0 run worldborder damage buffer 2
execute as @p if score 剩余时间 juesaiquan_1_start matches 0 run title @s title {"text":"死亡复活已被禁止","color":"red"}
execute as @p if score 剩余时间 juesaiquan_1_start matches 0 run title @s subtitle {"text":"《困兽之战》","color":"yellow"}
#抛弃上一个判断点
execute as @p if score 剩余时间 juesaiquan_1_start matches 0 run scoreboard players set 剩余时间 juesaiquan_1_start -1
#循环
execute as @p unless score 剩余时间 juesaiquan_2_end matches ..0 run scoreboard players remove 剩余时间 juesaiquan_2_end 1
execute as @p unless score 剩余时间 juesaiquan_2_end matches ..0 run schedule function hanhankszz:hexin/hexin_1 1s

#-----------------------第二个决赛圈整顿结束-----------------------------------
#开始最终缩圈
execute as @p if score 剩余时间 juesaiquan_2_end matches 0 run scoreboard objectives add juesaiquan_2_start dummy ["§b§l困兽之战§r"]
execute as @p if score 剩余时间 juesaiquan_2_end matches 0 run title @a title {"text":"！！！！ 决赛圈 ！！！！","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}a
execute as @p if score 剩余时间 juesaiquan_2_end matches 0 run title @a subtitle {"text":"范围35方格","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}a
execute as @p if score 剩余时间 juesaiquan_2_end matches 0 run scoreboard players set 剩余时间 juesaiquan_2_start 120
execute as @p if score 剩余时间 juesaiquan_2_end matches 0 run scoreboard players set 决赛圈 juesaiquan_2_start 10000
execute as @p if score 剩余时间 juesaiquan_2_end matches 0 run scoreboard objectives setdisplay sidebar juesaiquan_2_start
execute as @p if score 剩余时间 juesaiquan_2_end matches 0 run worldborder set 35 120
#抛弃上一个判断点
execute as @p if score 剩余时间 juesaiquan_2_end matches 0 run scoreboard players set 剩余时间 juesaiquan_2_end -1
#循环
execute as @p unless score 剩余时间 juesaiquan_2_start matches ..0 run scoreboard players remove 剩余时间 juesaiquan_2_start 1
execute as @p unless score 剩余时间 juesaiquan_2_start matches ..0 run schedule function hanhankszz:hexin/hexin_1 1s
#-----------------------决赛圈后-----------------------------------
#开始第二缩圈整顿
execute as @p if score 剩余时间 juesaiquan_2_start matches 0 run effect give @a minecraft:glowing 1000000 1 true
execute as @p if score 剩余时间 juesaiquan_2_start matches 0 run scoreboard objectives add juesaiquan_3_start dummy ["§b§l困兽之战§r"]
execute as @p if score 剩余时间 juesaiquan_2_start matches 0 run scoreboard players set 剩余时间 juesaiquan_3_start 120
execute as @p if score 剩余时间 juesaiquan_2_start matches 0 run scoreboard players set 整顿时刻 juesaiquan_3_start 9999
execute as @p if score 剩余时间 juesaiquan_2_start matches 0 run scoreboard players set §4最终赛圈 juesaiquan_3_start 9999
execute as @p if score 剩余时间 juesaiquan_2_start matches 0 run scoreboard objectives setdisplay sidebar juesaiquan_3_start
execute as @p if score 剩余时间 juesaiquan_2_start matches 0 run worldborder damage amount 1
execute as @p if score 剩余时间 juesaiquan_2_start matches 0 run worldborder damage buffer 6
#抛弃上一个判断点
execute as @p if score 剩余时间 juesaiquan_2_start matches 0 run scoreboard players set 剩余时间 juesaiquan_2_start -1
#循环
execute as @p unless score 剩余时间 juesaiquan_3_start matches ..0 run scoreboard players remove 剩余时间 juesaiquan_3_start 1
execute as @p unless score 剩余时间 juesaiquan_3_start matches ..0 run schedule function hanhankszz:hexin/hexin_1 1s

#-----------------------死亡之终-----------------------------------
#开始
execute as @p if score 剩余时间 juesaiquan_3_start matches 0 run title @a title {"text":"！！！！ 死亡之终 ！！！！","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}a
execute as @p if score 剩余时间 juesaiquan_3_start matches 0 run title @a subtitle {"text":"！直到死亡！","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}a
execute as @p if score 剩余时间 juesaiquan_3_start matches 0 run scoreboard objectives add juesaiquan_3_end dummy ["§4§l困兽之战§r"]
execute as @p if score 剩余时间 juesaiquan_3_start matches 0 run scoreboard players set §7§l-死亡之终-§r juesaiquan_3_end 10000
execute as @p if score 剩余时间 juesaiquan_3_start matches 0 run scoreboard players set ！战斗！ juesaiquan_3_end 9999
execute as @p if score 剩余时间 juesaiquan_3_start matches 0 run scoreboard players set !！战斗！ juesaiquan_3_end 9999
execute as @p if score 剩余时间 juesaiquan_3_start matches 0 run scoreboard players set ！战斗！! juesaiquan_3_end 9999
execute as @p if score 剩余时间 juesaiquan_3_start matches 0 run scoreboard players set !！战斗！! juesaiquan_3_end 9999
execute as @p if score 剩余时间 juesaiquan_3_start matches 0 run scoreboard players set !！战斗！！ juesaiquan_3_end 9999
execute as @p if score 剩余时间 juesaiquan_3_start matches 0 run scoreboard players set §7§l·死亡之终·§r juesaiquan_3_end 9999
execute as @p if score 剩余时间 juesaiquan_3_start matches 0 run scoreboard objectives setdisplay sidebar juesaiquan_3_end
execute as @p if score 剩余时间 juesaiquan_3_start matches 0 run worldborder set 5 90 
execute as @p if score 剩余时间 juesaiquan_3_start matches 0 run worldborder damage amount 5
execute as @p if score 剩余时间 juesaiquan_3_start matches 0 run worldborder damage buffer 0
#抛弃上一个判断点
execute as @p if score 剩余时间 juesaiquan_3_start matches 0 run scoreboard players set 剩余时间 juesaiquan_3_start -1