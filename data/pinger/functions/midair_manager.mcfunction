#---[ 滞空中の処理群 ]---#
# トリガー（旧）：非スニーク状態ジャンプ & 滞空中にスニーク
# トリガー（新）：非スニーク状態ジャンプ & 滞空中スニーク1回 ➡ 追従ピン｜スニーク状態ジャンプ & 滞空中スニーク1回 ➡ 固定ピン


# スニーク開始時にFLAG_air_sneakingを 1 にする
execute if entity @s[predicate=pinger:sneaking] run scoreboard players set @s PINGER_FLAG_air_sneaking 1

# 滞空中スニーク終了時にraycast_starter実行
execute if score @s PINGER_FLAG_air_sneaking matches 1 if entity @s[nbt={OnGround:0b},predicate=!pinger:sneaking] run function pinger:raycast/raycast_starter
