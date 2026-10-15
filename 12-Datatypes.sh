#!/bin/bash
### Data Types in Shell Script ###
# Float arithmetic using bc ### bc=bc -1 ####bc=basic calculator####
float1="$float1"
float2="$float2"
read -p "Enter first float number: " float1
read -p "Enter second float number: " float2
float_sum=$(echo "$float1 + $float2" | bc)
echo "Float Sum: $float_sum"
float_difference=$(echo "$float1 - $float2" | bc)
echo "Float Difference: $float_difference"
float_product=$(echo "$float1 * $float2" | bc)
echo "Float Product: $float_product"
float_quotient=$(echo "scale=2; $float1 / $float2" | bc)
echo "Float Quotient: $float_quotient"