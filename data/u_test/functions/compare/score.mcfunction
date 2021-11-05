execute unless score expected u_test = actual u_test run tellraw @a ["",{"text":"[Assert] Assertion Failed: ","color":"red"},{"text":"Test no. ","color":"white"},{"score":{"name":"$test_no","objective":"u_test"},"bold":true,"color":"white"},{"text":"\nExpected: ","color":"red"},{"score":{"name":"expected","objective":"u_test"},"color":"red"},{"text":"\nActual: ","color":"red"},{"score":{"name":"actual","objective":"u_test"},"color":"red"}]
scoreboard players add $test_no u_test 1

scoreboard players reset expected u_test
scoreboard players reset actual u_test