#-- -[ 着地検知時の処理群 ]---#


# FLAG_*_jumping系とFLAG_air_*ing系をリセット
scoreboard players set @s PINGER_FLAG_any_jumping 0
scoreboard players set @s PINGER_FLAG_normal_jumping 0
scoreboard players set @s PINGER_FLAG_sneak_jumping 0
scoreboard players set @s PINGER_FLAG_air_standing 0
scoreboard players set @s PINGER_FLAG_air_sneaking 0
