#---[ ピンのエンティティ追従処理群 ]---#


# ピンを対象エンティティに追従させる
execute as @e[type=block_display,tag=PINGER_following] at @s run execute at @e[distance=..2,sort=nearest,limit=1,tag=!PINGER_ping,type=!player,type=!block_display,type=!item_display,type=!text_display,type=!item,type=!experience_orb,type=!#minecraft:boat,type=!minecart,type=!armor_stand,type=!arrow,type=!item_frame,type=!painting] run tp @s ^ ^ ^

# ピンの向きを対象エンティティに合わせる
execute as @e[type=block_display,tag=PINGER_following] at @s run execute store result entity @s Rotation[0] float 1 run data get entity @e[distance=..2,sort=nearest,limit=1,type=!block_display] Rotation[0] 1
execute as @e[type=block_display,tag=PINGER_following] at @s run execute store result entity @s Rotation[1] float 1 run data get entity @e[distance=..2,sort=nearest,limit=1,type=!block_display] Rotation[1] 1

# 追従対象をロストした追従ピンを消去
execute as @e[type=block_display,tag=PINGER_following] at @s run execute unless entity @e[distance=..2,tag=!PINGER_ping,type=!player,type=!block_display,type=!item_display,type=!text_display,type=!item,type=!experience_orb,type=!#minecraft:boat,type=!minecart,type=!armor_stand,type=!arrow,type=!item_frame,type=!painting] run kill @e[type=block_display,tag=PINGER_following,sort=nearest,limit=1]
