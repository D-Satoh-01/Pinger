#---[ レイキャスト処理群 ]---#


# エンティティ検出処理（ノーマルジャンプ時のみ有効）
execute if score @s PINGER_FLAG_normal_jumping matches 1 if score @s PINGER_FLAG_raycast_detection matches 0 if entity @e[distance=..2,sort=nearest,limit=1,tag=!PINGER_ping,type=!player,type=!block_display,type=!item_display,type=!text_display,type=!item,type=!experience_orb,type=!#minecraft:boat,type=!minecart,type=!armor_stand,type=!arrow,type=!item_frame,type=!painting] run function pinger:raycast/detect_entity

# ブロック検出処理（スニークジャンプ時のみ有効）
execute if score @s PINGER_FLAG_sneak_jumping matches 1 if score @s PINGER_FLAG_raycast_detection matches 0 unless block ^ ^ ^ #pinger:ignore_blocks run function pinger:raycast/detect_block

# # 何も検出されなかったとき
# execute if score @s PINGER_FLAG_raycast_detection matches 0 if score @s PINGER_raycast_count matches 1000 run function pinger:raycast/detect_max_range

# レイキャストカウンタ +1
scoreboard players add @s PINGER_raycast_count 1

# 座標を +0.5 進めてレイキャスト再実行
execute if score @s PINGER_FLAG_raycast_detection matches 0 if score @s PINGER_raycast_count matches ..1000 positioned ^ ^ ^0.5 run function pinger:raycast/raycaster
