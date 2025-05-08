execute at @e[tag=airdrop2,type=chest_minecart] run tellraw @a[distance=0..100] {"text":"100格以内检测到空投存在，请留意","color":"red"}
execute as @e[tag=airdrop2,type=chest_minecart,distance=..150] run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 1 1

schedule function hanhankszz:hexin/hexin_2_airboot_20s 20s