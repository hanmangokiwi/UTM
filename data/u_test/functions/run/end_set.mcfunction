#> u_test:run/end_set
#   Outputs the conclusion of one unit test set
##

tellraw @a ["",{"nbt":"name","storage":"u_test","color":"aqua"},{"text":" Test Conclusion: ","color":"yellow"},{"score":{"name":"$passed","objective":"u_test"},"color":"aqua"},{"text":" Passed. ","color":"green"},{"score":{"name":"$failed","objective":"u_test"},"color":"aqua"},{"text":" Failed. ","color":"red"}]

scoreboard players operation $total_passed u_test += $passed u_test
scoreboard players operation $total_failed u_test += $failed u_test

scoreboard players set $passed u_test 0
scoreboard players set $failed u_test 0