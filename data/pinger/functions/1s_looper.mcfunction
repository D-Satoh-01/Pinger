#---[ 1秒(=20tick)間隔で実行される処理群 ]---#


# プレイヤー参加検知
execute as @a if score @s PINGER_current_leave_count > @s PINGER_last_leave_count run function pinger:player_manage/access_manager

# このファイルを1秒後に再実行（ループ）
schedule function pinger:1s_looper 1s
