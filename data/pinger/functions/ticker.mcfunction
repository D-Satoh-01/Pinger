#---[ 毎tick(=0.05秒間隔)実行される処理群 ]---#


# ジャンプ検知
execute as @a if score @s Pinger_current_jump_count > @s Pinger_last_jump_count run function pinger:jump_manager

# 着地したら sneaking_jump_flag をリセット
execute as @a if entity @s[scores={Pinger_sneaking_jump_flag=1},nbt={OnGround:1b}] run scoreboard players set @s Pinger_sneaking_jump_flag 0

# ピン発動トリガー判定
execute as @a if score @s Pinger_sneaking_jump_flag matches 1 as @s run function pinger:trigger_condition_checker

# ワールド内にピンが1つ以上あるとき、ピン寿命管理処理を実行
execute if entity @e[tag=Pinger_ping] run function pinger:ping_manager
