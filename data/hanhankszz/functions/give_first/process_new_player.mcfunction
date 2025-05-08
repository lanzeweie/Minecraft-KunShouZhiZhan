# 已经处理过的玩家，不再处理（保险逻辑）
execute if score @s player_processed matches 1 run return

# 如果是第一个玩家
execute unless score global world_setup_status matches 1 run function hanhankszz:give_first/give_first_item_and_stop

# 如果是后续玩家
function hanhankszz:give_first/give_other_item
