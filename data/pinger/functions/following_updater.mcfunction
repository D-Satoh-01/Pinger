#---[ ピンのエンティティ追従処理群 ]---#


# ピンを対象エンティティに追従させる
execute as @e[type=block_display,tag=PINGER_following] at @s run execute at @e[type=!block_display,type=!player,type=!item_display,type=!text_display,type=!item,type=!experience_orb,type=!#minecraft:boat,type=!minecart,type=!armor_stand,type=!arrow,type=!item_frame,type=!painting,distance=..2,sort=nearest,limit=1] run tp @s ^ ^ ^

# ピンの向きを対象エンティティに合わせる
execute as @e[type=block_display,tag=PINGER_following] at @s run execute store result entity @s Rotation[0] float 1 run data get entity @e[type=!block_display,distance=..2,sort=nearest,limit=1] Rotation[0] 1
execute as @e[type=block_display,tag=PINGER_following] at @s run execute store result entity @s Rotation[1] float 1 run data get entity @e[type=!block_display,distance=..2,sort=nearest,limit=1] Rotation[1] 1

# 追従対象をロストした追従ピンを消去
execute as @e[type=block_display,tag=PINGER_following] at @s run execute unless entity @e[type=!block_display,type=!player,type=!item_display,type=!text_display,type=!item,type=!experience_orb,type=!#minecraft:boat,type=!minecart,type=!armor_stand,type=!arrow,type=!item_frame,type=!painting,distance=..2] run kill @e[type=block_display,tag=PINGER_following,sort=nearest,limit=1]
