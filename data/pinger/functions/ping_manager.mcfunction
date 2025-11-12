#---[ ピンの寿命管理処理群 ]---#


# ピン寿命デクリメント
scoreboard players remove @e[tag=Pinger_ping] Pinger_ping_life 1

# 寿命ゼロのピンを消去
kill @e[tag=Pinger_ping,scores={Pinger_ping_life=..0}]

# ワールド内にエンティティ追従ピンがあるとき、エンティティ追従処理を実行
execute if entity @e[tag=Pinger_following] run function pinger:following_updater
