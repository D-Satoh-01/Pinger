#---[ プレイヤー歩行距離スコア管理処理群 ]---#


# プレイヤー歩行距離スコア更新
scoreboard players operation @s PINGER_last_walk_score = @s PINGER_current_walk_score

# プレイヤー歩行距離スコア更新フラグを1に更新
scoreboard players set @s PINGER_FLAG_updated_walk_score 1
