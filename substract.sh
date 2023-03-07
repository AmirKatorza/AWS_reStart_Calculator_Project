#!/bin/bash

# Function to perform subtraction
function subtract {
  read -p "Enter the first number: " num1
  if ! [[ $num1 =~ ^-?[0-9]+$ ]]; then
    echo "Error: $num1 is not a valid number."
    subtract
    return
  fi
  read -p "Enter the second number: " num2
  if ! [[ $num2 =~ ^-?[0-9]+$ ]]; then
    echo "Error: $num2 is not a valid number."
    subtract
    return
  fi
  result=$(($num1 - $num2))
  echo "Result: $result"
}

subtract

