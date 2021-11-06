# UTM
Unit Tester for Minecraft Functions

Simple datapack that will output in chat (console) whether two values are equivalent or not.

# Example Usage

Run ```/function u_test:install``` before using to add the correct scoreboard objectives.

Before running any set of unit tests, put ```data modify storage u_test name set value NAME_OF_TEST``` and ```function u_test:run/reset``` at the top of the function to reset the test cases and set a name for the new batch of tests.

***Comparing Scoreboard Values***  
```scoreboard players set expected u_test 7```  
```scoreboard players set actual u_test 3```  
```function u_test:run/score```

***Comparing NBT Storage Values***  
```data modify storage u_test expected set value [1,2,3,4]```  
```data modify storage u_test actual set value [1,2,3,4,5]```  
```function u_test:run/storage```

Both of these will throw an assertion error in chat.

Run ```/function u_test:sample_tests/main``` for an example.
