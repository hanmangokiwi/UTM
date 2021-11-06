#> u_test:helper/pass
#   Prints to console when the unit test passes.
#   Increments u_test.$passed by 1
#

tellraw @a ["",{"text":"[Assert] Pass:                                 ","color":"green"},{"text":"     ","bold": "true"},{"text":"Test no. ","color":"white"},{"score":{"name":"$test_no","objective":"u_test"},"color":"white"}]
scoreboard players add $passed u_test 1