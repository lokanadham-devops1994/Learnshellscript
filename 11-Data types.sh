#!/bin/bash
var1="Hello"
var2="World"
# Concatenation of strings
result="$var1 $var2"
echo "Concatenated String: $result"
# Length of a string
length=${#result}
echo "Length of the string: $length"
# Substring extraction
substring=${result:0:5}
echo "Substring: $substring"
# String comparison
if [ "$var1" = "$var2" ]; then
    echo "Strings are equal"
else
    echo "Strings are not equal"
fi
# Integer arithmetic
num1=10
num2=5
sum=$((num1 + num2))
echo "Sum: $sum"
difference=$((num1 - num2))
echo "Difference: $difference"
product=$((num1 * num2))
echo "Product: $product"
quotient=$((num1 / num2))
echo "Quotient: $quotient"
# Float arithmetic using bc
float1=3.5
float2=1.2
bc=bc
float_sum=$(echo "$float1 + $float2" | bc)
echo "Float Sum: $float_sum"
float_difference=$(echo "$float1 - $float2" | bc)
echo "Float Difference: $float_difference"
float_product=$(echo "$float1 * $float2" | bc)
echo "Float Product: $float_product"
float_quotient=$(echo "scale=2; $float1 / $float2" | bc)
echo "Float Quotient: $float_quotient"