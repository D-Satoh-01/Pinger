#---[ 1秒(=20tick)間隔で実行される処理群 ]---#


# プレイヤー参加検知
execute as @a if score @s Pinger_current_leave_count > @s Pinger_last_leave_count run function pinger:player_manager/access_manager

# 当ファイルを1秒後に再実行（ループ）
schedule function pinger:1s_looper 1s
