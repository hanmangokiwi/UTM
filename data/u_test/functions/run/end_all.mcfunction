#> u_test:run/end_test
#   Outputs the conclusion of whole unit test set
#

tellraw @a ["",{"text":"\nOverall Unit Test Conclusion: ","color":"yellow"},{"score":{"name":"$total_passed","objective":"u_test"},"color":"aqua"},{"text":" Passed. ","color":"green"},{"score":{"name":"$total_failed","objective":"u_test"},"color":"aqua"},{"text":" Failed. ","color":"red"}]

scoreboard players set $total_passed u_test 0
scoreboard players set $total_failed u_test 0
scoreboard players set $passed u_test 0
scoreboard players set $failed u_test 0