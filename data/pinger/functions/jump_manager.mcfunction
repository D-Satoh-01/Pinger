#---[ ジャンプ検知時の処理群 ]---#


# start_air_sneak_flag と end_air_sneak_flag をリセット
scoreboard players set @s Pinger_start_air_sneak_flag 0
scoreboard players set @s Pinger_end_air_sneak_flag 0

# ジャンプ開始時のスニーク状態判定
# スニーク状態でジャンプしたら sneaking_jump_flag を 0 にする
execute as @s if entity @s[predicate=pinger:sneaking] run scoreboard players set @s Pinger_sneaking_jump_flag 0
# 非スニーク状態でジャンプしたら sneaking_jump_flag を 1 にする
execute as @s if entity @s[predicate=!pinger:sneaking] run scoreboard players set @s Pinger_sneaking_jump_flag 1

# ジャンプ時に Pinger_last_jump を更新
execute as @a if score @s Pinger_current_jump_count > @s Pinger_last_jump_count run scoreboard players operation @s Pinger_last_jump_count = @s Pinger_current_jump_count
