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
### Array Fruits: ${Fruits[@]} is used to print all the elements of the Fruits array. The @ symbol is used to represent all the elements of the array.###
echo "First Fruit: ${Fruits[0]}"
### This line prints the first element of the Fruits array, which is "Apple". The index of the first element in an array is 0.###
echo "Second Fruit: ${Fruits[1]}"
### This line prints the second element of the Fruits array, which is "Banana". The index of the second element in an array is 1.###
echo "Third Fruit: ${Fruits[2]}"
### This line prints the third element of the Fruits array, which is "Orange". The index of the third element in an array is 2.###
echo "Fourth Fruit: ${Fruits[3]}"
### This line prints the fourth element of the Fruits array, which is "Grapes". The index of the fourth element in an array is 3.###
echo "Number of Fruits: ${#Fruits[@]}"
### This line prints the number of elements in the Fruits array. The # symbol is used to get the length of the array. In this case, it will print 4, as there are four elements in the Fruits array.###
echo "All Fruits: ${Fruits[*]}"
### This line prints all the elements of the Fruits array, separated by spaces. The * symbol is used to represent all the elements of the array. In this case, it will print "Apple Banana Orange Grapes".###
echo "All Fruits: ${Fruits[@]}"
### This line also prints all the elements of the Fruits array, separated by spaces. The @ symbol is used to represent all the elements of the array. In this case, it will also print "Apple Banana Orange Grapes". The difference between ${Fruits[*]} and ${Fruits[@]} is that the former treats the entire array as a single string, while the latter treats each element of the array as a separate string. In this case, both will produce the same output, but in other contexts, they may behave differently. For example, if you were to use them in a loop, ${Fruits[*]} would iterate over the entire array as a single string, while ${Fruits[@]} would iterate over each element of the array separately.###
NAMES=("Alice" "Bob" "Charlie" "David")
### This line declares an array named NAMES and initializes it with four string elements: "Alice", "Bob", "Charlie", and "David".###
echo "Array NAMES: ${NAMES[@]}"
### Array NAMES: ${NAMES[@]} is used to print all the elements of the NAMES array. The @ symbol is used to represent all the elements of the array. ###
echo "First Name: ${NAMES[0]}"
### This line prints the first element of the NAMES array, which is "Alice". The index of the first element in an array is 0.###
echo "Second Name: ${NAMES[1]}"
### This line prints the second element of the NAMES array, which is "Bob". The index of the second element in an array is 1.###
echo "Third Name: ${NAMES[2]}"
### This line prints the third element of the NAMES array, which is "Charlie". The index of the third element in an array is 2.###
echo "Fourth Name: ${NAMES[3]}"
### This line prints the fourth element of the NAMES array, which is "David". The index of the fourth element in an array is 3.###
echo "Number of Names: ${#NAMES[@]}"
### This line prints the number of elements in the NAMES array. The # symbol is used to get the length of the array. In this case, it will print 4, as there are four elements in the NAMES array.###
echo "All Names: ${NAMES[*]}"
### This line prints all the elements of the NAMES array, separated by spaces. The * symbol is used to represent all the elements of the array. In this case, it will print "Alice Bob Charlie David".###
echo "All Names: ${NAMES[@]}"
### This line also prints all the elements of the NAMES array, separated by spaces. The @ symbol is used to represent all the elements of the array. In this case, it will also print "Alice Bob Charlie David". The difference between ${NAMES[*]} and ${NAMES[@]} is that the former treats the entire array as a single string, while the latter treats each element of the array as a separate string. In this case, both will produce the same output, but in other contexts, they may behave differently. For example, if you were to use them in a loop, ${NAMES[*]} would iterate over the entire array as a single string, while ${NAMES[@]} would iterate over each element of the array separately.###

name=Santosh kumar P
echo "Name: ${name}anchireddy"
### This line declares a variable named name and initializes it with the string "Santosh kumar P". The variable can hold any string value, including spaces. In this case, the variable name is assigned the value "Santosh kumar P". The echo command is used to print the value of the variable name, followed by the string "anchireddy". The output will be "Name: Santosh kumar Panchireddy".###
name=Vera Venkata Satya Naga Sanjay kumar P
echo "Name: ${name}alli"
### This line declares a variable named name and initializes it with the string "Vera Venkata Satya Naga Sanjay kumar P". The variable can hold any string value, including spaces. In this case, the variable name is assigned the value "Vera Venkata Satya Naga Sanjay kumar P". The echo command is used to print the value of the variable name, followed by the string "alli". The output will be "Name: Vera Venkata Satya Naga Sanjay kumar Palli".###