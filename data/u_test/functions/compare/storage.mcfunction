execute store result score $success u_test run data modify storage u_test expected set from storage u_test actual
execute if score $success u_test matches 0 run tellraw @a ["",{"text":"[Assert] Assertion Failed: ","color":"red"},{"text":"Test no. ","bold":true,"color":"white"},{"score":{"name":"$test_no","objective":"u_test"},"bold":true,"color":"white"},{"text":"\nExpected: ","color":"red"},{"nbt":"expected","storage":"u_test","color":"red"},{"text":"\nActual: ","color":"red"},{"nbt":"actual","storage":"u_test","color":"red"}]
scoreboard players add $test_no u_test 1

scoreboard players reset $success u_test
data remove storage u_test expected
data remove storage u_test actual