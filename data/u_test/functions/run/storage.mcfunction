#> u_test:run/score
#   Throws an Assertion Error when [u_test.expected] != [u_test.actual]
# @params
#   [u_test.expected], [u_test.actual]
#       data storage objects
#

data modify storage u_test copy set from storage u_test expected
execute store result score $success u_test run data modify storage u_test expected set from storage u_test actual
execute if score $success u_test matches 0 run function u_test:helper/pass
execute unless score $success u_test matches 0 run function u_test:helper/fail_storage
scoreboard players add $test_no u_test 1

scoreboard players reset $success u_test
data remove storage u_test expected
data remove storage u_test actual
data remove storage u_test copy