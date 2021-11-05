#> u_test:run/score
#   Throws an Assertion Error when [u_test.expected] != [u_test.actual]
# @params
#   [u_test.expected], [u_test.actual]
#       data storage objects
#

data modify storage u_test copy set from storage u_test expected
execute store result score $success u_test run data modify storage u_test expected set from storage u_test actual
execute if score $success u_test matches 0 run tellraw @a ["",{"text":"[Assert] Pass. ","color":"green"},{"text":"Test no. ","color":"white"},{"score":{"name":"$test_no","objective":"u_test"},"color":"white"}]
execute unless score $success u_test matches 0 run tellraw @a ["",{"text":"[Assert] Assertion Failed: ","color":"red"},{"text":"Test no. ","color":"white"},{"score":{"name":"$test_no","objective":"u_test"},"color":"white"},{"text":"\nExpected: ","color":"red"},{"nbt":"copy","storage":"u_test","color":"red"},{"text":"\nActual: ","color":"red"},{"nbt":"actual","storage":"u_test","color":"red"}]
scoreboard players add $test_no u_test 1

scoreboard players reset $success u_test
data remove storage u_test expected
data remove storage u_test actual
data remove storage u_test copy