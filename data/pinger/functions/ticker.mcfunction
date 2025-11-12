#---[ 毎tick(=0.05秒間隔)実行される処理群 ]---#


# ジャンプ検知
execute as @a if score @s PINGER_current_jump_count > @s PINGER_last_jump_count run function pinger:jump_detector

# 着地時にFLAG_any_jumpingをリセット
execute as @a if entity @s[nbt={OnGround:1b},scores={PINGER_FLAG_any_jumping=1}] run scoreboard players set @s PINGER_FLAG_any_jumping 0

# 滞空中は常にmidair_manager実行
execute as @a if score @s PINGER_FLAG_any_jumping matches 1 as @s run function pinger:midair_manager

# ワールド内にピンが１つ以上あるならping_manager実行
execute if entity @e[tag=PINGER_ping] run function pinger:ping_manager
