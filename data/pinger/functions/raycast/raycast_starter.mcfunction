#---[ レイキャスト開始処理群 ]---#


# FLAG_air_sneakingをリセット
scoreboard players set @s PINGER_FLAG_air_sneaking 0

# レイキャスト用セットアップ
tag @s add PINGER_raycaster
scoreboard players set @s PINGER_FLAG_raycast_detection 0
scoreboard players set @s PINGER_raycast_count 0

# レイキャスト実行（検知もしくは指定回数に達するまでループ実行される）
execute if score @s PINGER_FLAG_raycast_detection matches 0 if score @s PINGER_raycast_count matches ..1000 as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function pinger:raycast/raycaster

# レイキャスト終了後にプレイヤーからPINGER_raycasterタグを削除
tag @s remove PINGER_raycaster
