#---[ プレイヤー入退室管理処理群 ]---#


# プレイヤー歩行距離スコア更新
execute if score @s PINGER_FLAG_updated_walk_score matches 0 run function pinger:player_manage/walk_score_updater

# プレイヤー参加後、最初の歩行時にテキスト表示
execute if score @s PINGER_current_walk_score > @s PINGER_last_walk_score run tellraw @s ["",{"text":"［PINGER_v2.0.2］","bold":true,"color":"#80D6FF"},{"text":"ピン機能アクティブ","bold":true},{"text":"\n・"},{"text":"ピンの打ち方","bold":true},{"text":"：非スニーク状態ジャンプ後の滞空中にスニーク"}]

# プレイヤー退出回数更新
execute if score @s PINGER_current_walk_score > @s PINGER_last_walk_score run scoreboard players operation @s PINGER_last_leave_count = @s PINGER_current_leave_count

# プレイヤー歩行距離スコア更新フラグを0に更新
execute if score @s PINGER_current_walk_score > @s PINGER_last_walk_score run scoreboard players set @s PINGER_FLAG_updated_walk_score 0
