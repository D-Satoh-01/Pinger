#---[ データパックのロード時に1度だけ実行される処理群 ]---#


# １秒間隔ループ処理起動
function pinger:1s_looper

# スコアボード生成
scoreboard objectives add PINGER_current_jump_count minecraft.custom:minecraft.jump
scoreboard objectives add PINGER_last_jump_count dummy
scoreboard objectives add PINGER_FLAG_any_jumping dummy
scoreboard objectives add PINGER_FLAG_normal_jumping dummy
scoreboard objectives add PINGER_FLAG_sneak_jumping dummy
scoreboard objectives add PINGER_FLAG_air_sneaking dummy
scoreboard objectives add PINGER_FLAG_raycast_detection dummy
scoreboard objectives add PINGER_raycast_count dummy
scoreboard objectives add PINGER_ping_life dummy
scoreboard objectives add PINGER_current_leave_count minecraft.custom:minecraft.leave_game
scoreboard objectives add PINGER_last_leave_count dummy
scoreboard objectives add PINGER_current_walk_score minecraft.custom:walk_one_cm
scoreboard objectives add PINGER_last_walk_score dummy
scoreboard objectives add PINGER_FLAG_updated_walk_score dummy

# スコアデフォルト値セット（add ... 0 は既存値リセットしない）
scoreboard players add @a PINGER_current_jump_count 0
scoreboard players add @a PINGER_last_jump_count 0
scoreboard players add @a PINGER_FLAG_any_jumping 0
scoreboard players add @a PINGER_FLAG_normal_jumping 0
scoreboard players add @a PINGER_FLAG_sneak_jumping 0
scoreboard players add @a PINGER_FLAG_air_sneaking 0
scoreboard players add @a PINGER_FLAG_raycast_detection 0
scoreboard players add @a PINGER_raycast_count 0
scoreboard players add @a PINGER_ping_life 0
scoreboard players add @a PINGER_current_leave_count 0
scoreboard players add @a PINGER_last_leave_count 0
scoreboard players add @a PINGER_current_walk_score 0
scoreboard players add @a PINGER_last_walk_score 0
scoreboard players add @a PINGER_FLAG_updated_walk_score 0

# 初期化処理（set ... 0 は既存値リセット）
kill @e[tag=PINGER_ping]
