#> u_test:sample_tests/main
#   Some sample tests for you to understand how to use this.
#
function u_test:run/reset

# this will pass
scoreboard players set expected u_test 5
scoreboard players set actual u_test 5
function u_test:run/score

# this will throw an assertion error
scoreboard players set expected u_test 7
scoreboard players set actual u_test 3
function u_test:run/score

# this will pass
data modify storage u_test expected set value [1,2,3,4]
data modify storage u_test actual set value [1,2,3,4]
function u_test:run/storage

# this will throw an assertion error
data modify storage u_test expected set value [1,2,3,4]
data modify storage u_test actual set value [1,2,3,4,5]
function u_test:run/storage