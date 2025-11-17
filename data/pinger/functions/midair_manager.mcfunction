#---[ 滞空中の処理群 ]---#


# ノーマル状態ならFLAG_air_standingを 1 にする
execute if entity @s[predicate=!pinger:sneaking] run scoreboard players set @s PINGER_FLAG_air_standing 1

# スニーク開始時にFLAG_air_standingが1ならFLAG_air_sneakingを 1 にする
execute if entity @s[predicate=pinger:sneaking] if score @s PINGER_FLAG_air_standing matches 1 run scoreboard players set @s PINGER_FLAG_air_sneaking 1

# 滞空中スニーク終了時にraycast_starter実行
execute if score @s PINGER_FLAG_air_sneaking matches 1 if entity @s[nbt={OnGround:0b},predicate=!pinger:sneaking] run function pinger:raycast/raycast_starter
