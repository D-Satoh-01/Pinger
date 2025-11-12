#---[ レイキャスト開始処理群 ]---#


# 現在のジャンプ中に再度ジャンプ検知されないよう sneaking_jump_flag をリセット
scoreboard players set @s Pinger_sneaking_jump_flag 0

# start_air_sneak_flag と end_air_sneak_flag をリセット
scoreboard players set @s Pinger_start_air_sneak_flag 0
scoreboard players set @s Pinger_end_air_sneak_flag 0

# レイキャスト用セットアップ
tag @s add Pinger_raycaster
scoreboard players set #detected_flag Pinger_raycast_temp 0
scoreboard players set #raycast_count Pinger_raycast_temp 0

# レイキャスト実行（レイキャスト完了までループ実行される）
execute if score #detected_flag Pinger_raycast_temp matches 0 if score #raycast_count Pinger_raycast_temp matches ..1000 as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function pinger:raycast/raycaster

# レイキャスト終了後にプレイヤーからPinger_raycasterタグを削除
tag @s remove Pinger_raycaster
