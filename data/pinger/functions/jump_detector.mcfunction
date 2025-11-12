#---[ ジャンプ検知時の処理群 ]---#


# FLAG_air_sneakingをリセット
scoreboard players set @s PINGER_FLAG_air_sneaking 0

# FLAG_any_jumpingを 1 にする
scoreboard players set @s PINGER_FLAG_any_jumping 1

# ノーマル状態ならFLAG_normal_jumpingを 1 にする
execute as @s if entity @s[predicate=!pinger:sneaking] run scoreboard players set @s PINGER_FLAG_normal_jumping 1
# スニーク状態ならFLAG_sneak_jumpingを 1 にする
execute as @s if entity @s[predicate=pinger:sneaking] run scoreboard players set @s PINGER_FLAG_sneak_jumping 1

# last_jump_countをcurrent_jump_countに同期する
scoreboard players operation @s PINGER_last_jump_count = @s PINGER_current_jump_count
