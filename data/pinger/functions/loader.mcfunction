#---[ データパックのロード時に1度だけ実行される処理群 ]---#


# 1秒間隔ループ処理起動
function pinger:1s_looper

# スコアボード生成
scoreboard objectives add Pinger_current_jump_count minecraft.custom:minecraft.jump
scoreboard objectives add Pinger_last_jump_count dummy
scoreboard objectives add Pinger_sneaking_jump_flag dummy
scoreboard objectives add Pinger_start_air_sneak_flag dummy
scoreboard objectives add Pinger_end_air_sneak_flag dummy
scoreboard objectives add Pinger_raycast_temp dummy
scoreboard objectives add Pinger_ping_life dummy
scoreboard objectives add Pinger_current_leave_count minecraft.custom:minecraft.leave_game
scoreboard objectives add Pinger_last_leave_count dummy
scoreboard objectives add Pinger_current_walk_score minecraft.custom:walk_one_cm
scoreboard objectives add Pinger_last_walk_score dummy
scoreboard objectives add Pinger_updated_walk_score_flag dummy

# スコアデフォルト値設定（add ··· 0 は既存値リセットしない）
scoreboard players add @a Pinger_current_jump_count 0
scoreboard players add @a Pinger_last_jump_count 0
scoreboard players add @a Pinger_sneaking_jump_flag 0
scoreboard players add @a Pinger_start_air_sneak_flag 0
scoreboard players add @a Pinger_end_air_sneak_flag 0
scoreboard players add @a Pinger_raycast_temp 0
scoreboard players add @a Pinger_ping_life 0
scoreboard players add @a Pinger_current_leave_count 0
scoreboard players add @a Pinger_last_leave_count 0
scoreboard players add @a Pinger_current_walk_score 0
scoreboard players add @a Pinger_last_walk_score 0
scoreboard players add @a Pinger_updated_walk_score_flag 0

# 初期化処理（set ··· 0 は既存値リセット）
kill @e[tag=Pinger_ping]
scoreboard players set @a Pinger_sneaking_jump_flag 0


# # カラー識別
# scoreboard objectives add pin_color trigger

# # チーム作成
# team add black
# team modify black color black

# team add dark_blue
# team modify dark_blue color dark_blue

# team add dark_green
# team modify dark_green color dark_green

# team add dark_aqua
# team modify dark_aqua color dark_aqua

# team add dark_red
# team modify dark_red color dark_red

# team add dark_purple
# team modify dark_purple color dark_purple

# team add gold
# team modify gold color gold

# team add gray
# team modify gray color gray

# team add dark_gray
# team modify dark_gray color dark_gray

# team add blue
# team modify blue color blue

# team add green
# team modify green color green

# team add aqua
# team modify aqua color aqua

# team add red
# team modify red color red

# team add light_purple
# team modify light_purple color light_purple

# team add yellow
# team modify yellow color yellow

# team add white
# team modify white color white
