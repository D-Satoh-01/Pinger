#---[ レイキャスト処理群 ]---#


# エンティティ検出判定
execute if score #detected_flag Pinger_raycast_temp matches 0 if entity @e[distance=..2,sort=nearest,limit=1,tag=!Pinger_ping,type=!player,type=!block_display,type=!item_display,type=!text_display,type=!item,type=!experience_orb,type=!#minecraft:boat,type=!minecart,type=!armor_stand,type=!arrow,type=!item_frame,type=!painting] run function pinger:raycast/detect_entity

# ブロック検出判定
execute if score #detected_flag Pinger_raycast_temp matches 0 unless block ^ ^ ^ #pinger:ignore_blocks run function pinger:raycast/detect_block

# # 何も検出されなかったとき
# execute if score #detected_flag Pinger_raycast_temp matches 0 if score #raycast_count Pinger_raycast_temp matches 1000 run function pinger:raycast/detect_max_range

# レイキャストカウンタ +1
scoreboard players add #raycast_count Pinger_raycast_temp 1

# 座標を +0.5 進めてレイキャスト再試行
execute if score #detected_flag Pinger_raycast_temp matches 0 if score #raycast_count Pinger_raycast_temp matches ..1000 positioned ^ ^ ^0.5 run function pinger:raycast/raycaster
