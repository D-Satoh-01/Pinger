#---[ ピンの寿命管理処理群 ]---#


# ピン寿命デクリメント
scoreboard players remove @e[tag=PINGER_ping] PINGER_ping_life 1

# 寿命ゼロのピンを消去
kill @e[tag=PINGER_ping,scores={PINGER_ping_life=..0}]

# ワールド内にエンティティ追従ピンがあるとき、エンティティ追従処理を実行
execute if entity @e[tag=PINGER_following] run function pinger:following_updater
