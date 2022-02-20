#> u_test:helper/fail_score
#   Prints to console when the unit test fails.
#   Increments u_test.$failed by 1
##

tellraw @a ["",{"text":"[Assert] Assertion Failed:                         ","color":"red"},{"text":"Test no. ","color":"white"},{"score":{"name":"$test_no","objective":"u_test"},"color":"white"},{"text":"\n   Expected: ","color":"red"},{"score":{"name":"expected","objective":"u_test"},"color":"red"},{"text":"\n   Actual: ","color":"red"},{"text":"   ","bold":true},{"score":{"name":"actual","objective":"u_test"},"color":"red"}]
scoreboard players add $failed u_test 1