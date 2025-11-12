#---[ ピン発動トリガーの判定処理群 ]---#
# 条件：非スニーク状態ジャンプ & 滞空中にスニーク


# 非スニーク状態ジャンプ後の滞空中スニーク時に start_air_sneak_flag を 1 にする
execute if score @s Pinger_sneaking_jump_flag matches 1 if entity @s[nbt={OnGround:0b},predicate=pinger:sneaking] run scoreboard players set @s Pinger_start_air_sneak_flag 1

# 滞空中にスニークが完了したときレイキャスト実行
execute if score @s Pinger_start_air_sneak_flag matches 1 if entity @s[nbt={OnGround:0b},predicate=!pinger:sneaking] run function pinger:raycast/raycast_starter
