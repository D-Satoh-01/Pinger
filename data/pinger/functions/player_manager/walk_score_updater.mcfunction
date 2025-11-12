#---[ プレイヤー歩行距離スコア管理処理群 ]---#


# プレイヤー歩行距離スコア更新
scoreboard players operation @s Pinger_last_walk_score = @s Pinger_current_walk_score

# プレイヤー歩行距離スコア更新フラグを1に更新
scoreboard players set @s Pinger_updated_walk_score_flag 1
