#---[ 毎tick(=0.05秒間隔)実行される処理群 ]---#


# ジャンプ検知時に1度だけjump_detector実行
execute as @a if score @s PINGER_current_jump_count > @s PINGER_last_jump_count run function pinger:jump_detector

# 着地検知時に1度だけland_detector実行
execute as @a if entity @s[nbt={OnGround:1b},scores={PINGER_FLAG_any_jumping=1}] run function pinger:land_detector

# 滞空中は常にmidair_manager実行
execute as @a if score @s PINGER_FLAG_any_jumping matches 1 as @s run function pinger:midair_manager

# ワールド内にピンが１つ以上あればping_manager実行
execute if entity @e[tag=PINGER_ping] run function pinger:ping_manager
