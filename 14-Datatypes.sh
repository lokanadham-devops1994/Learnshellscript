#!/bin/bash
# ==============================================================================
# Case-1: Standard Prefix and Postfix (Fixed syntax spacing and typos)
# ==============================================================================
count=10
COUNT=$((count++)) # Postfix Increment: COUNT gets 10, count becomes 11
echo "COUNT after Postfix Increment: $COUNT, count is now: $count"
COUNT=$((count--)) # Postfix Decrement: COUNT gets 11, count becomes 10
echo "COUNT after Postfix Decrement: $COUNT, count is now: $count"

count=10
COUNT=$((++count)) # Prefix Increment: count becomes 11, COUNT gets 11
echo "COUNT after Prefix Increment: $COUNT, count is now: $count"
COUNT=$((--count)) # Prefix Decrement: count becomes 10, COUNT gets 10
echo "COUNT after Prefix Decrement: $COUNT, count is now: $count"
# ==============================================================================
# Case-2: Compound Math with Postfix and Prefix
# ==============================================================================
count=10
# Postfix: Uses current 'count' (10) for math, then increments 'count' to 11.
COUNT=$((count++ + 5)) # COUNT = 10 + 5 = 15
echo "COUNT after Postfix Increment with addition: $COUNT, count is now: $count"
# Postfix: Uses current 'count' (11) for math, then decrements 'count' to 10.
COUNT=$((count-- - 5)) # COUNT = 11 - 5 = 6
echo "COUNT after Postfix Decrement with subtraction: $COUNT, count is now: $count"
count=10
# Prefix: Increments 'count' to 11 first, then adds 5.
COUNT=$((+5 + ++count)) # COUNT = 5 + 11 = 16
echo "COUNT after Prefix Increment with addition: $COUNT, count is now: $count"
# Prefix: Decrements 'count' to 10 first, then subtracts it from -5.
COUNT=$((-5 - --count)) # COUNT = -5 - 10 = -15  
echo "COUNT after Prefix Decrement with subtraction: $COUNT, count is now: $count"