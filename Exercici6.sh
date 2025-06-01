#!/bin/bash

# Initialize counter
count=0

# Array to store the numbers
nums=()

# Ask until 3 valid integers are entered
until [ $count -eq 3 ]; do
  echo "Enter integer $((count + 1)):"
  read num

  # Check if it's a valid integer
  if ! [ "$num" -eq "$num" ] 2>/dev/null; then
    echo "Invalid input. Please enter a valid integer."
  else
    nums+=("$num")         # Add number to array
    count=$((count + 1))   # Increase count
  fi
done

# Get individual numbers
a=${nums[0]}
b=${nums[1]}
c=${nums[2]}

# Calculate sum and product
sum=$((a + b + c))
product=$((a * b * c))

# Find largest
max=$a
[ "$b" -gt "$max" ] && max=$b
[ "$c" -gt "$max" ] && max=$c

# Find smallest
min=$a
[ "$b" -lt "$min" ] && min=$b
[ "$c" -lt "$min" ] && min=$c

# Display results
echo ""
echo "Sum: $sum"
echo "Product: $product"
echo "Largest: $max"
echo "Smallest: $min"
