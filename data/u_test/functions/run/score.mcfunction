#> u_test:run/score
#   Throws an Assertion Error when u_test.expected != u_test.actual
# @params
#   u_test.expected, u_test.actual
#       32-bit integers
#

execute if score expected u_test = actual u_test run function u_test:helper/pass
execute unless score expected u_test = actual u_test run function u_test:helper/fail_score
scoreboard players add $test_no u_test 1

scoreboard players reset expected u_test
scoreboard players reset actual u_test