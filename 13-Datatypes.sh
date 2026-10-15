#!/bin/bash
var1="25"
var2="45"
var3="Hello"
echo "$var1+ $var2"
Result=$((var1 + var2+ var3))
echo "Result: $Result"
declare -i num1=10
declare -i num2=5
sum=$((num1 + num2))
echo "Sum: $sum"
declare -i COUNT=94 
### declare -i is used to declare a variable as an integer in bash.###
###This means that the variable can only hold integer values and, any arithmetic operations performed on it will be treated as integer arithmetic.### 
###In this case, COUNT is declared as an integer with an initial value of 94.###
COUNT=$((COUNT + 1))
echo "Updated COUNT: $COUNT"
Fruits=("Apple" "Banana" "Orange" "Grapes")
 ### This line declares an array named Fruits and initializes it with four string elements: "Apple", "Banana", "Orange", and "Grapes".###
echo "Array Fruits: ${Fruits[@]}"