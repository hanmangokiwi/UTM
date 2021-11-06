#> u_test:sample_tests/main
#   Some sample tests for you to understand how to use this.
#

# set name of the unit test
data modify storage u_test name set value sample_tests
function u_test:run/reset

####################################################################################
# this will pass
scoreboard players set expected u_test 5
scoreboard players set actual u_test 5
function u_test:run/score

####################################################################################
# this will throw an assertion error
scoreboard players set expected u_test 7
scoreboard players set actual u_test 3
function u_test:run/score

####################################################################################
# this will pass
data modify storage u_test expected set value [1,2,3,4]
data modify storage u_test actual set value [1,2,3,4]
function u_test:run/storage

####################################################################################
# this will throw an assertion error
data modify storage u_test expected set value [1,2,3,4]
data modify storage u_test actual set value [1,2,3,4,5]
function u_test:run/storage

####################################################################################
# or you can do this to test multiple scores

# this will pass

# lets suppose you have these variables
scoreboard players set a u_test 1
scoreboard players set b u_test 2
scoreboard players set c u_test 3

# set expected
data modify storage u_test expected set value [1,2,3]

# set actual
execute store result storage u_test copy int 1 run scoreboard players get a u_test
data modify storage u_test actual append from storage u_test copy

execute store result storage u_test copy int 1 run scoreboard players get b u_test
data modify storage u_test actual append from storage u_test copy

execute store result storage u_test copy int 1 run scoreboard players get c u_test
data modify storage u_test actual append from storage u_test copy

# run storage test as normal
function u_test:run/storage

####################################################################################
# this will throw an assertion error

# same thing as last time but expected variable is different
scoreboard players set a u_test 1
scoreboard players set b u_test 2
scoreboard players set c u_test 3

data modify storage u_test expected set value [1,2,3,4]

execute store result storage u_test copy int 1 run scoreboard players get a u_test
data modify storage u_test actual append from storage u_test copy

execute store result storage u_test copy int 1 run scoreboard players get b u_test
data modify storage u_test actual append from storage u_test copy

execute store result storage u_test copy int 1 run scoreboard players get c u_test
data modify storage u_test actual append from storage u_test copy

function u_test:run/storage

####################################################################################
# cleaning these because I don't like leaving stray variables
scoreboard players reset a u_test
scoreboard players reset b u_test
scoreboard players reset c u_test