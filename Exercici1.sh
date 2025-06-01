#!/bin/bash

pos=0
neg=0
zero=0

for n in "$@"; do
  # Check if n is a number
  if ! [ "$n" -eq "$n" ] 2>/dev/null; then
    echo "'$n' is not a valid integer. Skipping."
    continue
  fi

  if [ "$n" -gt 0 ]; then
    pos=$((pos + 1))
  elif [ "$n" -lt 0 ]; then
    neg=$((neg + 1))
  else
    zero=$((zero + 1))
  fi
done

echo "Positive numbers: $pos"
echo "Negative numbers: $neg"
echo "Zeros: $zero"
