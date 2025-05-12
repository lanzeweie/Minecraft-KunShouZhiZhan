give @s minecraft:carrot_on_a_stick{CustomModelData:123456,display:{Name:'{"text":"等待玩家到齐后右键开始游戏","color":"gold","bold":true}',Lore:['{"text":"右键点击以开始游戏","color":"gray"}']}} 1
scoreboard players set global world_setup_status 1
scoreboard players set @s player_processed 1
