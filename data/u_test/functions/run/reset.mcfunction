#> u_test:run/reset
#   Declares the start of a new batch of unit tests
#   Sets u_test.$test_no to 1, resets all expected/actual u_test pairs.
#

tellraw @a ["",{"text":"\n[====== Unit Test ","bold":true,"color":"yellow"},{"nbt":"name","storage":"u_test","bold":false,"color":"aqua"},{"text":" ======]","bold":true,"color":"yellow"}]
scoreboard players set $test_no u_test 1
scoreboard players reset expected u_test
scoreboard players reset actual u_test

scoreboard players set $passed u_test 0
scoreboard players set $failed u_test 0

data remove storage u_test expected
data remove storage u_test actual